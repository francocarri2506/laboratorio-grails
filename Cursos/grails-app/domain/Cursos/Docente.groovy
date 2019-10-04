package Cursos

class Docente extends Interesado{
    String legajo
    static hasMany = [cursos:Curso]
    static constraints = {
        legajo (blank:false, unique:true, matches: "[0-9]{5}")
    }
}
