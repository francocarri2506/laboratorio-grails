package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class CuponPagoController {

    CuponPagoService cuponPagoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond cuponPagoService.list(params), model:[cuponPagoCount: cuponPagoService.count()]
    }

    def show(Long id) {
        respond cuponPagoService.get(id)
    }

    def create() {
        respond new CuponPago(params)
    }
/*
    def crear(Long id){
        def insc =Inscripcion.findAllById(id)
        def fecha= new Date()
        def cupon = new CuponPago (estado: "Realizado", fechaPago: fecha, codigo: insc.id , inscripcion: insc)
        cupon.save()

    }*/

    def save(CuponPago cuponPago) {
        if (cuponPago == null) {
            notFound()
            return
        }

        try {
            cuponPagoService.save(cuponPago)
        } catch (ValidationException e) {
            respond cuponPago.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cuponPago.label', default: 'CuponPago'), cuponPago.id])
                redirect cuponPago
            }
            '*' { respond cuponPago, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond cuponPagoService.get(id)
    }

    def update(CuponPago cuponPago) {
        if (cuponPago == null) {
            notFound()
            return
        }

        try {
            cuponPagoService.save(cuponPago)
        } catch (ValidationException e) {
            respond cuponPago.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'cuponPago.label', default: 'CuponPago'), cuponPago.id])
                redirect cuponPago
            }
            '*'{ respond cuponPago, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        cuponPagoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'cuponPago.label', default: 'CuponPago'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cuponPago.label', default: 'CuponPago'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
