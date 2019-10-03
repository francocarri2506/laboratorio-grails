package Cursos

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class AdministradorSpec extends Specification implements DomainUnitTest<Administrador> {

    def setup() {
    }

    def cleanup() {
    }

    void "Comprobar la creacion de un Administrador"() {
        when:"cuando creo el objeto"
            def administrador = new Administrador(dni:"39998673",apellido:"carrizo", nombre:"franco" , usuario:"francocar",contrasenia:"holakease")
            administrador.save(flush:true)
        then:"se guarda en la base de datos"
            Administrador.findByDni("39998673")==administrador
    }
}
