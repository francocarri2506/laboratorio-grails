package Cursos

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class CertificadoExpositorSpec extends Specification implements DomainUnitTest<CertificadoExpositor> {

    def setup() {
    }

    def cleanup() {
    }

    void "crear un certidicado para el expositor"() {
        when:"Se crea el objeto Curso "
                    def fechaD= Date.parse('yyyy-MM-dd', "2019-11-11")
                    def fechaH= Date.parse('yyyy-MM-dd', "2020-05-05")
                    def fechaIns= Date.parse('yyyy-MM-dd', "2019-10-10")
                    def fechaCur= Date.parse('yyyy-MM-dd', "2020-06-06")
                    Curso curso = new Curso(fechaDesde:fechaD,fechaHasta:fechaH,fechaLimiteInscripcion:fechaIns, 
                        fechadelCertificado:fechaCur,nombre:"java",cupoMaximo:5 ,
                        cupoMinimo:3 ,cantidadHoras:"1-6",horarios:"9-12",lugar:"santa maria" )
                def expositor = new Expositor(dni:"39998673",apellido:"carrizo", nombre:"franco" , titulo:"Ingeniero",email:"carrizonicolas@gmail.com")
            def certificado=new CertificadoExpositor(curso:curso,expositor:expositor, descripcion:"certificadoValido")
            certificado.save(flush:true)
        then:"se agrega a la base de datos"  
            CertificadoExpositor.findByDescripcion("certificadoValido")== certificado       
    }
}
