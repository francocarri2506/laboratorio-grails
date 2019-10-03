package Cursos

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class DocenteSpec extends Specification implements DomainUnitTest<Docente> {

    def setup() {
    }

    def cleanup() {
    }

     void "Comprobar la creacion de un docente"() {
        when:"cuando creo el objeto"
            def docente= new Docente(dni:"15445456",apellido:"carrizo",nombre:"juan" ,email:"carrizonicolas@gmail.com", legajo:"70120")
            docente.save(flush:true)
        then:"se guarda en la base de datos"
            Docente.findByLegajo("70120")==docente
    }
}
