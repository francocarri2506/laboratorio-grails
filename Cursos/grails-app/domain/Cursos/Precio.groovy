package Cursos

class Precio {

    String descripcion
    Integer id
    BigDecimal monto

    static constraints = {
        id (unique:true, maxsize:5)
        descripcion (blank:false , maxsize:100, nullable : true)
        monto min:01.00
    }
    
}
