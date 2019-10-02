package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class CertificadoController {

    CertificadoService certificadoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond certificadoService.list(params), model:[certificadoCount: certificadoService.count()]
    }

    def show(Long id) {
        respond certificadoService.get(id)
    }

    def create() {
        respond new Certificado(params)
    }

    def save(Certificado certificado) {
        if (certificado == null) {
            notFound()
            return
        }

        try {
            certificadoService.save(certificado)
        } catch (ValidationException e) {
            respond certificado.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'certificado.label', default: 'Certificado'), certificado.id])
                redirect certificado
            }
            '*' { respond certificado, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond certificadoService.get(id)
    }

    def update(Certificado certificado) {
        if (certificado == null) {
            notFound()
            return
        }

        try {
            certificadoService.save(certificado)
        } catch (ValidationException e) {
            respond certificado.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'certificado.label', default: 'Certificado'), certificado.id])
                redirect certificado
            }
            '*'{ respond certificado, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        certificadoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'certificado.label', default: 'Certificado'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'certificado.label', default: 'Certificado'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
