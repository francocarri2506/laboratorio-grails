package Cursos

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class AutoridadCertificanteSpec extends Specification implements DomainUnitTest<AutoridadCertificante> {

    def setup() {
    }

    def cleanup() {
    }

    void "Comprobar la creacion de una Autoridad"() {
        when:"cuando creo el objeto"
            def autoridad = new AutoridadCertificante(dni:"39998673",apellido:"carrizo", nombre:"franco" , cargo:"Decano",email:"carrizonicolas@gmail.com")
            autoridad.save(flush:true)
        then:"se guarda en la base de datos"
            AutoridadCertificante.findByDni("39998673")==autoridad
    }
}
