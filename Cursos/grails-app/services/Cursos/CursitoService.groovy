package Cursos

interface CursitoService {

  
    Curso get(Serializable id)

    List<Curso> list(Map args)

    Long count()

    void delete(Serializable id)

    Curso save(Curso curso)

    List<Curso> buscarCursitoNombre(String nombre)

}
