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

      match(controller:"curso", action:"index")
      match(controller:"curso", action:"edit")
      match(controller:"curso", action:"show")
      match(controller:"curso", action:"create")
      
  }

  boolean before() {
      if (!session.usuario && actionName != "login") {
          redirect(controller: "login", action: "login")
          return false
      }

    //  if(controllerName=='libro' && (actionName=='edit' || actionName=='save' || actionName=='create' || actionName=='delete' )) {
    //    if(!session.usuario.getRoles().any{it.authority=='ADMIN'}) {
    //        render(view: "/index", model: [message:'No tiene permisos para la accion solicitada'])
    //        return false
    //    }
    //  }


      return true
  }

  boolean after() { 

     match(controller:"curso", action:"index")
      match(controller:"curso", action:"edit")
      match(controller:"curso", action:"show")
      match(controller:"curso", action:"create")

     }

    void afterView() {

    }
}
