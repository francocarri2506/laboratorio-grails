package Cursos

class Expositor extends Usuario{

    byte[] firma
    String titulo
    static hasMany = [cursos:Curso]
    static belongsTo = [cursos: Curso]

    static constraints = {
        
        titulo (blank:false, maxsize:300)
    }

    static mapping = {
            firma sqlType: 'bytea' 
    }

    @Override
    String toString (){
        return (this.nombre +" "+ this.apellido)
    }
}
