package Cursos

class AutoridadCertificante extends Usuario{

    byte[] firma
    String cargo
    static hasMany = [cursos:Curso]

    static constraints = {

        cargo (intList:['Decano', 'Secretario', 'Secretaria', 'Academico', 'Director Departamento','Directora Departamento'])
        firma (nullable:true)
    }

     
   
    static mapping = {
            firma sqlType: 'bytea' 
    }
}
