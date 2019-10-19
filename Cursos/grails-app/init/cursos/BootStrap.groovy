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

            def fechaD= Date.parse('yyyy-MM-dd', "2019-11-11")
            def fechaH= Date.parse('yyyy-MM-dd', "2020-05-05")
            def fechaIns= Date.parse('yyyy-MM-dd', "2019-10-10")
            def fechaCur= Date.parse('yyyy-MM-dd', "2020-06-06")
            def curso = new Curso(fechaDesde:fechaD,fechaHasta:fechaH,fechaLimiteInscripcion:fechaIns, 
                fechadelCertificado:fechaCur,nombre:"Grails",cupoMaximo:10 ,
                cupoMinimo:3 ,cantidadHoras:" 3 ",horarios:"9:00 - 12:00",lugar:"santa maria" )

      if(!curso.save(flush: true)) {
            curso.errors.each{
              println it
            }
          }  

          def curso1 = new Curso(fechaDesde:fechaD,fechaHasta:fechaH,fechaLimiteInscripcion:fechaIns, 
                fechadelCertificado:fechaCur,nombre:"Programacion 3",cupoMaximo:10 ,
                cupoMinimo:3 ,cantidadHoras:" 4 ",horarios:"8:00 - 12:00",lugar:"UNCA IDI" )

  if(!curso1.save(flush: true)) {
            curso1.errors.each{
              println it
            }
          } 

def curso2 = new Curso(fechaDesde:fechaD,fechaHasta:fechaH,fechaLimiteInscripcion:fechaIns, 
                fechadelCertificado:fechaCur,nombre:"Ingenieria de Software 3",cupoMaximo:10 ,
                cupoMinimo:3 ,cantidadHoras:" 2 ",horarios:"10:00 - 12:00",lugar:"UNCA IDI" )

  if(!curso2.save(flush: true)) {
            curso2.errors.each{
              println it
            }
          } 
    
  }

/*//solo deja crear un solo usuario ...
def usu1= new Usuario(nombreUsuario: 'jose', password: 'holahola', email: 'joserodriguez@gmail.com')
  if(!usu1.save(flush: true)) {
      usu1.errors.each{
        println it
      }
    }  

    def rol1 = new Rol(authority: 'ADMIN')
    if(!rol1.save(flush: true)) {
      rol1.errors.each{
        println it
      }
    } 

    def usuarioRol1 = new UsuarioRol(usuario: usu1, rol: rol1)
    if(!usuarioRol1.save(flush: true)) {
      usuarioRol1.errors.each{
        println it
      }
    }
def usu2= new Usuario(nombreUsuario: 'gabriel', password: 'holahola', email: 'gabrielpacheco@gmail.com')
  if(!usu2.save(flush: true)) {
      usu2.errors.each{
        println it
      }
    }  

    def rol2 = new Rol(authority: 'ADMIN')
    if(!rol2.save(flush: true)) {
      rol2.errors.each{
        println it
      }
    } 

    def usuarioRol2 = new UsuarioRol(usuario: usu2, rol: rol2)
    if(!usuarioRol2.save(flush: true)) {
      usuarioRol2.errors.each{
        println it
      }
    }
   */ 
  def destroy = {
  }
}
