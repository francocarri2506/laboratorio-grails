package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class CertificadoExpositorController {

    CertificadoExpositorService certificadoExpositorService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond certificadoExpositorService.list(params), model:[certificadoExpositorCount: certificadoExpositorService.count()]
    }

    def show(Long id) {
        respond certificadoExpositorService.get(id)
    }

    def create() {
        respond new CertificadoExpositor(params)
    }

    def save(CertificadoExpositor certificadoExpositor) {
        if (certificadoExpositor == null) {
            notFound()
            return
        }

        try {
            certificadoExpositorService.save(certificadoExpositor)
        } catch (ValidationException e) {
            respond certificadoExpositor.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'certificadoExpositor.label', default: 'CertificadoExpositor'), certificadoExpositor.id])
                redirect certificadoExpositor
            }
            '*' { respond certificadoExpositor, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond certificadoExpositorService.get(id)
    }

    def update(CertificadoExpositor certificadoExpositor) {
        if (certificadoExpositor == null) {
            notFound()
            return
        }

        try {
            certificadoExpositorService.save(certificadoExpositor)
        } catch (ValidationException e) {
            respond certificadoExpositor.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'certificadoExpositor.label', default: 'CertificadoExpositor'), certificadoExpositor.id])
                redirect certificadoExpositor
            }
            '*'{ respond certificadoExpositor, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        certificadoExpositorService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'certificadoExpositor.label', default: 'CertificadoExpositor'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'certificadoExpositor.label', default: 'CertificadoExpositor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
