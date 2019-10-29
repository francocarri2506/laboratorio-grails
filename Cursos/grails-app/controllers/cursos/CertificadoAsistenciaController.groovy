package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class CertificadoAsistenciaController {

    CertificadoAsistenciaService certificadoAsistenciaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond certificadoAsistenciaService.list(params), model:[certificadoAsistenciaCount: certificadoAsistenciaService.count()]
    }

    def show(Long id) {
        respond certificadoAsistenciaService.get(id)
    }

    def create() {
        respond new CertificadoAsistencia(params)
    }

    def save(CertificadoAsistencia certificadoAsistencia) {
        if (certificadoAsistencia == null) {
            notFound()
            return
        }

        try {
            certificadoAsistenciaService.save(certificadoAsistencia)
        } catch (ValidationException e) {
            respond certificadoAsistencia.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'certificadoAsistencia.label', default: 'CertificadoAsistencia'), certificadoAsistencia.id])
                redirect certificadoAsistencia
            }
            '*' { respond certificadoAsistencia, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond certificadoAsistenciaService.get(id)
    }

    def update(CertificadoAsistencia certificadoAsistencia) {
        if (certificadoAsistencia == null) {
            notFound()
            return
        }

        try {
            certificadoAsistenciaService.save(certificadoAsistencia)
        } catch (ValidationException e) {
            respond certificadoAsistencia.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'certificadoAsistencia.label', default: 'CertificadoAsistencia'), certificadoAsistencia.id])
                redirect certificadoAsistencia
            }
            '*'{ respond certificadoAsistencia, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        certificadoAsistenciaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'certificadoAsistencia.label', default: 'CertificadoAsistencia'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'certificadoAsistencia.label', default: 'CertificadoAsistencia'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    def certificadoPDF() {
        render (view:"certificadoPDF")
        
    }
}
