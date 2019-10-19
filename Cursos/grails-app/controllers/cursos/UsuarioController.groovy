package Cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class UsuarioController {

    UsuarioService usuarioService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond usuarioService.list(params), model:[usuarioCount: usuarioService.count()]
    }

    def show(Long id) {
        respond usuarioService.get(id)
    }

    def create() {
        respond new Usuario(params)
    }

    def save(Usuario usuario) {
        if (usuario == null) {
            notFound()
            return
        }

        try {
            usuarioService.save(usuario)
        } catch (ValidationException e) {
            respond usuario.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuario.id])
                redirect usuario
            }
            '*' { respond usuario, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond usuarioService.get(id)
    }

    def update(Usuario usuario) {
        if (usuario == null) {
            notFound()
            return
        }

        try {
            usuarioService.save(usuario)
        } catch (ValidationException e) {
            respond usuario.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuario.id])
                redirect usuario
            }
            '*'{ respond usuario, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        usuarioService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    def acceder() {
        render (view:"acceder")
        
    }

    def loginUser() {
   if (request.get) {
     return render(view: 'login')
     
   }
     def u = Usuario.findByEmail(params.email)
     if (u) {
       if (u.password == u.generateMD5_A(params.password)) {
          session.usuario = u

          def usRol = UsuarioRol.findByUsuario(u)
          
          if (usRol==null){
            render(view: "/index")
          }
          else if (usRol.rol.authority == "ADMIN"){
            render(view: "index2")  //si el rol es admin se muestra la pagina del administrador (revisar)
          }
          else
            render(view: "/index") //sino se muestra el home
        } else {
          render(view: "acceder", model: [message: "Constraseña Incorrecta"])
        }
      } else {
        render(view: "acceder", model: [message: "No existe el usuario ingresado"])
      }
    }


    def logout() {
      session.usuario=null
      render(view: "/index")
    }


    //Para renderizar una vista de otro controlador
    //PROBANDOOOOOOOO
    def redirectALoginController = {
        redirect(controller:"administrador",action:"renderIndex2")
    }
     def indexAdmin() {
        render (view:"index2")
        
    }
    
}
