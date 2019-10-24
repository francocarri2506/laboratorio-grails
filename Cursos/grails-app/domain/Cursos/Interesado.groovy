package Cursos

class Interesado extends Usuario{
    
    String categoria
    static hasMany = [cursos: Curso]
    
    static constraints = {
        categoria (intList:['Alumno', 'Publico General','Docente'])
    }
}
