package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class InteresadoController {

    InteresadoService interesadoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond interesadoService.list(params), model:[interesadoCount: interesadoService.count()]
    }

    def show(Long id) {
        respond interesadoService.get(id)
    }

    def create() {
        respond new Interesado(params)
    }

    def save(Interesado interesado) {
        if (interesado == null) {
            notFound()
            return
        }

        try {
            interesadoService.save(interesado)
        } catch (ValidationException e) {
            respond interesado.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'interesado.label', default: 'Interesado'), interesado.id])
                redirect interesado
            }
            '*' { respond interesado, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond interesadoService.get(id)
    }

    def update(Interesado interesado) {
        if (interesado == null) {
            notFound()
            return
        }

        try {
            interesadoService.save(interesado)
        } catch (ValidationException e) {
            respond interesado.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'interesado.label', default: 'Interesado'), interesado.id])
                redirect interesado
            }
            '*'{ respond interesado, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        interesadoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'interesado.label', default: 'Interesado'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'interesado.label', default: 'Interesado'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
