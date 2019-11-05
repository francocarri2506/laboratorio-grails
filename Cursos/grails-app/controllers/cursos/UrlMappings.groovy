package cursos

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }


        "/" (controller:'curso', view: 'index', action: 'index')

        "500"(view:'/error')
        "404"(view:'/notFound')

/*PARA EL API REST


        "/cursos"(resources: "Curso") {
	         collection {
              "/listadoCursosJSON"(controller: "Curso", action: "listadoCursosJSON")

	         }
         }
         "/cursos"(resources: "Curso") {
	         collection {
              "/listadofinCursosJSON"(controller: "Curso", action: "listadofinCursosJSON")

	         }
         }
         "/cursos"(resources: "Curso") {
	         collection {
              "/listadoproxCursosJSON"(controller: "Curso", action: "listadoproxCursosJSON")

	         }
         }
         
         */

        //"/libros"(resources:"libro")

        "/cursitos"(resources:"cursito")


        "/cursitos"(resources: "cursito") {
	         collection {
              "/pagoInscriptos"(controller: "Cursito", action: "pagoInscriptos")

	         }
         }

        "/cursitos"(resources: "cursito") {
	         collection {
              "/nopagoInscriptos"(controller: "Cursito", action: "nopagoInscriptos")

	         }
         }

    }


}
