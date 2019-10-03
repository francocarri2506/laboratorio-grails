package Cursos

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class PublicoGeneralSpec extends Specification implements DomainUnitTest<PublicoGeneral> {

    def setup() {
    }

    def cleanup() {
    }

     void "Comprobar la creacion de un usuario al curso de tipo publico general"() {
        when:"cuando creo el objeto"
            def publico= new PublicoGeneral(dni:"39998673",apellido:"carrizo",nombre:"franco" ,email:"carrizonicolas@gmail.com")
            publico.save(flush:true)
        then:"se guarda en la base de datos"
            PublicoGeneral.findByDni("39998673")==publico
    }
}
