<!DOCTYPE html>
<html>
<head>
	<title>HTML to PDF</title>
	<asset:stylesheet src="stylePDF.css"/>
	
</head>
<body>
<div id="HTMLtoPDF">


    <header class="clearfix">
      <div id="logo">
        <asset:image src="logo2.png"  alt="Progressus HTML5 template"/>
		
      </div>
	 	
      <div id="company">
       <asset:image src="descarga.jpg" width="80" alt="Progressus HTML5 template"/>
      </div>
     
    </header>
    <main>
	<div id="invoice1">
          <h1><strong>CERTIFICADO<strong></h1>
		<g:each in="${inscripcionList}">
       
    
      </div><br><br><br>
        <div id="details" class="clearfix">
          <div id="client">
            
            <h2 class="name">CERTIFICAMOS que la persona  ${it.interesado.nombre} ${it.interesado.apellido}   con el DNI  ${it.interesado.dni} <br><br>
             participó como  ${it.interesado.categoria} en el CURSO   ${it.cursos.nombre} , realizado en <br><br>
             San Fernando del Valle de Catamarca de la Provincia de Catamarca </h2>
            
          </div>
          
        </div>
        <br><br><br>  
        <div id="client">Autoridad Certificante</div><br>
      </g:each>
    </main>
    <footer>
      Copyright &copy; JOGAF - 2019.
	  <!-- here we call the function that makes PDF -->
    </footer>
	</div>
	<a href="#" onclick="HTMLtoPDF()">Descargar CERTIFICADO</a>
 

	
	<!-- these js files are used for making PDF -->
    <asset:javascript src="jspdf.js"/>
	<asset:javascript src="jquery-2.1.3.js"/>
    <asset:javascript src="pdfFromHTML.js"/>
	
</body>
</html>