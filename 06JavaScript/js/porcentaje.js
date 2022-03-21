function validarn(e){
    var teclado = (document.all)? e.keyCode : e.which;
    if(teclado == 8) return true;
    var patron = /[0-9\d .]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}

function porcentaje(){

    var h = parseInt(document.formulario5.hombres.value);
    var m = parseInt(document.formulario5.mujeres.value);
    var cantidad_total = h + m;
    var porcentaje_M = (m/cantidad_total)*100;
    var porcentaje_H = (h/cantidad_total)*100;

    document.formulario5.porcentajeH.value = porcentaje_H + "%";
    document.formulario5.porcentajeM.value = porcentaje_M + "%";
}

function borrar5(){
    
    document.formulario5.hombres.value = "";
    document.formulario5.mujeres.value = "";
    document.formulario5.porcentajeH.value = "";
    document.formulario5.porcentajeM.value = "";
}