package Cursos

class Interesado extends Usuario{
    
    String categoria
    
    static hasMany = [ins: Inscripcion]
    
    static constraints = {
        categoria (inList:['Alumno', 'Publico General','Docente'])
    }
}
