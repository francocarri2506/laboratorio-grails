package Cursos

class CuponPago {

    String estado
    FormaPago formaPago
    Integer id
    //static belongsTo = [formaPago:FormaPago]
    static constraints = {
        id (unique:true, maxsize:5)
        estado (blank:false, maxsize:100)
    }
}
