package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class CursoController {

    CursoService cursoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond cursoService.list(params), model:[cursoCount: cursoService.count()]
    }


    def buscarCurso() {
        if(!params.nombrecurso) {
          flash.message="Debe ingresar el nombre o parte del nombre del curso"
          return redirect(action: 'index')
        }
        flash.message="Resultado de la busqueda con nombre del curso: ${params.nombrecurso}"
        
        def cursos= cursoService.buscarCursitoNombre(params.nombrecurso)

        render(view:'index', model:[cursoList:cursos, cursoCount:cursos.size()])
    }

    def miscursos(){
        //def curso = Curso.findById(id)
        def usuario = Interesado.findByNombreUsuario(session.usuario?.nombreUsuario)
        def insc = Inscripcion.findAllByInteresado(usuario)
        def cursos= insc.cursos

        render(view: 'miscursos', model:[cursoList:cursos, cursoCount:cursos.size()]) 
    }


    def show(Long id) {
        respond cursoService.get(id)
    }

    def inscribirse (Long id){
        def curso = Curso.findById(id)
        def idc= curso.id
        def fechaI = new Date()
        def costoC = curso.costo
        if (curso==null){
            redirect(controller: 'curso', action: 'create')
        }
        def usuario = Interesado.findByNombreUsuario(session.usuario?.nombreUsuario)
        if(usuario==null){
            redirect(controller: 'usuario', action: 'create')
        }
        def insc= Inscripcion.findAllByCursos(curso)
        
        if(insc.size()<curso.cupoMaximo || curso.interesados.size()==curso.cupoMaximo){
            def inte= Inscripcion.findAllByCursosAndInteresado(curso, usuario)
            
            if(inte.size()==0){
                curso.addToInteresados(usuario)
                usuario.addToCursos(curso)
                usuario.save()
                
                if (!curso.save()){
                    redirect(controller: 'usuario', action: 'create')
                }
                //def fechaI = new Date()
                if (fechaI < curso.fechaLimiteInscripcion || fechaI == curso.fechaLimiteInscripcion){
                    if(usuario.categoria=="Alumno"){
                        costoC= costoC*0.5
                    }
                    else if(usuario.categoria=="Docente"){
                        costoC=costoC*0.7
                    }
                    def ins = new Inscripcion (cursos: curso, interesado: usuario, fechaInscripcion: fechaI, estado: "Inscripto", costo: costoC, numeroorden: insc.size()+1)
                    

                    if(!ins.save(flush: true)) {
                    ins.errors.each{
                        println it
                    }
                    redirect(action: 'index')
                    }
                    else{
                    def idi= ins.id;
                    redirect(controller: 'inscripcion', action: 'show', id: idi)
                    }
                }
                else{
                    redirect(controller: 'fechalimite', action: 'alcanzada')    
                }
            }
            else{
                redirect(controller: 'yainscripto', action: 'enestecurso')
            }
            //redirect (controller:'insc', action: 'tamanio')
        }
        else{
            def ins = new Inscripcion (cursos: curso, interesado: usuario, fechaInscripcion: fechaI, estado: "Postulante")
            if(!ins.save(flush: true)) {
                    ins.errors.each{
                        println it
                    }
                    redirect(action: 'index')
                    }
                    else{
                        redirect(controller: 'inscripcion', action: 'cuponPago', id:idc)    
                        //redirect(controller: 'curso', action: 'miscursos')
                    }
            //redirect (controller:'insc', action: 'nohaycupo')
        } 
        /*
        def longitud = curso.interesados.length
        //if(curso.interesados.size()<curso.cupoMaximo || curso.interesados.size()==curso.cupoMaximo){
        if(curso.interesados.size()<curso.cupoMaximo || curso.interesados.size()==curso.cupoMaximo){    
            curso.addToInteresados(usuario)    
            if (!curso.save()){
                redirect(controller: 'usuario', action: 'create')
            }
            def ins = new Inscripcion (cursos: curso, interesado: usuario)
            if(!ins.save(flush: true)) {
            ins.errors.each{
                println it
            }
            redirect(action: 'index')
            }
            else{
            redirect(controller: 'inscripcion', action: 'create')
            }

            //redirect(controller: 'curso', action: 'longitud')        
        }
        else{
            redirect(controller: 'curso', action: 'yanohaycupo') 
        }*/
        /*
        curso.addToInteresados(usuario)
        if (!curso.save()){
            redirect(controller: 'usuario', action: 'create')
        }*/
        /*
        def ins = new Inscripcion (cursos: curso, interesado: usuario)
        if (ins==null){
            redirect(controller: 'inscripcion', action: 'create')
        }
        
        if(!ins.save(flush: true)) {
            ins.errors.each{
                println it
            }
            redirect(action: 'index')
        }
        else{
            redirect(controller: 'inscripcion', action: 'create')
        }
*/
    }

    def create() {
        respond new Curso(params)
    }

    def save(Curso curso) {
        if (curso == null) {
            notFound()
            return
        }

        try {
            cursoService.save(curso)
        } catch (ValidationException e) {
            respond curso.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'curso.label', default: 'Curso'), curso.id])
                redirect curso
            }
            '*' { respond curso, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond cursoService.get(id)
    }

    def update(Curso curso) {
        if (curso == null) {
            notFound()
            return
        }

        try {
            cursoService.save(curso)
        } catch (ValidationException e) {
            respond curso.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'curso.label', default: 'Curso'), curso.id])
                redirect curso
            }
            '*'{ respond curso, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        cursoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'curso.label', default: 'Curso'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'curso.label', default: 'Curso'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
/**/
     def listado() {
        
        def cursoService
      
      [listado: cursoService.listadoCursos()]
    }

    def verImagen () {
      def img = Curso.get(params.id)
      response.outputStream << img.imagen
      response.outputStream.flush()
    }
}


