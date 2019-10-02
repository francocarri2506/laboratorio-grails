package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class AlumnoController {

    AlumnoService alumnoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond alumnoService.list(params), model:[alumnoCount: alumnoService.count()]
    }

    def show(Long id) {
        respond alumnoService.get(id)
    }

    def create() {
        respond new Alumno(params)
    }

    def save(Alumno alumno) {
        if (alumno == null) {
            notFound()
            return
        }

        try {
            alumnoService.save(alumno)
        } catch (ValidationException e) {
            respond alumno.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'alumno.label', default: 'Alumno'), alumno.id])
                redirect alumno
            }
            '*' { respond alumno, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond alumnoService.get(id)
    }

    def update(Alumno alumno) {
        if (alumno == null) {
            notFound()
            return
        }

        try {
            alumnoService.save(alumno)
        } catch (ValidationException e) {
            respond alumno.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'alumno.label', default: 'Alumno'), alumno.id])
                redirect alumno
            }
            '*'{ respond alumno, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        alumnoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'alumno.label', default: 'Alumno'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'alumno.label', default: 'Alumno'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
