package Cursos

import grails.gorm.services.Service

@Service(Interesado)
interface InteresadoService {

    Interesado get(Serializable id)

    List<Interesado> list(Map args)

    Long count()

    void delete(Serializable id)

    Interesado save(Interesado interesado)

}