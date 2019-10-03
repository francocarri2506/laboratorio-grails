package Cursos

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class CursoSpec extends Specification implements DomainUnitTest<Curso> {

    def setup() {
    }

    def cleanup() {
    }

   void "Comprobar la creacion de un Curso"() {
        when:"Se crea el objeto curso"
          //  def usuario= new Usuario(dni:"39998673",apellido:"carrizo",nombre:"franco" ,email:"carrizonicolas@gmail.com")

                def fechaD= Date.parse('yyyy-MM-dd', "2019-11-11")
                def fechaH= Date.parse('yyyy-MM-dd', "2020-05-05")
                def fechaIns= Date.parse('yyyy-MM-dd', "2019-10-10")
                def fechaCur= Date.parse('yyyy-MM-dd', "2020-06-06")
                curso = new Curso(fechaDesde:fechaD,fechaHasta:fechaH,fechaLimiteInscripcion:fechaIns, 
                fechadelCertificado:fechaCur,  nombre:"grails", cupoMaximo:10 ,
                cupoMinimo:3 , cantidadHoras:"1-6" , horarios:"9-12",lugar:"santa maria" )

            curso.save(flush:true)
        then:"Se almacena en la base de datos"  
            Curso.findByNombre("grails")==curso  
    }
/*
 void "Agrego un alumno al curso"() {
        when:"Se crea el objeto factura y se agrega un Item"
            def alumno= new Alumno(dni:"39998673",apellido:"carrizo",nombre:"franco" ,email:"carrizonicolas@gmail.com", matricula:"01323")               
                def fechaD= Date.parse('yyyy-MM-dd', "2019-09-09")
                def fechaH= Date.parse('yyyy-MM-dd', "2020-05-05")
                def fechaIns= Date.parse('yyyy-MM-dd', "2020-02-02")
                def fechaCur= Date.parse('yyyy-MM-dd', "2020-06-06")
                def curso = new Curso(fechaDesde:fechaD,fechaHasta:fechaH,fechaLimiteInscripcion:fechaIns, 
                fechadelCertificado:fechaCur,  nombre:"algo piola", cupoMaximo:10 ,
                cupoMinimo:3 , cantidadHoras:"1-6" , horarios:"9-12",lugar:"santa maria" )
            curso.addToAlumnos(alumno)
            curso.save(flush:true)
        then:"El alumno esta en el curso"  
            Curso.findByNombre("algo piola").alumnos.contains(alumno)
    }*/
}
