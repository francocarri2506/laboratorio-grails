package Cursos

import grails.gorm.services.Service

@Service(CertificadoExpositor)
interface CertificadoExpositorService {

    CertificadoExpositor get(Serializable id)

    List<CertificadoExpositor> list(Map args)

    Long count()

    void delete(Serializable id)

    CertificadoExpositor save(CertificadoExpositor certificadoExpositor)

}