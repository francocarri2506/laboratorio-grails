package Cursos

class Certificado {

    String descripcion
    Curso curso
    Interesado interesado
    
    static constraints = {
        descripcion (blank:false , maxsize:100)
    }
}
