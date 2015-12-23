package carnaval



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CarnavalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Carnaval.list(params), model:[carnavalInstanceCount: Carnaval.count()]
    }

    def show(Carnaval carnavalInstance) {
        respond carnavalInstance
    }

    def create() {
        respond new Carnaval(params)
    }

    @Transactional
    def save(Carnaval carnavalInstance) {
        if (carnavalInstance == null) {
            notFound()
            return
        }

        if (carnavalInstance.hasErrors()) {
            respond carnavalInstance.errors, view:'create'
            return
        }

        carnavalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'carnaval.label', default: 'Carnaval'), carnavalInstance.id])
                redirect carnavalInstance
            }
            '*' { respond carnavalInstance, [status: CREATED] }
        }
    }

    def edit(Carnaval carnavalInstance) {
        respond carnavalInstance
    }

    @Transactional
    def update(Carnaval carnavalInstance) {
        if (carnavalInstance == null) {
            notFound()
            return
        }

        if (carnavalInstance.hasErrors()) {
            respond carnavalInstance.errors, view:'edit'
            return
        }

        carnavalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Carnaval.label', default: 'Carnaval'), carnavalInstance.id])
                redirect carnavalInstance
            }
            '*'{ respond carnavalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Carnaval carnavalInstance) {

        if (carnavalInstance == null) {
            notFound()
            return
        }

        carnavalInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Carnaval.label', default: 'Carnaval'), carnavalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'carnaval.label', default: 'Carnaval'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
