package Cursos

import grails.gorm.services.Service

@Service(Curso)
abstract class  CursoService implements CursitoService{


    @Override
     List<Curso> buscarCursitoNombre(String nombre) {
          nombre='%'+nombre+'%'
          return Curso.findAllByNombreLike(nombre)
    }

/**/
List listadoExpositores() {
    return Expositores.findAll()
  }
  
List listadoCursos() {
    def cursos = Curso.findAll()
      return cursos
  }

  Curso cursoId(Map params){
    return Curso.get(params.id)
  }

  List cursosxFechas(Map params){
    def fechaD = new Date().parse('yyyy-MM-dd', params.fechaDesde)
    def fechaH = new Date().parse('yyyy-MM-dd', params.fechaHasta)
    return Curso.withCriteria() {           
      between("fechaDesde", fechaD, fechaH)
    }
  

/*
  void altaCurso(Map params) {
    def c = new Curso()
    c.nombre = params.nombre
    c.fechaDesde = Date.parse('yyyy-MM-dd', params.fechaDesde)
    c.fechaHasta = Date.parse('yyyy-MM-dd', params.fechaHasta)
    c.cantidadHoras = params.cantidadHoras
    c.lugar = params.lugar
    c.horarios = params.horarios
    c.fechaLimiteInscripcion = Date.parse('yyyy-MM-dd', params.fechaLimiteInscripcion)
    c.fechadelCertificado = Date.parse('yyyy-MM-dd', params.fechadelCertificado)
    c.cupoMinimo = Integer.parseInt(params.cupoMinimo)
    c.cupoMaximo = Integer.parseInt(params.cupoMaximo)
    c.costo = Integer.parseInt(params.costo)
    c.imagen = params.imagen
    
    c.save(flush:true)
    def curso = Curso.get(c.id)
    def autoridades
    def expositores
    if(params.autoridades instanceof String){
      autoridades = AutoridadCertificante.get(params.autoridades)
      autoridades.addToCursos(curso).save(flush: true)
      curso.addToAut(autoridades).save(flush: true)
    }
    else{
      params.autoridades.each{
      autoridades = AutoridadCertificante.get(it)
      autoridades.addToCursos(curso).save(flush: true)
      curso.addToAut(autoridades).save(flush: true)
      }
    }
    if(params.expositores instanceof String){
      expositores = Expositores.get(params.expositores)
      expositores.addToCursos(curso).save(flush: true)
      curso.addToExp(expositores).save(flush: true)
    }
    else{
      params.expositores.each{
      expositores = Expositores.get(it)
      expositores.addToCursos(curso).save(flush: true)
      curso.addToExp(expositores).save(flush: true)
      }
    }
  }
  */
}

  def misCursos(Usuario usuario){
    return Inscripcion.findAllByInteresado(usuario)
  }

  def inscriptosCurso(Long id){
    def curso = Curso.findById(id)
    return Inscripcion.findAllByCursos(curso)
  }

  def inscribirCurso(Long id){
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
        redirect (controller:'insc', action: 'nohaycupo')
    }
  }
}
