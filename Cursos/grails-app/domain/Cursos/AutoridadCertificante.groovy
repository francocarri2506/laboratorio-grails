package Cursos

class AutoridadCertificante extends Usuario{

    String firma
    String cargo
    static hasMany = [cursos:Curso]

    static constraints = {
        firma url:true
        cargo (intList:['Decano', 'Secretario', 'Secretaria', 'Academico', 'Director Departamento','Directora Departamento'])
    }

}
