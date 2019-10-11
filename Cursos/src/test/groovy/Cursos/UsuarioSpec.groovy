package Cursos

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class UsuarioSpec extends Specification implements DomainUnitTest<Usuario> {

    def setup() {
    }

    def cleanup() {
    }


/*
    void "Comprobar la creacion de un Usuario"() {
        when:"cuando creo el objeto"
            def usuario= new Usuario(dni:"39998673",apellido:"carrizo",nombre:"franco" ,email:"carrizonicolas@gmail.com")
            usuario.save(flush:true)
        then:"se guarda en la base de datos"
            Usuario.findByDni("39998673")==usuario
    }
    */
}
