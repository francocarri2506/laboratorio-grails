package Cursos

class Interesado extends Usuario{
    
    String categoria
    static hasMany = [cursos: Curso]
    
    static constraints = {
        categoria (inList:['Alumno', 'Publico General','Docente'])
    }
}
