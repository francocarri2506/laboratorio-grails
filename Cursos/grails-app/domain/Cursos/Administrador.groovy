package Cursos

class Administrador extends Usuario{

     //String usuario
     String contrasenia
    static constraints = {
      //  usuario (blank:false , unique:true )
        contrasenia(blank:false , maxsize:100)
    }
}
