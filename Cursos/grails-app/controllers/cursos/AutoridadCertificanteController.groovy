package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class AutoridadCertificanteController {

    AutoridadCertificanteService autoridadCertificanteService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond autoridadCertificanteService.list(params), model:[autoridadCertificanteCount: autoridadCertificanteService.count()]
    }

    def show(Long id) {
        def autoridad= AutoridadCertificante.findById(id)
        def cursos = Curso.findAll()
        //def cursos = Curso.findAllByAutoridades(autoridad)
        respond (autoridadCertificanteService.get(id), model:[cursos:cursos, cursosCount:cursos.size() ])
    }

    def create() {
        def cursos = Curso.findAll()
        respond (new AutoridadCertificante(params), model:[cursos:cursos, cursosCount:cursos.size() ])
    }

    def save(AutoridadCertificante autoridadCertificante) {
        if (autoridadCertificante == null) {
            notFound()
            return
        }

        try {
            autoridadCertificanteService.save(autoridadCertificante)
        } catch (ValidationException e) {
            respond autoridadCertificante.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'autoridadCertificante.label', default: 'AutoridadCertificante'), autoridadCertificante.id])
                redirect autoridadCertificante
            }
            '*' { respond autoridadCertificante, [status: CREATED] }
        }
    }

    def edit(Long id) {
        def cursos = Curso.findAll()
        respond (autoridadCertificanteService.get(id), model:[cursos:cursos, cursosCount:cursos.size() ])
    }

    def update(AutoridadCertificante autoridadCertificante) {
        if (autoridadCertificante == null) {
            notFound()
            return
        }

        try {
            autoridadCertificanteService.save(autoridadCertificante)
        } catch (ValidationException e) {
            respond autoridadCertificante.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'autoridadCertificante.label', default: 'AutoridadCertificante'), autoridadCertificante.id])
                redirect autoridadCertificante
            }
            '*'{ respond autoridadCertificante, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        autoridadCertificanteService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'autoridadCertificante.label', default: 'AutoridadCertificante'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'autoridadCertificante.label', default: 'AutoridadCertificante'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }


    def verImagen () {
      def img = AutoridadCertificante.get(params.id)
      response.outputStream << img.firma
      response.outputStream.flush()
    }
}
