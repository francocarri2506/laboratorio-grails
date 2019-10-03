package Cursos

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class ExpositorSpec extends Specification implements DomainUnitTest<Expositor> {

    def setup() {
    }

    def cleanup() {
    }

    void "Comprobar la creacion de un Expositor"() {
        when:"cuando creo el objeto"
            def expositor = new Expositor(dni:"39998673",apellido:"carrizo", nombre:"franco" , titulo:"Ingeniero",email:"carrizonicolas@gmail.com")
            expositor.save(flush:true)
        then:"se guarda en la base de datos"
            Expositor.findByDni("39998673")==expositor
    }
}
