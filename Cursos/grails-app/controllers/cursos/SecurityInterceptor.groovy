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

      
      match(controller:"curso", action:"edit")
      
      match(controller:"curso", action:"create")

      match(controller:"administrador", action:"index")
      match(controller:"administrador", action:"edit")
      match(controller:"administrador", action:"show")
      match(controller:"administrador", action:"create")

      
      match(controller:"alumno", action:"edit")
      match(controller:"alumno", action:"show")
      match(controller:"alumno", action:"create")

      match(controller:"autoridadCertificante", action:"edit")
      match(controller:"autoridadCertificante", action:"show")
      match(controller:"autoridadCertificante", action:"create")

      match(controller:"cuponPago", action:"index")
      match(controller:"cuponPago", action:"edit")
      match(controller:"cuponPago", action:"show")
      match(controller:"cuponPago", action:"create")

      match(controller:"docente", action:"edit")
      match(controller:"docente", action:"show")
      match(controller:"docente", action:"create")

      match(controller:"expositor", action:"edit")
      match(controller:"expositor", action:"show")
      match(controller:"expositor", action:"create")

      match(controller:"formaPago", action:"edit")
      match(controller:"formaPago", action:"show")
      match(controller:"formaPago", action:"create")

      match(controller:"horario", action:"edit")
      match(controller:"horario", action:"show")
      match(controller:"horario", action:"create")

      match(controller:"inscripcion", action:"edit")
      match(controller:"inscripcion", action:"show")
      match(controller:"inscripcion", action:"create")

      match(controller:"interesado", action:"edit")
      match(controller:"interesado", action:"show")
      match(controller:"interesado", action:"create")

      match(controller:"login", action:"index")
      match(controller:"login", action:"edit")
      match(controller:"login", action:"show")
      match(controller:"login", action:"create")

      match(controller:"precio", action:"edit")
      match(controller:"precio", action:"show")
      match(controller:"precio", action:"create")

      match(controller:"publicoGeneral", action:"edit")
      match(controller:"publicoGeneral", action:"show")
      match(controller:"publicoGeneral", action:"create")

      match(controller:"usuario", action:"index")
      match(controller:"usuario", action:"edit")
      match(controller:"usuario", action:"show")
    //  match(controller:"usuario", action:"create")

      



  }

  boolean before() {
      if (!session.usuario && actionName != "login") {
          redirect(controller: "login", action: "login")
          return false
      }

      

     if(/*controllerName=='curso' && */(actionName=='index' || actionName=='edit' || actionName=='save' || actionName=='create' || actionName=='delete' )) {
       if(!session.usuario.getRoles().any{it.authority=='ADMIN'}) {
           render(view: "/index", model: [message:'No tiene permisos para la accion solicitada'])
           return false
       }
     }


      return true
  }

  boolean after() { 

//aca habria que poner cada vez que quieramos que vuelva a loquearce  
//el admin por ejemplo cada vez que quiera modificar algo



      match(controller:"administrador", action:"index")
      match(controller:"administrador", action:"edit")
      match(controller:"administrador", action:"show")
      match(controller:"administrador", action:"create")

     }

    void afterView() {

    }
}
