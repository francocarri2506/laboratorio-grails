package Cursos

import grails.gorm.services.Service

@Service(FormaPago)
interface FormaPagoService {

    FormaPago get(Serializable id)

    List<FormaPago> list(Map args)

    Long count()

    void delete(Serializable id)

    FormaPago save(FormaPago formaPago)

}