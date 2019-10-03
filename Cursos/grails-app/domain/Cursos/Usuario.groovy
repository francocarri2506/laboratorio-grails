package Cursos

class Usuario {

    String dni
    String apellido
    String nombre
    String email
    static constraints = {
        dni(blank:false , unique:true , matches: "[0-9]{8}")
        apellido(blank:false , maxsize:100)
        nombre(blank:false , maxsize:100)
        email (email:true, blank:true)

    }
}
