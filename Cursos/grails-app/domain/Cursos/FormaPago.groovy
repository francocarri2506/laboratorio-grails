package Cursos

class FormaPago {

    String descripcion
    Integer id
    static constraints = {
        id (unique:true maxsize:5)
        descripcion (blank:false , maxsize:100)
    }
}
