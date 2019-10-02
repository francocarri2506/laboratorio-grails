package Cursos

import grails.gorm.services.Service

@Service(Certificado)
interface CertificadoService {

    Certificado get(Serializable id)

    List<Certificado> list(Map args)

    Long count()

    void delete(Serializable id)

    Certificado save(Certificado certificado)

}