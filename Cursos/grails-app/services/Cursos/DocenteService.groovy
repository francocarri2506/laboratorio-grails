package Cursos

import grails.gorm.services.Service

@Service(Docente)
interface DocenteService {

    Docente get(Serializable id)

    List<Docente> list(Map args)

    Long count()

    void delete(Serializable id)

    Docente save(Docente docente)

}