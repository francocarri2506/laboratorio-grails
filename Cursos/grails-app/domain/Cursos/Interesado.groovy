package Cursos

class Interesado extends Usuario{
    
    static hasMany = [cursos:Curso]
    static constraints = {
    }
}
