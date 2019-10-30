function controlFechaInsc(){
    let fechaLimite = document.getElementById("fechaLimite").nodeValue;

    let fechaLimite = document.querySelector("div #fechaLimite");
    

    let fechaActual = new Date()
    if(fechaActual>fechaLimite[0]){
        alert("actual: "+fechaActual +". Limite: "+fechaLimite[0] +"Ya supero la fecha")
        return false;
    }
    else{
        alert("actual: "+fechaActual +". Limite: "+fechaLimite[0] +". fecha correcta")    
    }
    return true;
}


function controlarClave (clave, clave2){
    if(clave==clave2){
        return true;
    }else{
        alert("Error! Las claves deben ser iguales");
        return false;
    }
}

function tipoClave(clave){
    if(clave.length <= 8 && clave.length >= 6){
        alert("La clave '" +clave + "' esta bien");
    }else{
        alert("Error! La clave '" +clave + "' es incorrecta. Debe contener entre 6 y 8 carácteres");
        return false;
    }
}

function Clave(){
    let clave =document.getElementById("cl1").value;
    let clave2 =document.getElementById("cl2").value;


tipoClave(clave);
controlarClave (clave, clave2);


}