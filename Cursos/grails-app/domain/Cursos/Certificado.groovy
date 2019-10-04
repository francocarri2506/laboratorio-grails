package Cursos

class Certificado {

    String descripcion
    Curso curso
    
    static constraints = {
        descripcion (blank:false , maxsize:100)
    }
}
