package Cursos

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class FormaPagoSpec extends Specification implements DomainUnitTest<FormaPago> {

    def setup() {
    }

    def cleanup() {
    }

    void "Comprobar la creacion de una forma de pago"() {
        when:"cuando creo el objeto"
            def formapago= new FormaPago(id:"1",descripcion:"tergeta")
            formapago.save(flush:true)
        then:"se guarda en la base de datos"
            FormaPago.findById("1")==formapago
    }

}
