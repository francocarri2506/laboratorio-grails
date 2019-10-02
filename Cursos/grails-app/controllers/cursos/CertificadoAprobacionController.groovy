package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class CertificadoAprobacionController {

    CertificadoAprobacionService certificadoAprobacionService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond certificadoAprobacionService.list(params), model:[certificadoAprobacionCount: certificadoAprobacionService.count()]
    }

    def show(Long id) {
        respond certificadoAprobacionService.get(id)
    }

    def create() {
        respond new CertificadoAprobacion(params)
    }

    def save(CertificadoAprobacion certificadoAprobacion) {
        if (certificadoAprobacion == null) {
            notFound()
            return
        }

        try {
            certificadoAprobacionService.save(certificadoAprobacion)
        } catch (ValidationException e) {
            respond certificadoAprobacion.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'certificadoAprobacion.label', default: 'CertificadoAprobacion'), certificadoAprobacion.id])
                redirect certificadoAprobacion
            }
            '*' { respond certificadoAprobacion, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond certificadoAprobacionService.get(id)
    }

    def update(CertificadoAprobacion certificadoAprobacion) {
        if (certificadoAprobacion == null) {
            notFound()
            return
        }

        try {
            certificadoAprobacionService.save(certificadoAprobacion)
        } catch (ValidationException e) {
            respond certificadoAprobacion.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'certificadoAprobacion.label', default: 'CertificadoAprobacion'), certificadoAprobacion.id])
                redirect certificadoAprobacion
            }
            '*'{ respond certificadoAprobacion, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        certificadoAprobacionService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'certificadoAprobacion.label', default: 'CertificadoAprobacion'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'certificadoAprobacion.label', default: 'CertificadoAprobacion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
