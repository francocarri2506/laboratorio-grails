package Cursos

import grails.gorm.services.Service

@Service(Expositor)
interface ExpositorService {

    Expositor get(Serializable id)

    List<Expositor> list(Map args)

    Long count()

    void delete(Serializable id)

    Expositor save(Expositor expositor)
  
}