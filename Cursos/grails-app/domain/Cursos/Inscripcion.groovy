package Cursos

class Inscripcion {

    Date fechaInscripcion
    Curso cursos
    Interesado interesado
    CuponPago cupon
    Integer  numeroorden
    String estado
    BigInteger costo
    String nota

    static constraints = {
    //  fechaInscripcion (blank:true, value: new Date() )  //nose si esto se podra
        fechaInscripcion (nullable:true)
        
        numeroorden (nullable: true)
        estado (inList:["Inscripto", "Postulante"])
        costo (nullable:true)
        
        nota (nullable:true, inList:["1","2","3","4","5","6","7","8","9","10"])
    }

}
