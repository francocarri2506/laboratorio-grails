package Cursos


class SecurityInterceptor {

 // boolean after() {
 //    true 
 //   }


  SecurityInterceptor() {
    /*matchAll().excludes(controller:'login', action:'login')
      .excludes(controller:'autor', action:'list')
      .excludes(controller:'libro', action:'list')
      .excludes(view:"/index")*/

      
      match(controller:"inscripcion", action:"index")

      match(controller:"administrador", action:"index")
      match(controller:"administrador", action:"edit")
      match(controller:"administrador", action:"show")
      match(controller:"administrador", action:"create")
   

      match(controller:"autoridadCertificante", action:"edit")
      match(controller:"autoridadCertificante", action:"show")
      match(controller:"autoridadCertificante", action:"create")

      match(controller:"certificado", action:"index")
      match(controller:"certificado", action:"edit")
      match(controller:"certificado", action:"show")
      match(controller:"certificado", action:"create")

      match(controller:"certificadoAsistencia", action:"index")
      match(controller:"certificadoAsistencia", action:"edit")
      match(controller:"certificadoAsistencia", action:"show")
      match(controller:"certificadoAsistencia", action:"create")
      //match(controller:"certificadoAsistencia", action:"certificadoPDF")

      match(controller:"cuponPago", action:"index")
      match(controller:"cuponPago", action:"edit")
      match(controller:"cuponPago", action:"show")
      match(controller:"cuponPago", action:"create")

      match(controller:"curso", action:"edit")
      match(controller:"curso", action:"create")

      match(controller:"expositor", action:"index")
      match(controller:"expositor", action:"edit")
      match(controller:"expositor", action:"show")
      match(controller:"expositor", action:"create")

      match(controller:"inscripcion", action:"edit")
      match(controller:"inscripcion", action:"create")
     

      match(controller:"interesado", action:"edit")
      //match(controller:"interesado", action:"show")
      //match(controller:"interesado", action:"create")





      match(controller:"usuario", action:"index")
      match(controller:"usuario", action:"edit")
      match(controller:"usuario", action:"show")
    //  match(controller:"usuario", action:"create")



  }

  boolean before() {
      if (!session.usuario && actionName != "login") {
          redirect(controller: "usuario", action: "acceder")
          return false
      }

      def usuario = Usuario.findByNombreUsuario(session.usuario?.nombreUsuario)

     if(/*controllerName=='curso' && */(actionName=='index' || actionName=='edit' || actionName=='save' || actionName=='create' || actionName=='delete' || actionName== 'certificadoPDF' )) {
       if(!(usuario instanceof Administrador)) {
           render(view: "index", model: [message:'No tiene permisos para la accion solicitada'])
           return false
       }
     }


      return true
  }

  boolean after() { 

//aca habria que poner cada vez que quieramos que vuelva a loquearce  
//el admin por ejemplo cada vez que quiera modificar algo

      
      matchAll().excludes(action:"edit")
      

     }

    void afterView() {

    }
}
