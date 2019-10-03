package Cursos

class Alumno extends Interesado{
    String matricula
    //static belongsTo = [cursos:Curso]
    static constraints = {
        matricula (blank:false , unique:true , matches: "[0-9]{5}")
    }
}
