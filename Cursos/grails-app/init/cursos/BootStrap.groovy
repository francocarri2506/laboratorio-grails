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

    def interesado= new Usuario(nombreUsuario: 'gabriel', password: 'holahola', email: 'gabriel@gmail.com')
    if(!interesado.save(flush: true)) {
      interesado.errors.each{
        println it
      }
    }  

    def rolInt = new Rol(authority: 'INTERESADO')
    if(!rolInt.save(flush: true)) {
      rolInt.errors.each{
        println it
      }
    } 

    def usuarioRolInt = new UsuarioRol(usuario: interesado, rol: rolInt)
    if(!usuarioRolInt.save(flush: true)) {
      usuarioRolInt.errors.each{
        println it
      }
    }
    
  }

  def destroy = {
  }
}
