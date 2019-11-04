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
			
			<div class="navbar-collapse collapse">
      
      
				<ul class="nav navbar-nav pull-right">
					
					<li class="dropdown">
						<g:if test="${session!=null && session.usuario!=null}">
							<g:if test="${session.usuario.getRoles().any{it.authority=='ADMIN'}}" >
								<a href="#"class="user-profile dropdown-toggle" data-toggle="dropdown">
								<asset:image src="${session?.usuario?.nombreUsuario}.jpg" alt=""/>${session?.usuario?.nombreUsuario} <b class="caret"></b></a>
							</g:if>
							<g:else>
							<a href="#"class="user-profile dropdown-toggle" data-toggle="dropdown">${session?.usuario?.nombreUsuario} <b class="caret"></b></a>
							
							</g:else>	
								<ul class="dropdown-menu dropdown-usermenu pull-right">
									<li><a href="/administrador/show/${session.usuario.id}"> Perfil</a></li>
									<li><g:link controller="usuario" action="logout" ><span class="fa fa-sign-out pull-right"></span> Cerrar Sesion</g:link></li>
								</ul>
				
							
						</g:if>
						
					
					</li>
			
				</ul>
			</div><!--/.nav-collapse -->
		</div>
    </div>


    <g:layoutBody/>
    

	<footer id="footer" class="top-space">

		<div class="footer1">
			<div class="container">
				<div class="row">
					<div class="pull-right">
            Copyright &copy; JOGAF - 2019. Diseñado por <a href="#" rel="designer">JOGAF</a>
          </div>
          <div class="clearfix"></div>
					
						</div>
					</div>

				</div> <!-- /row of widgets -->
			
	</footer>	
		




	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<asset:javascript src="headroom.min.js"/>
	<asset:javascript src="jQuery.headroom.min.js"/>
	<asset:javascript src="template.js"/>
    <!-- jQuery -->
    <asset:javascript src="jquery.min2.js"/>
	

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>


</body>
</html>
