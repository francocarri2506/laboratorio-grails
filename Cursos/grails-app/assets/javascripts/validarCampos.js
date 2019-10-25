//let elemento;
//elemento=document;


//console.log(elemento);
//console.log(document);  //muestra lo mismo

//obtenemos el elemento con getElementByid
//let encabezado= document.getElementById('tituloPrincipal');
//console.log(encabezado);

//Por ejemplo podemos cambiar el texto; 
//encabezado.innerHTML='prueba de cambio de encabezado';

//console.log(encabezado);


/*obtenemos los elementos getElementsByTagName*/

//let elementosLabel=document.getElementsByTagName("label");

//console.log(elementosLabel);


/*obtenemos los elementos getElementsByClassName*/

/*
let elementoBoton=document.getElementsByClassName("boton");
console.log(elementoBoton);

var i;
for (i = 0; i < elementoBoton.length; i++) {
      elementoBoton[i].style.backgroundColor = "royalblue";
}
*/

/*obtenemos los elementos getElementsByName, me devuelve una lista*/
/*var elemento = document.getElementsByName("nombreCurso");
var i;
for (i = 0; i < elemento.length; i++) {
      elemento[i].style.width = "300px";
}
console.log(elemento);*/


/** obtenemos los elementos querySelector obtiene el primero, querySelectorall obtiene todos

let elementobotonqs=document.querySelector(".boton");
console.log(elementobotonqs);
*/
/**Selecciona Todos 
let elementoaaa=document.querySelectorAll(".boton");
console.log(elementoaaa);
*/
/**Crear Elementos */
/*El método createElement () crea un elemento con el nombre especificado. Después de crear el elemento, 
use el método element.appendChild () o element.insertBefore () para insertarlo en el documento.
a createElement le paso el elemento que quiero crear, El método appendChild () agrega un nodo como el último hijo de un nodo.*/

/**Creamos el enlace 
let enlace=document.createElement("a");
*/
/**Creamos la clase 
enlace.className="enlace";
*/
/**Le agregamos un id 
enlace.id="nuevoId";
*/
/**Le agregamos un atributo href 
enlace.setAttribute("href","https://www.google.com.ar/");
*/
/**Le agregamos el texto 
let contenido = document.createTextNode("Nuevo Enlace JS");
enlace.appendChild(contenido);
*/
//enlace.appendChild(document.createTextNode("Nuevo Enlace"));

/**Agregamos al Html

let li = document.createElement("li");
li.appendChild(enlace);

document.getElementById("listaCursosDisponibles").appendChild(li);
*/
/**Mandamos a la consola para ver como se va construyendo nuestro enlace 
console.log(enlace);

/**El método addEventListener () adjunta un controlador de eventos al elemento especificado. */
/**Se puede crear la funcion por fuera

document.getElementById("btnAgregar").addEventListener("click", function(){
      alert("Agregando nuevo curso");
    });

/**Otra forma es crear una funcion, en lugar del function, pongo el nombre de la funcion a llamar 
document.getElementById("nuevoCurso").addEventListener("click", crearMensaje);


function crearMensaje(){
      alert("Agregando nuevo curso");
}


/*function controlCupo() {
      let long= InscripcionCount.length;

      cupoMinimo = document.getElementById("cupoMinimo").value;

      cupoMaximo = document.getElementById("cupoMaximo").value;      
      
      if (cupoMinimo>cupoMaximo){   
            alert("Cupo Minimo debe ser menor a cupo Maximo!"); 
            return false;
      }      
}*/

function controlInscripcion() {
      let long= InscripcionCount.length;
      console.log(long);
/*
      cupoMaximo = document.querySelector('div[aria-labelledby="cupoMaximo-label"]');

      cupoMaximo = document.getElementById("cupoMaximo").value;      
      
      if (cupoMinimo>cupoMaximo){   
            alert("Cupo Minimo debe ser menor a cupo Maximo!"); 
            return false;
      }
      
      return true;
*/
}

/*
console.log(document.getElementById("cantExp").value);

 

let cantidadExp= document.getElementById("cantExp").value;
let i=0;


function ExpCampos(){

      var exp = document.querySelector("#expositores"); 
      var child = exp.lastElementChild; 
       console.log(child);
      while (child) { 
      exp.removeChild(child); 
      child = exp.lastElementChild; 
      } 

      let cantidadExp= document.getElementById("cantExp").value;
      let i=0;

      for(i=0; i<cantidadExp; i++){
            let lblnombreExp= document.createElement("label");
            lblnombreExp.className="hola";
            let nombreExp= document.createTextNode("Nombre:");
            lblnombreExp.appendChild(nombreExp);
            document.getElementById("expositores").appendChild(lblnombreExp);

            let inpnombreExp= document.createElement("input");
            inpnombreExp.className="hola";
            inpnombreExp.id=`exp${i+1}`;
            document.getElementById("expositores").appendChild(inpnombreExp);
      }
      
} 

function Suma(){
      let valor1=parseInt(document.getElementById("numero1").value);
      let valor2=parseInt(document.getElementById("numero2").value);
      
      suma=valor1+valor2;
      
      console.log(suma);
      let label= document.createElement("label");
      let contenido= document.createTextNode(suma);

      label.appendChild(contenido);

      document.getElementById("resultado").appendChild(label);

}
*/


