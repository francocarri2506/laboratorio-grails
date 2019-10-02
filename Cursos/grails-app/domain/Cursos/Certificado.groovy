package Cursos

class Certificado {

    STtring descripcion
    Curso curso
    Interesado interesado
    
    static constraints = {
        descripcion (blank:false , maxsize:100)
    }
}
