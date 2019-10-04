package Cursos

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class CuponPagoSpec extends Specification implements DomainUnitTest<CuponPago> {

    def setup() {
    }

    def cleanup() {
    }

    void "generar un cupon de pago"() {
        when:"creo el objeto de tipo forma pago y lo pongo en el cupon "
            def formaPago= new FormaPago(id:"1",descripcion:"tergeta")
            def cuponPago= new CuponPago(id:1,estado:"emitido",formaPago:formaPago )
            cuponPago.save(flush:true)
        then:"se guarda en la base de datos"
            CuponPago.findById("1")==cuponPago
    }
}
