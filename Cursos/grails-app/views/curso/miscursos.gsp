<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />

        <!-- de la parte de la ventana principal del interesado -->
        <meta charset="utf-8">
        <meta name="viewport"    content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
        
        

        <link rel="shortcut icon" href="assets/images/gt_favicon.png">
        
        <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
        <asset:stylesheet src="bootstrap.min.css"/>
        <asset:stylesheet src="font-awesome.min.css"/>

        <!-- Custom styles for our template -->
        <asset:stylesheet src="bootstrap-theme.css" media="screen" />
        <asset:stylesheet src="main2.css"/>
        <asset:stylesheet src="hover-pack.css"/>

        <g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>

    <body class="home">

        <div class="container"> 
            <div class="row">
                <div id="list-curso" class="content scaffold-list" role="main">
                    <g:each in="${cursoList}" >
                        <div class="col-md-6">
                            <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                                <div class="col p-4 d-flex flex-column position-static">
                                    <h3 class=""><a href="/curso/show/${it.id}">${it.nombre}</h3></a>
                                        <div ><img  src=${createLink(controller:"Curso", action:"verImagen", id:"${it.id}")} width='300' /></div>
                                    <div class="mb-1 text-muted">Fecha de inicio: <g:formatDate format="dd/MM/yyyy" date="${it.fechaDesde}"/></div> 
                                    <div class="mb-1 text-muted">Fecha Limite de Inscripcion: <g:formatDate format="dd/MM/yyyy" date="${it.fechaLimiteInscripcion}"/></div> 

                                </div>
                            </div>
                        </div>    
                    </g:each>
                </div>
            </div>
        </div>
    </body>
</html>