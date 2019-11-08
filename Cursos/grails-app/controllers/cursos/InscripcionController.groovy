package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class InscripcionController {

    InscripcionService inscripcionService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond inscripcionService.list(params), model:[inscripcionCount: inscripcionService.count()]
    }

    def show(Long id) {
        respond inscripcionService.get(id)
    }

    def create() {
        respond new Inscripcion(params)
    }

    def establecerPago(Long id){
        def insc = inscripcionService.pagar(id)
        def fecha = new Date()
        insc.fechaPago= fecha
        insc.estadoPago= "Realizado"
        insc.save(flush:true)
        redirect(controller: 'inscripcion', action: "show", id:id)
    }

    def misinscripciones (Long id){
        def usuario = session.usuario
        def insc = inscripcionService.buscarInscripciones(usuario)

        render(view: 'misinscripciones', model:[inscripcionList: insc, inscripcionCount:insc.size()])
    }

    def save(Inscripcion inscripcion) {
        if (inscripcion == null) {
            notFound()
            return
        }

        try {
            inscripcionService.save(inscripcion)
        } catch (ValidationException e) {
            respond inscripcion.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'inscripcion.label', default: 'Inscripcion'), inscripcion.id])
                redirect inscripcion
            }
            '*' { respond inscripcion, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond inscripcionService.get(id)
    }

    def update(Inscripcion inscripcion) {
        if (inscripcion == null) {
            notFound()
            return
        }

        try {
            inscripcionService.save(inscripcion)
        } catch (ValidationException e) {
            respond inscripcion.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'inscripcion.label', default: 'Inscripcion'), inscripcion.id])
                redirect inscripcion
            }
            '*'{ respond inscripcion, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        inscripcionService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'inscripcion.label', default: 'Inscripcion'), id])
                redirect (controller:"curso", action:"index", method:"GET")
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'inscripcion.label', default: 'Inscripcion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
