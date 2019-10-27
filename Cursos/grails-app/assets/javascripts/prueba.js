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