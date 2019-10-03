package Cursos

class Expositor extends Usuario{

    //String firma
    String titulo
    static hasMany = [cursos:Curso]

    static constraints = {
     //   firma url:true
        titulo (blank:false, maxsize:300)
    }
}
