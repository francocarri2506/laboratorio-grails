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
}
