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
}
