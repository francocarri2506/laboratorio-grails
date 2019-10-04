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

void "Agrego un expositor al curso al curso"() {
        when:"Se crea el objeto Curso y se agrega un Alumno, un expositor, una autoridad"
                    def fechaD= Date.parse('yyyy-MM-dd', "2019-11-11")
                    def fechaH= Date.parse('yyyy-MM-dd', "2020-05-05")
                    def fechaIns= Date.parse('yyyy-MM-dd', "2019-10-10")
                    def fechaCur= Date.parse('yyyy-MM-dd', "2020-06-06")
                    Curso curso = new Curso(fechaDesde:fechaD,fechaHasta:fechaH,fechaLimiteInscripcion:fechaIns, 
                        fechadelCertificado:fechaCur,nombre:"java",cupoMaximo:5 ,
                        cupoMinimo:3 ,cantidadHoras:"1-6",horarios:"9-12",lugar:"santa maria" )
                def expositor1 = new Expositor(dni:"39998673",apellido:"carrizo", nombre:"franco" , titulo:"Ingeniero",email:"carrizonicolas@gmail.com")
            curso.addToExpositores(expositor1)
            curso.save(flush:true)
        then:"comprobar si el expositor esta en el curso"  
            Curso.findByLugar("santa maria" ).expositores.contains(expositor1)           
    }
void "Agrego una autoridad al curso"() {
        when:"Se crea el objeto Curso y se agrega un Alumno, un expositor, una autoridad"
                    def fechaD= Date.parse('yyyy-MM-dd', "2019-11-11")
                    def fechaH= Date.parse('yyyy-MM-dd', "2020-05-05")
                    def fechaIns= Date.parse('yyyy-MM-dd', "2019-10-10")
                    def fechaCur= Date.parse('yyyy-MM-dd', "2020-06-06")
                    Curso curso = new Curso(fechaDesde:fechaD,fechaHasta:fechaH,fechaLimiteInscripcion:fechaIns, 
                        fechadelCertificado:fechaCur,nombre:"java",cupoMaximo:5 ,
                        cupoMinimo:3 ,cantidadHoras:"1-6",horarios:"9-12",lugar:"santa maria" )
                    def autoridad1 = new AutoridadCertificante(dni:"39998673",apellido:"carrizo", nombre:"franco" , cargo:"Decano",email:"carrizonicolas@gmail.com")

            curso.addToAutoridades(autoridad1)
            curso.save(flush:true)
        then:"comprobar si la autoridad esta en el curso"  
            Curso.findByNombre("java").autoridades.contains(autoridad1)
        
    }

    void "Agrego personas al curso"() {
        when:"Se crea el objeto Curso y se agrega un Alumno, un expositor, una autoridad"
                    def fechaD= Date.parse('yyyy-MM-dd', "2019-11-11")
                    def fechaH= Date.parse('yyyy-MM-dd', "2020-05-05")
                    def fechaIns= Date.parse('yyyy-MM-dd', "2019-10-10")
                    def fechaCur= Date.parse('yyyy-MM-dd', "2020-06-06")
                    Curso curso = new Curso(fechaDesde:fechaD,fechaHasta:fechaH,fechaLimiteInscripcion:fechaIns, 
                        fechadelCertificado:fechaCur,nombre:"java",cupoMaximo:5 ,
                        cupoMinimo:3 ,cantidadHoras:"1-6",horarios:"9-12",lugar:"santa maria" )
                def alumno1= new Alumno(dni:"39998673",apellido:"carrizo",nombre:"franco" ,email:"carrizonicolas@gmail.com", matricula:"01323")
                def expositor1 = new Expositor(dni:"39998673",apellido:"carrizo", nombre:"franco" , titulo:"Ingeniero",email:"carrizonicolas@gmail.com")
                def autoridad1 = new AutoridadCertificante(dni:"39998673",apellido:"carrizo", nombre:"franco" , cargo:"Decano",email:"carrizonicolas@gmail.com")

            curso.addToAlumnos(alumno1)
            curso.addToExpositores(expositor1)
            curso.addToAutoridades(autoridad1)
            curso.save(flush:true)
        then:"El alumno esta en el curso"  
            Curso.findByCupoMaximo(5).alumnos.contains(alumno1)
            Curso.findByCupoMaximo(5).expositores.contains(expositor1)
            Curso.findByCupoMaximo(5).autoridades.contains(autoridad1)
       
    }
}
