package Cursos

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class AlumnoSpec extends Specification implements DomainUnitTest<Alumno> {

    def setup() {
    }

    def cleanup() {
    }

    void "Comprobar la creacion de un alumno"() {
        when:"cuando creo el objeto"
            def alumno= new Alumno(dni:"39998673",apellido:"carrizo",nombre:"franco" ,email:"carrizonicolas@gmail.com", matricula:"01323")
            alumno.save(flush:true)
        then:"se guarda en la base de datos"
            Alumno.findByMatricula("01323")==alumno
    }
}
