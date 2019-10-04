package Cursos

class FormaPago {

    String descripcion
    Integer id
//    static hasMany = [cuponPago:CuponPago]
    static constraints = {
        id (unique:true, maxsize:5)
        descripcion (blank:false , maxsize:100)
    }
}
