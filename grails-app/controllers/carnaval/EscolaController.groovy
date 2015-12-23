package carnaval



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EscolaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Escola.list(params), model:[escolaInstanceCount: Escola.count()]
    }

    def show(Escola escolaInstance) {
        respond escolaInstance
    }

    def create() {
        respond new Escola(params)
    }

    @Transactional
    def save(Escola escolaInstance) {
        if (escolaInstance == null) {
            notFound()
            return
        }

        if (escolaInstance.hasErrors()) {
            respond escolaInstance.errors, view:'create'
            return
        }

        escolaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'escola.label', default: 'Escola'), escolaInstance.id])
                redirect escolaInstance
            }
            '*' { respond escolaInstance, [status: CREATED] }
        }
    }

    def edit(Escola escolaInstance) {
        respond escolaInstance
    }

    @Transactional
    def update(Escola escolaInstance) {
        if (escolaInstance == null) {
            notFound()
            return
        }

        if (escolaInstance.hasErrors()) {
            respond escolaInstance.errors, view:'edit'
            return
        }

        escolaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Escola.label', default: 'Escola'), escolaInstance.id])
                redirect escolaInstance
            }
            '*'{ respond escolaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Escola escolaInstance) {

        if (escolaInstance == null) {
            notFound()
            return
        }

        escolaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Escola.label', default: 'Escola'), escolaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'escola.label', default: 'Escola'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
