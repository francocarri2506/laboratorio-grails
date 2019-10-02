package Cursos

import grails.gorm.services.Service

@Service(CuponPago)
interface CuponPagoService {

    CuponPago get(Serializable id)

    List<CuponPago> list(Map args)

    Long count()

    void delete(Serializable id)

    CuponPago save(CuponPago cuponPago)

}