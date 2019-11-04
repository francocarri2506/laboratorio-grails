package Cursos

import grails.gorm.services.Service

@Service(Inscripcion)
abstract class InscripcionService implements InscripcionsitaService {

    List pago(){
    return Inscripcion.withCriteria() {  

    eq('estadoPago', 'Realizado')         
         
    }
  }

  List noPago(){
    return Inscripcion.withCriteria() {           
      cupon{
        eq("estadoPago", "Pendiente")
      }       
    }
  }
}