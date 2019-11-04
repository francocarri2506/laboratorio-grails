package Cursos

interface InscripcionsitaService {

    Inscripcion get(Serializable id)

    List<Inscripcion> list(Map args)

    Long count()

    void delete(Serializable id)

    Inscripcion save(Inscripcion inscripcion)

   
}