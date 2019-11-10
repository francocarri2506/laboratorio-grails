package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class CursoController {

    CursoService cursoService
    
    InscripcionService inscripcionService

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
        
        def usuario = session.usuario
        def insc = cursoService.misCursos(usuario)
        def cursos= insc.cursos

        render(view: 'miscursos', model:[cursoList:cursos, cursoCount:cursos.size()]) 
    }


    def show(Long id) {
        respond cursoService.get(id)
    }

    def inscriptoscurso(Long id){
        def insc = cursoService.inscriptosCurso(id)

        render(view: 'inscriptoscurso', model:[inscripcionList:insc, inscripcionCount:insc.size()]) 
    }

    def inscribirse (Long id){
        def curso = Curso.findById(id)
        def idc= curso.id
        //def fechaI = new Date()
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
                
                def fechaI = new Date()
                if (fechaI < curso.fechaLimiteInscripcion || fechaI == curso.fechaLimiteInscripcion){
                    if(usuario.categoria=="Alumno"){
                        costoC= costoC*0.5
                    }
                    else if(usuario.categoria=="Docente"){
                        costoC=costoC*0.7
                    }
                    def ins = new Inscripcion (cursos: curso, interesado: usuario, fechaInscripcion: fechaI, estado: "Inscripto", estadoPago:"Pendiente", costo: costoC, numeroorden: insc.size()+1)
                    

                    if(!ins.save(flush: true)) {
                    ins.errors.each{
                        println it
                    }
                    redirect(action: 'index')
                    }
                    else{
                    def idi= ins.id;
                    curso.addToInscripcion(ins)
                    usuario.addToIns(ins)
                    usuario.save(flush:true)
                    
                    if (!curso.save(flush:true)){
                        redirect(controller: 'noseguardo', action: 'create')
                    }
                    redirect(controller: 'inscripcion', action: 'show', id: idi)
                    }
                }
                else{
                    render(view: "index", model: [message:'La etapa de inscripcion para este curso ha concluido'])
                        
                }
            }
            else{
                //def cursos= cursoService.buscarCursitoNombre(params.nombrecurso)

                render(view: "index", model: [message:'Ya se encuentra inscripto en este curso'])
            }
            
        }
        else{
            render(view: "index", model: [message:'No hay cupos disponibles para este curso'])
        } 

    }

    def create() {
        def expositores = Expositor.findAll()
        def autoridades = AutoridadCertificante.findAll()
        
        respond (new Curso(params), model:[expositores:expositores, expositoresCount:expositores.size(), autoridades:autoridades, autoridadesCount:autoridades.size() ])
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
/*
    def save() {
      if(params==null){   
        redirect(controller:"curso",action:"index")
      }
      else{
      cursoService.altaCurso(params)
      redirect(controller:"curso",action:"index")
      }
    }
*/
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

