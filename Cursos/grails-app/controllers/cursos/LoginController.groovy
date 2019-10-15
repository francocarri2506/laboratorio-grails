package Cursos

class LoginController {

  def login() {
   if (request.get) {
     return render(view: 'login')
   }
     def u = Usuario.findByEmail(params.email)
     def contr=u.generateMD5_A(params.password)
     if (u) {
       if (u.password == u.generateMD5_A(params.password)) {
          session.usuario = u
          render(view: "/index")
        } else {
          render(view: "login", model: [message: "Constraseña Incorrecta"])
        }
      } else {
        render(view: "login", model: [message: "No existe el usuario ingresado"])
      }
    }

    def logout() {
      session.usuario=null
      render(view: "/index")
    }
}
