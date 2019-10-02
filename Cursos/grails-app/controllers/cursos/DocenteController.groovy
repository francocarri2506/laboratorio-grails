package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class DocenteController {

    DocenteService docenteService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond docenteService.list(params), model:[docenteCount: docenteService.count()]
    }

    def show(Long id) {
        respond docenteService.get(id)
    }

    def create() {
        respond new Docente(params)
    }

    def save(Docente docente) {
        if (docente == null) {
            notFound()
            return
        }

        try {
            docenteService.save(docente)
        } catch (ValidationException e) {
            respond docente.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'docente.label', default: 'Docente'), docente.id])
                redirect docente
            }
            '*' { respond docente, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond docenteService.get(id)
    }

    def update(Docente docente) {
        if (docente == null) {
            notFound()
            return
        }

        try {
            docenteService.save(docente)
        } catch (ValidationException e) {
            respond docente.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'docente.label', default: 'Docente'), docente.id])
                redirect docente
            }
            '*'{ respond docente, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        docenteService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'docente.label', default: 'Docente'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'docente.label', default: 'Docente'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
