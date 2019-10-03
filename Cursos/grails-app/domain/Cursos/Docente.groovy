package Cursos

class Docente extends Interesado{
    String legajo
    static constraints = {
        legajo (blank:false , unique:true , matches: "[0-9]{5}")
    }
}
