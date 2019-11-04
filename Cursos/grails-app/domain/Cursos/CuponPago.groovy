package Cursos

class CuponPago {

    String estado
    Date fechaPago
    Integer id
    //static belongsTo = [formaPago:FormaPago]
    static constraints = {
        id (unique:true, maxsize:5)
        estado (blank:false, maxsize:100)
    }
}
