package Cursos

class BootStrap {

  def init = { servletContext ->

//  def usu= new Usuario(dni:39998673, apellido:"carrizo", nombreUsuario: 'franco', password: 'franco1', email: 'carrizonicolasfranco@gmail.com')
//    if(!usu.save(flush: true)) {
//      usu.errors.each{
//        println it
//      }
//    }

 /*ef usu= new Administrador(dni:"39998673", apellido:"carrizo",nombre:"franco", nombreUsuario: 'franco', password: 'holahola', email: 'carrizonicolasfranco@gmail.com')

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
     def usu3= new Administrador(dni:"39998642", apellido:"rodriguez",nombre:"jose",nombreUsuario: 'jose', password: 'holahola', email: 'jose791946@gmail.com')
       if(!usu3.save(flush: true)) {
      usu3.errors.each{
        println it
      }
    }  
      def usuarioRol3 = new UsuarioRol(usuario: usu3, rol: rol)
    if(!usuarioRol3.save(flush: true)) {
      usuarioRol3.errors.each{
        println it
      }
    }

    def interesado= new Interesado(dni:"39998125", apellido:"pacheco",nombre:"gabriel",nombreUsuario: 'gabriel', password: 'holahola', email: 'gabriel@gmail.com',categoria:"Alumno")
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
            def fechaH= Date.parse('yyyy-MM-dd', "2020-11-30")
            def fechaIns= Date.parse('yyyy-MM-dd', "2019-11-09")
            def fechaCur= Date.parse('yyyy-MM-dd', "2020-12-10")
            def curso = new Curso(fechaDesde:fechaD,fechaHasta:fechaH,fechaLimiteInscripcion:fechaIns, 
                fechadelCertificado:fechaCur,nombre:"Robótica Inicial", cupoMaximo:20,
                cupoMinimo:1 ,cantidadHoras:"3",horarios:"9:00 - 12:00",lugar:"FTyCA - Aula Marta Bienner", costo: "700", tipo:"Asistencia" )

      

          def autoridad1 = new AutoridadCertificante(password:"123456",nombreUsuario:"franco13" , cargo:"Decano",email:"carrizonicolas13@gmail.com")
          autoridad1.save(flush:true)
         curso.addToAutoridades(autoridad1)
            curso.save(flush:true)

          def curso1 = new Curso(fechaDesde:fechaD,fechaHasta:fechaH,fechaLimiteInscripcion:fechaIns, 
                fechadelCertificado:fechaCur,nombre:"Programacion Web",cupoMaximo:24 ,
                cupoMinimo:1 ,cantidadHoras:"4", horarios:"8:00 - 12:00",lugar:"UNCa - IDI - Aula 2", costo: "600", tipo:"Asistencia" )

  if(!curso1.save(flush: true)) {
            curso1.errors.each{
              println it
            }
          } 

def curso2 = new Curso(fechaDesde:fechaD,fechaHasta:fechaH,fechaLimiteInscripcion:fechaIns, 
                fechadelCertificado:fechaCur,nombre:"Diseño Web",cupoMaximo:10 ,
                cupoMinimo:3 ,cantidadHoras:" 2 ",horarios:"10:00 - 12:00",lugar:"UNCA IDI", costo: "500", tipo:"Evaluativo" )

  if(!curso2.save(flush: true)) {
            curso2.errors.each{
              println it
            }
          }*/}
def destroy = {

  }
}