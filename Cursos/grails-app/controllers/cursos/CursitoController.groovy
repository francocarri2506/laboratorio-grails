package Cursos
import grails.rest.RestfulController

class CursitoController extends RestfulController<Curso> {
    static responseFormats = ['json', 'xml']

    CursitoController() {
        super(Curso) //Indica al controlador REST quéclase de dominio considerar
    } 


    def pagoInscriptos (){
        respond Inscripcion.findAllByEstadoPago("Realizado")
    }

  def nopagoInscriptos() {       
        respond Inscripcion.findAllByEstadoPago("Pendiente")
    }
}
