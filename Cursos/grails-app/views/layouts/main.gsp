<!doctype html>
<html lang="en" class="no-js">
<head>

    <meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">

    
    
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    


    <!-- Custom styles for our template -->
	<asset:stylesheet src="bootstrap-theme.css" media="screen" />
	<asset:stylesheet src="main2.css"/>
    <asset:stylesheet src="hover-pack.css"/>

    <asset:stylesheet src="application.css"/>

    <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<asset:stylesheet src="bootstrap.min.css"/>
	<asset:stylesheet src="font-awesome.min.css"/>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
    <!-- Para el usuario una vez logeado -->
	 <asset:stylesheet src="font-awesome.min2.css"/>
	

    <g:layoutHead/>
</head>
<body class="home">

    <div class="navbar navbar-inverse navbar-static-top" role="navigation">
        <div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                

			<a class="navbar-brand" href="/">
            <asset:image src="logo2.png"  alt="Progressus HTML5 template"/></a>
            
            </div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">


						<g:if test="${session!=null && session.usuario!=null}">
							<g:if test="${session.usuario.getRoles().any{it.authority=='ADMIN'}}" >
								
								<li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
								<li><g:link controller="administrador" action="facultad">LA FACULTAD</g:link></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">CURSOS <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#">Preguntas Frecuentes</a></li>
										<li class="active"><g:link controller="curso" action="index" >Lista de Cursos</g:link></li>	
									</ul>
								</li>
							</g:if>
							<g:else>
								<li><g:link controller="curso" action="index">INICIO</g:link></li>
								<li><g:link controller="administrador" action="facultad">LA FACULTAD</g:link></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">CURSOS <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#preguntas">Preguntas Frecuentes</a></li>
										<li class="active"><g:link controller="curso" action="index" >Lista de Cursos</g:link></li>
										
									</ul>
								</li>
							</g:else>

						</g:if>
						<g:else>
							<li><g:link action=''>INICIO</g:link></li>
								<li><g:link controller="administrador" action="facultad">LA FACULTAD</g:link></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">CURSOS <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#preguntas">Preguntas Frecuentes</a></li>
										<li class="active"><g:link controller="curso" action="index" >Lista de Cursos</g:link></li>
										
									</ul>
								</li>
						</g:else>

					<li><a href="#footer">CONTACTOS</a></li>
					<li class="dropdown">
						<g:if test="${session!=null && session.usuario!=null}">
							<g:if test="${session.usuario.getRoles().any{it.authority=='ADMIN'}}" >
									<a href="#"class="user-profile dropdown-toggle" data-toggle="dropdown">
									<asset:image src="${session?.usuario?.nombreUsuario}.jpg" alt=""/>${session?.usuario?.nombreUsuario} <b class="caret"></b></a>
							<ul class="dropdown-menu dropdown-usermenu pull-right">
									<li><a href="/administrador/show/${session.usuario.id}"> Perfil</a></li>
									<li><g:link controller="usuario" action="logout" ><span class="fa fa-sign-out pull-right"></span> Cerrar Sesion</g:link></li>
								</ul>
							</g:if>
							<g:else>
								<a href="#"class="user-profile dropdown-toggle" data-toggle="dropdown">
								<asset:image src="${session?.usuario?.nombreUsuario}.jpg" alt=""/>${session?.usuario?.nombreUsuario} <b class="caret"></b></a>
							
								<ul class="dropdown-menu dropdown-usermenu pull-right">
									<li><a href="/interesado/show/${session.usuario.id}"> Perfil</a></li>
									<li><g:link controller="usuario" action="logout" ><span class="fa fa-sign-out pull-right"></span> Cerrar Sesion</g:link></li>
									<li><a href="/curso/miscursos"> Mis Cursos</a></li>
								
									<li><a href="/inscripcion/misinscripciones"> Mis cupones</a></li>
								</ul>
							</g:else>	
								
								
					

						</g:if>
						<g:else>
							<div class="nav" role="navigation">
								<ul>
								<li><g:link class="btn"  controller="usuario" action="acceder">ACCEDER</g:link></li>
								</ul>
							</div>
						</g:else>
					</li>
						<g:if test="${message}">
							<div class="message" role="status">${message}</div>
						</g:if>
					</li>
				<!-- top navigation 
				
					<ul class="nav navbar-nav navbar-right">
					<g:if test="${session!=null && session.usuario!=null}">
                		<li class="">
                  			<a href="#" class="user-profile dropdown-toggle" data-toggle="dropdown">
                    			<asset:image src="img.jpg" alt=""/>${session?.usuario?.nombreUsuario}<b class="caret"></b></a>
							  
						
                  		<ul class="dropdown-menu">
                    	<li><a href="#"> Profile</a></li>
                    	<li>
                      	<a href="#">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                     	 </a>
                    	</li>
                    	<li><a href="#">Help</a></li>
                   		<li><g:link controller="login" action="logout"><i class="fa fa-sign-out pull-right"></i> Cerrar Sesion</g:link></li>
						  
                		</ul>
                		</li>
						
		

                		<li role="presentation" class="dropdown">
                  		<a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                   		<i class="fa fa-envelope-o"></i>
                    	<span class="badge bg-green">6</span>
                  		</a>                  		
                		</li>
              		</ul>
				
								   
       

					<li>
					
						</g:if>
						<g:else>
							<div class="nav" role="navigation">
								<ul>
								<li><g:link class="btn"  controller="usuario" action="acceder">ACCEDER / REGISTRARSE</g:link></li>
								</ul>
							</div>
						</g:else>
						<g:if test="${message}">
							<div class="message" role="status">${message}</div>
						</g:if>
					</li>-->
				</ul>
			</div><!--/.nav-collapse -->
		</div>
    </div>


    <g:layoutBody/>

    	<!-- Social links. @TODO: replace by link/instructions in template -->
	<section id="social">
		<div class="container">
			<div class="wrapper clearfix">
				<!-- AddThis Button BEGIN -->
				<div class="addthis_toolbox addthis_default_style">
				<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
				<a class="addthis_button_tweet"></a>
				<a class="addthis_button_linkedin_counter"></a>
				<a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
				</div>
				<!-- AddThis Button END -->
			</div>
		</div>
	</section>
	<!-- /social links -->


	<footer id="footer" class="top-space">

		<div class="footer1">
			<div class="container">
				<div class="row">
					
					<div class="col-md-3 widget">
						<h3 class="widget-title">Contactos</h3>
						<div class="widget-body">
							<p>383-4878963<br>
								<a href="mailto:jogaf@gmail.com">jogaf@gmail.com</a><br>
								<br>
								Maipu y Belgrano, San Fernando del Valle de Catamarca, CP 4700
							</p>	
						</div>
					</div>

					<div class="col-md-3 widget">
						<h3 class="widget-title">Sígueme</h3>
						<div class="widget-body">
							<p class="follow-me-icons">
								<a href=""><i class="fa fa-twitter fa-2"></i></a>
								<a href=""><i class="fa fa-github fa-2"></i></a>
								<a href=""><i class="fa fa-facebook fa-2"></i></a>
							</p>	
						</div>
					</div>

					<div class="col-md-6 widget">
						<h3 class="widget-title">Acerca de:</h3>
						<div class="widget-body">
							<p>El presente prototipo de aplicación web fue desarrollado en equipo por los alumnos Franco Carrizo, Gabriel Pacheco y José Rodríguez, 
                            todos pertencientes a la carrera de Ingeniería en Informática, la cual se dicta en la Universidad Nacional de Catamarca. 
                            </p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>

		<div class="footer2">
			<div class="container">
				<div class="row">
					
					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
								<a href="${createLink(uri: '/')}">INICIO</a> | 
								<g:link controller="administrador" action="facultad">LA FACULTAD</g:link> |
								<a href="sidebar-right.html">CURSOS</a> |
								<a href="#footer">CONTACTOS</a> |		
								<b>
									<g:if test="${session!=null && session.usuario!=null}">
											<a href="#"><span class="glyphicon glyphicon-user"></span> Usuario: ${session?.usuario?.nombreUsuario}</a>
											<g:link controller="usuario" action="logout" controller="usuario"><span class="glyphicon glyphicon-log-in"></span> Cerrar Sesion</g:link>
									</g:if>
									<g:else>	
											<g:link controller="usuario" action="acceder">ACCEDER</g:link>
										
									</g:else>
									<g:if test="${message}">
										<div class="message" role="status">${message}</div>
									</g:if>
								</b>
							</p>
						</div>
					</div>

					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="text-right">
								Copyright &copy; JOGAF - 2019. Diseñado por <a href="#" rel="designer">JOGAF</a> 
							</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>

	</footer>	
		




	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<asset:javascript src="headroom.min.js"/>
	<asset:javascript src="jQuery.headroom.min.js"/>
	<asset:javascript src="template.js"/>
    <!-- jQuery -->
    <asset:javascript src="jquery.min2.js"/>
	<asset:javascript src="custom.min.js"/>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>


</body>
</html>
