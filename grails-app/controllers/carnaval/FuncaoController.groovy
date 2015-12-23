package carnaval



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FuncaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Funcao.list(params), model:[funcaoInstanceCount: Funcao.count()]
    }

    def show(Funcao funcaoInstance) {
        respond funcaoInstance
    }

    def create() {
        respond new Funcao(params)
    }

    @Transactional
    def save(Funcao funcaoInstance) {
        if (funcaoInstance == null) {
            notFound()
            return
        }

        if (funcaoInstance.hasErrors()) {
            respond funcaoInstance.errors, view:'create'
            return
        }

        funcaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'funcao.label', default: 'Funcao'), funcaoInstance.id])
                redirect funcaoInstance
            }
            '*' { respond funcaoInstance, [status: CREATED] }
        }
    }

    def edit(Funcao funcaoInstance) {
        respond funcaoInstance
    }

    @Transactional
    def update(Funcao funcaoInstance) {
        if (funcaoInstance == null) {
            notFound()
            return
        }

        if (funcaoInstance.hasErrors()) {
            respond funcaoInstance.errors, view:'edit'
            return
        }

        funcaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Funcao.label', default: 'Funcao'), funcaoInstance.id])
                redirect funcaoInstance
            }
            '*'{ respond funcaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Funcao funcaoInstance) {

        if (funcaoInstance == null) {
            notFound()
            return
        }

        funcaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Funcao.label', default: 'Funcao'), funcaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'funcao.label', default: 'Funcao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
