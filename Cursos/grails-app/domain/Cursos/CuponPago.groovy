package Cursos

class CuponPago {

    String estado
    Inscripcion inscripcion
    Integer codigo
    Date fechaPago

    static constraints = {
        codigo (unique:true, maxsize:5)
        estado (blank:false, inlist:["Pendiente", "Realizado"])
    }
}
