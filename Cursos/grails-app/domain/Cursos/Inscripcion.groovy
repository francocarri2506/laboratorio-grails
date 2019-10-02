package Cursos

class Inscripcion {

    Date fechaInscripcion
    Curso cursos
    Interesado interesado
    FormaPago formaPago
    Integer  numeroorden

    static constraints = {
      fechaInscripcion (blank:true, value: new Date() )  //nose si esto se podra
    }

}
