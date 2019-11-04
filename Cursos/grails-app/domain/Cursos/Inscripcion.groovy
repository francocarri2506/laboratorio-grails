package Cursos

class Inscripcion {

    Date fechaInscripcion
    Curso cursos
    Interesado interesado
    CuponPago cupon
    Integer  numeroorden
    String estado
    BigInteger costo

    static constraints = {
    //  fechaInscripcion (blank:true, value: new Date() )  //nose si esto se podra
        fechaInscripcion (nullable:true)
        
        numeroorden (nullable: true)
        estado (inList:["Inscripto", "Postulante"])
        costo (nullable:true)
    }

}
