package Cursos

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class PrecioSpec extends Specification implements DomainUnitTest<Precio> {

    def setup() {
    }

    def cleanup() {
    }

    void "Comprobar la creacion de un nuevo recio y su descuento"() {
        when:"cuando creo el objeto"
            def precio= new Precio(id:"1",descripcion:"curso sin descuento", monto:"600")
            precio.save(flush:true)
        then:"se guarda en la base de datos"
            Precio.findById("1")==precio
    }
}
