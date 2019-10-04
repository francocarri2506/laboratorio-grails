package Cursos

class PublicoGeneral extends Interesado{
    static hasMany = [cursos:Curso]
    static constraints = {
    }
}
