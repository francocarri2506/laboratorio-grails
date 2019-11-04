
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/favicon.ico" type="image/ico" />

    <title>Principal Administrador</title>

    <!-- Bootstrap -->
    <asset:stylesheet src="bootstrap.min.css"/>
    <!-- Font Awesome -->
    <asset:stylesheet src="font-awesome.min.css"/>
    <!-- NProgress -->
    <asset:stylesheet src="nprogress.css"/>
    <!-- iCheck -->
    <asset:stylesheet src="green.css"/>
  	
    <!-- bootstrap-progressbar -->
    <asset:stylesheet src="bootstrap-progressbar-3.3.4.min.css"/>
    <!-- JQVMap -->
    <asset:stylesheet src="jqvmap.min.css"/>
    <!-- bootstrap-daterangepicker -->
    <asset:stylesheet src="daterangepicker.css"/>

    <!-- Custom Theme Style -->
    <asset:stylesheet src="custom.min.css"/>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
            
              <g:link controller="usuario" action="indexAdmin">
                <asset:image src="logo2.png" class="site_title"/>
              <span>USUARIO ADMINISTRADOR</span></a></g:link>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
             
                <asset:image src="${session?.usuario?.nombreUsuario}.jpg" alt="" class="img-circle profile_img"/>
              </div>
              <div class="profile_info">
                <span>Bienvenido</span>
                <h2>${session?.usuario?.nombreUsuario}</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Principal <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/usuario/create">Crear Usuario</a></li>
                      <li><a href="/administrador/create">Crear Administrador</a></li>
                      <li><a href="/curso/create">Crear Curso</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> GESTION CERTIFICADOS <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/certificadoAsistencia/index">Certificados de asistencia</a></li>
                      <li><a href="/certificadoExpositor/index">Certificados de Expositor</a></li>
                      <li><a href="/certificadoAprobacion/index">Certificado de Aprobación</a></li>
                      
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> GESTION AUTORIDADES <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/autoridadCertificante/index">Autoridades Certificantes</a></li>
                      <li><a href="/expositor/index">Expositores</a></li>
                      
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> GESTION CURSOS <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/curso/index">Lista de Cursos </a></li>
                      <li><a href="/curso/create">Crear nuevo Curso</a></li>
                      <li><a href="/curso/index">Editar/Eliminar Curso</a></li>

                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> GESTION USUARIOS <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/administrador/index">Administradores </a></li>
                      <li><a href="/interesado/index">Interesados</a></li>

                    </ul>
                  </li>
                 

                  <li><a><i class="fa fa-bar-chart-o"></i> GESTION ESTADISTICAS <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><g:link controller="administrador" action="cursosxFecha" >Cursos por Fecha</g:link></li>
                      <li><g:link controller="administrador" action="pagoInscriptos" >Pago de Inscriptos</g:link></li>
                      <li><a href="morisjs.html">Moris JS</a></li>
                      <li><a href="echarts.html">ECharts</a></li>
                      <li><a href="other_charts.html">Other Charts</a></li>
                    </ul>
                  </li>
                  
                </ul>
              </div>
<!--
              <div class="menu_section">
                <h3>Live On</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-bug"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="e_commerce.html">E-commerce</a></li>
                      <li><a href="projects.html">Projects</a></li>
                      <li><a href="project_detail.html">Project Detail</a></li>
                      <li><a href="contacts.html">Contacts</a></li>
                      <li><a href="profile.html">Profile</a></li>
                    </ul>
                  </li>
                 <li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="page_403.html">403 Error</a></li>
                      <li><a href="page_404.html">404 Error</a></li>
                      <li><a href="page_500.html">500 Error</a></li>
                      <li><a href="plain_page.html">Plain Page</a></li>
                      <li><a href="login.html">Login Page</a></li>
                      <li><a href="pricing_tables.html">Pricing Tables</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="#level1_1">Level One</a>
                        <li><a>Level One<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu"><a href="level2.html">Level Two</a>
                            </li>
                            <li><a href="#level2_1">Level Two</a>
                            </li>
                            <li><a href="#level2_2">Level Two</a>
                            </li>
                          </ul>
                        </li>
                        <li><a href="#level1_2">Level One</a>
                        </li>
                    </ul>
                  </li>                  
                  <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a></li>
                </ul>
              </div>
--> 
            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                      <g:if test="${session!=null && session.usuario!=null}">
                      <g:if test="${session.usuario.getRoles().any{it.authority=='ADMIN'}}" >
                        <a href="#"class="user-profile dropdown-toggle" data-toggle="dropdown">
                        <asset:image src="${session?.usuario?.nombreUsuario}.jpg" alt=""/>${session?.usuario?.nombreUsuario} <b class="caret"></b></a>
                      </g:if>
                      <g:else>
                      <a href="#"class="user-profile dropdown-toggle" data-toggle="dropdown">${session?.usuario?.nombreUsuario} <b class="caret"></b></a>
                      
                      </g:else>	
                        <ul class="dropdown-menu dropdown-usermenu pull-right">
                          <li><a href="#"> Perfil</a></li>
                          <li><g:link controller="usuario" action="logout" ><span class="fa fa-sign-out pull-right"></span> Cerrar Sesion</g:link></li>
                        </ul>
                  </li>
                      
                    </g:if>
                </li>

                
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          
          </div>
          <!-- /top tiles -->

          <div class="row">
       
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Copyright &copy; JOGAF - 2019. Diseñado por <a href="#" rel="designer">JOGAF</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <asset:javascript src="jquery.min.js"/>
    <!-- Bootstrap -->
    <asset:javascript src="bootstrap.min.js"/>
    <!-- FastClick -->
    <asset:javascript src="fastclick.js"/>
    <!-- NProgress -->
    <asset:javascript src="nprogress.js"/>
    <!-- Chart.js -->
    <asset:javascript src="Chart.min.js"/>
    <!-- gauge.js -->
    <asset:javascript src="gauge.min.js"/>
    <!-- bootstrap-progressbar -->
    <asset:javascript src="bootstrap-progressbar.min.js"/>
    <!-- iCheck -->
    <asset:javascript src="icheck.min.js"/>
    <!-- Skycons -->
    <asset:javascript src="skycons.js"/>
    <!-- Flot -->
    <asset:javascript src="jquery.flot.js"/>
    <asset:javascript src="jquery.flot.pie.js"/>
    <asset:javascript src="jquery.flot.time.js"/>
    <asset:javascript src="jquery.flot.stack.js"/>
    <asset:javascript src="jquery.flot.resize.js"/>
    <!-- Flot plugins -->
    <asset:javascript src="jquery.flot.orderBars.js"/>
    <asset:javascript src="jquery.flot.spline.min.js"/>
    <asset:javascript src="curvedLines.js"/>
    <!-- DateJS -->
    <asset:javascript src="date.js"/>
    <!-- JQVMap -->
    <asset:javascript src="jquery.vmap.js"/>
    
    <asset:javascript src="jquery.vmap.sampledata.js"/>
    <!-- bootstrap-daterangepicker -->
    <asset:javascript src="moment.min.js"/>
    <asset:javascript src="daterangepicker.js"/>

    <!-- Custom Theme Scripts -->
    <asset:javascript src="custom.min.js"/>
	
  </body>
</html>