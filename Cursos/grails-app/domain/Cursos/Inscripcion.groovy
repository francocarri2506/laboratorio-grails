package Cursos

class Inscripcion {

    Date fechaInscripcion
    
    Interesado interesado
    Date fechaPago
    String estadoPago
    Integer  numeroorden
    String estado
    BigInteger costo
    String nota
    static belongsTo = [cursos: Curso]

    static constraints = {
    //  fechaInscripcion (blank:true, value: new Date() )  //nose si esto se podra
        fechaInscripcion (nullable:true)
        
        numeroorden (nullable: true)
        estado (inList:["Inscripto", "Postulante"])
        costo (nullable:true)
        
        nota (nullable:true, inList:["1","2","3","4","5","6","7","8","9","10"])
        fechaPago(nullable:true)
        estadoPago(inList:["Realizado", "Pendiente"])
    }


}
