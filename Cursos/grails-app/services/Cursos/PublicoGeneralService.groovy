package Cursos

import grails.gorm.services.Service

@Service(PublicoGeneral)
interface PublicoGeneralService {

    PublicoGeneral get(Serializable id)

    List<PublicoGeneral> list(Map args)

    Long count()

    void delete(Serializable id)

    PublicoGeneral save(PublicoGeneral publicoGeneral)

}