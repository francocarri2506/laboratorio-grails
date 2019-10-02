package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class PublicoGeneralController {

    PublicoGeneralService publicoGeneralService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond publicoGeneralService.list(params), model:[publicoGeneralCount: publicoGeneralService.count()]
    }

    def show(Long id) {
        respond publicoGeneralService.get(id)
    }

    def create() {
        respond new PublicoGeneral(params)
    }

    def save(PublicoGeneral publicoGeneral) {
        if (publicoGeneral == null) {
            notFound()
            return
        }

        try {
            publicoGeneralService.save(publicoGeneral)
        } catch (ValidationException e) {
            respond publicoGeneral.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'publicoGeneral.label', default: 'PublicoGeneral'), publicoGeneral.id])
                redirect publicoGeneral
            }
            '*' { respond publicoGeneral, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond publicoGeneralService.get(id)
    }

    def update(PublicoGeneral publicoGeneral) {
        if (publicoGeneral == null) {
            notFound()
            return
        }

        try {
            publicoGeneralService.save(publicoGeneral)
        } catch (ValidationException e) {
            respond publicoGeneral.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'publicoGeneral.label', default: 'PublicoGeneral'), publicoGeneral.id])
                redirect publicoGeneral
            }
            '*'{ respond publicoGeneral, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        publicoGeneralService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'publicoGeneral.label', default: 'PublicoGeneral'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'publicoGeneral.label', default: 'PublicoGeneral'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
