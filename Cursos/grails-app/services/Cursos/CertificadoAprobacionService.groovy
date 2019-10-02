package Cursos

import grails.gorm.services.Service

@Service(CertificadoAprobacion)
interface CertificadoAprobacionService {

    CertificadoAprobacion get(Serializable id)

    List<CertificadoAprobacion> list(Map args)

    Long count()

    void delete(Serializable id)

    CertificadoAprobacion save(CertificadoAprobacion certificadoAprobacion)

}