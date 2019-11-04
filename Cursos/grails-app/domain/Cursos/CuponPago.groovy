package Cursos

class CuponPago {

    String estado
    String pago
    Date fechaPago
    Integer id
    //static belongsTo = [formaPago:FormaPago]
    static constraints = {
        pago(inList: ['Pendiente','Realizado'])
        id (unique:true, maxsize:5)
        estado (blank:false, maxsize:100)
    }
}
