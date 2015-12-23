package carnaval



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PontuacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pontuacao.list(params), model:[pontuacaoInstanceCount: Pontuacao.count()]
    }

    def show(Pontuacao pontuacaoInstance) {
        respond pontuacaoInstance
    }

    def create() {
        respond new Pontuacao(params)
    }

    @Transactional
    def save(Pontuacao pontuacaoInstance) {
        if (pontuacaoInstance == null) {
            notFound()
            return
        }

        if (pontuacaoInstance.hasErrors()) {
            respond pontuacaoInstance.errors, view:'create'
            return
        }

        pontuacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pontuacao.label', default: 'Pontuacao'), pontuacaoInstance.id])
                redirect pontuacaoInstance
            }
            '*' { respond pontuacaoInstance, [status: CREATED] }
        }
    }

    def edit(Pontuacao pontuacaoInstance) {
        respond pontuacaoInstance
    }

    @Transactional
    def update(Pontuacao pontuacaoInstance) {
        if (pontuacaoInstance == null) {
            notFound()
            return
        }

        if (pontuacaoInstance.hasErrors()) {
            respond pontuacaoInstance.errors, view:'edit'
            return
        }

        pontuacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Pontuacao.label', default: 'Pontuacao'), pontuacaoInstance.id])
                redirect pontuacaoInstance
            }
            '*'{ respond pontuacaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Pontuacao pontuacaoInstance) {

        if (pontuacaoInstance == null) {
            notFound()
            return
        }

        pontuacaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pontuacao.label', default: 'Pontuacao'), pontuacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pontuacao.label', default: 'Pontuacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
