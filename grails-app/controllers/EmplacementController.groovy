import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmplacementController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Emplacement.list(params), model: [emplacementInstanceCount: Emplacement.count()]
    }

    def show(Emplacement emplacementInstance) {
        respond emplacementInstance
    }

    def create() {
        respond new Emplacement(params)
    }

    @Transactional
    def save(Emplacement emplacementInstance) {
        if (emplacementInstance == null) {
            notFound()
            return
        }

        if (emplacementInstance.hasErrors()) {
            respond emplacementInstance.errors, view: 'create'
            return
        }

        emplacementInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'emplacement.label', default: 'Emplacement'), emplacementInstance.id])
                redirect emplacementInstance
            }
            '*' { respond emplacementInstance, [status: CREATED] }
        }
    }

    def edit(Emplacement emplacementInstance) {
        respond emplacementInstance
    }

    @Transactional
    def update(Emplacement emplacementInstance) {
        if (emplacementInstance == null) {
            notFound()
            return
        }

        if (emplacementInstance.hasErrors()) {
            respond emplacementInstance.errors, view: 'edit'
            return
        }

        emplacementInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Emplacement.label', default: 'Emplacement'), emplacementInstance.id])
                redirect emplacementInstance
            }
            '*' { respond emplacementInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Emplacement emplacementInstance) {

        if (emplacementInstance == null) {
            notFound()
            return
        }

        emplacementInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Emplacement.label', default: 'Emplacement'), emplacementInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'emplacement.label', default: 'Emplacement'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
