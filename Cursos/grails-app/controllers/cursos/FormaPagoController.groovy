package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class FormaPagoController {

    FormaPagoService formaPagoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond formaPagoService.list(params), model:[formaPagoCount: formaPagoService.count()]
    }

    def show(Long id) {
        respond formaPagoService.get(id)
    }

    def create() {
        respond new FormaPago(params)
    }

    def save(FormaPago formaPago) {
        if (formaPago == null) {
            notFound()
            return
        }

        try {
            formaPagoService.save(formaPago)
        } catch (ValidationException e) {
            respond formaPago.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formaPago.label', default: 'FormaPago'), formaPago.id])
                redirect formaPago
            }
            '*' { respond formaPago, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond formaPagoService.get(id)
    }

    def update(FormaPago formaPago) {
        if (formaPago == null) {
            notFound()
            return
        }

        try {
            formaPagoService.save(formaPago)
        } catch (ValidationException e) {
            respond formaPago.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formaPago.label', default: 'FormaPago'), formaPago.id])
                redirect formaPago
            }
            '*'{ respond formaPago, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        formaPagoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'formaPago.label', default: 'FormaPago'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formaPago.label', default: 'FormaPago'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
