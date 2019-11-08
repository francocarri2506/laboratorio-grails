package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ExpositorController {

    ExpositorService expositorService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond expositorService.list(params), model:[expositorCount: expositorService.count()]
    }

    def show(Long id) {

        def expositor= Expositor.findById(id)
        def cursos = Curso.findAll()
        //def cursos = Curso.findAllByExpositores(expositor)
        respond (expositorService.get(id), model:[cursos:cursos, cursosCount:cursos.size() ])
    
        
    }

    def create() {
         def cursos = Curso.findAll()
        respond (new Expositor(params), model:[cursos:cursos, cursosCount:cursos.size() ])
    
    }

    def save(Expositor expositor) {
        if (expositor == null) {
            notFound()
            return
        }

        try {
            expositorService.save(expositor)
        } catch (ValidationException e) {
            respond expositor.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'expositor.label', default: 'Expositor'), expositor.id])
                redirect expositor
            }
            '*' { respond expositor, [status: CREATED] }
        }
    }

    def edit(Long id) {
        def cursos = Curso.findAll()
        respond (expositorService.get(id), model:[cursos:cursos, cursosCount:cursos.size() ])
    
    }

    def update(Expositor expositor) {
        if (expositor == null) {
            notFound()
            return
        }

        try {
            expositorService.save(expositor)
        } catch (ValidationException e) {
            respond expositor.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'expositor.label', default: 'Expositor'), expositor.id])
                redirect expositor
            }
            '*'{ respond expositor, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        expositorService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'expositor.label', default: 'Expositor'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'expositor.label', default: 'Expositor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def verImagen () {
      def img = Expositor.get(params.id)
      response.outputStream << img.firma
      response.outputStream.flush()
    }
}
