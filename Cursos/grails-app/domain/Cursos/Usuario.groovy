package Cursos

import java.security.MessageDigest

class Usuario implements Serializable{
  
    private static final long serialVersionUID = 1

   // String dni
   // String apellido
    String nombreUsuario
    String password
    String email

    def generateMD5_A(String s){
        return MessageDigest.getInstance("MD5").digest(s.bytes).encodeHex().toString()
      }

      boolean equals(otro) {
        is(otro) || (otro instanceof Usuario && otro.email == email)
      }


      String toString() {
        nombreUsuario
      }

      Set<Rol> getRoles() {

                    if (nombreUsuario!=null) {
                        UsuarioRol.findAllByUsuario(this)*.rol
                    } else {
                        new TreeSet<Rol>()
                    }
      }

          Set<UsuarioRol> getUsuarioRol() {
        UsuarioRol.findAllByUsuario(this)
      }

      
      def beforeInsert() {
        password=generateMD5_A(password)

      }

      def beforeUpdate() {
        if (isDirty('password')) {
          password=generateMD5_A(password)
        }
      }
      
            def beforeValidate() {
                nombreUsuario=nombreUsuario?.toUpperCase()
                email=email?.toLowerCase()

            }

    static constraints = {
        //dni(blank:false , unique:true , matches: "[0-9]{8}")
        //apellido(blank:false , maxsize:100)
        //nombreUsuario(blank:false , maxsize:100)
       // email (email:true, blank:true)
       // password (blank:false , maxsize:100)
       nombreUsuario blank: false, unique: true
        password blank: false
        email blank: false, email: true, unique: true

    }
}
