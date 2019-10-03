package Cursos

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class HorarioSpec extends Specification implements DomainUnitTest<Horario> {

    def setup() {
    }

    def cleanup() {
    }

    void "Comprobar la creacion de una forma de pago"() {
        when:"cuando creo el objeto"
            def horario= new Horario(id:"1",descripcion:"primer curso del dia", horaInicio:8,horaFin:12)
            horario.save(flush:true)
        then:"se guarda en la base de datos"
            Horario.findById("1")==horario
    }
}
