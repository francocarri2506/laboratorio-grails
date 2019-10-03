package Cursos

class CuponPago {

    String estado
    FormaPago pago
    Integer id
    static constraints = {
        id (unique:true, maxsize:5)
        estado (blank:false, maxsize:100)
    }
}
