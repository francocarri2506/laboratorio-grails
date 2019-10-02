package Cursos

class Expositor extends Usuario{

    String firma
    String titulo
    static hasMany = [cursos:Curso]

    static constraints = {
        firma url:true
        cargo (intList:['Decano', 'Secretario', 'Secretaria', 'Academico', 'Director Departamento','Directora Departamento'])
        titulo (blank:false, maxsize:300)
    }
}
