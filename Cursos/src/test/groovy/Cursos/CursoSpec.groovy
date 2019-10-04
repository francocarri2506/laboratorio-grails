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
            def fechaD= Date.parse('yyyy-MM-dd', "2019-11-11")
            def fechaH= Date.parse('yyyy-MM-dd', "2020-05-05")
            def fechaIns= Date.parse('yyyy-MM-dd', "2019-10-10")
            def fechaCur= Date.parse('yyyy-MM-dd', "2020-06-06")
            def curso = new Curso(fechaDesde:fechaD,fechaHasta:fechaH,fechaLimiteInscripcion:fechaIns, 
                fechadelCertificado:fechaCur,nombre:"grails",cupoMaximo:10 ,
                cupoMinimo:3 ,cantidadHoras:"1-6",horarios:"9-12",lugar:"santa maria" )
             curso.save(flush:true)
        then:"Se almacena en la base de datos"  
            Curso.findByCupoMaximo(10)==curso  
    }

 void "Agrego un alumno al curso"() {
        when:"Se crea el objeto Curso y se agrega un Alumno"
                    def fechaD= Date.parse('yyyy-MM-dd', "2019-11-11")
                    def fechaH= Date.parse('yyyy-MM-dd', "2020-05-05")
                    def fechaIns= Date.parse('yyyy-MM-dd', "2019-10-10")
                    def fechaCur= Date.parse('yyyy-MM-dd', "2020-06-06")
                    Curso curso = new Curso(fechaDesde:fechaD,fechaHasta:fechaH,fechaLimiteInscripcion:fechaIns, 
                        fechadelCertificado:fechaCur,nombre:"grovy",cupoMaximo:5 ,
                        cupoMinimo:3 ,cantidadHoras:"1-6",horarios:"9-12",lugar:"santa maria" )
                def alumno1= new Alumno(dni:"39998673",apellido:"carrizo",nombre:"franco" ,email:"carrizonicolas@gmail.com", matricula:"01323")
            curso.addToAlumnos(alumno1)
            curso.save(flush:true)
        then:"El alumno esta en el curso"  
            Curso.findByCupoMaximo(5).alumnos.contains(alumno1)
    }
}
