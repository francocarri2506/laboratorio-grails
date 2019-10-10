package Cursos

class BootStrap {

    def init = { servletContext ->

  //  def usu= new Usuario(dni:39998673, apellido:"carrizo", nombreUsuario: 'franco', password: 'franco1', email: 'carrizonicolasfranco@gmail.com')
  //    if(!usu.save(flush: true)) {
  //      usu.errors.each{
  //        println it
  //      }
  //    }

    def usu= new Usuario(nombreUsuario: 'franco', password: 'holahola', email: 'carrizonicolasfranco@gmail.com')
    if(!usu.save(flush: true)) {
        usu.errors.each{
          println it
        }
      }  

     def rol = new Rol(authority: 'ADMIN')
     if(!rol.save(flush: true)) {
        rol.errors.each{
          println it
        }
      } 

      def usuarioRol = new UsuarioRol(usuario: usu, rol: rol)
      if(!usuarioRol.save(flush: true)) {
        usuarioRol.errors.each{
          println it
        }
      }

      
    }

    def destroy = {
    }
}
