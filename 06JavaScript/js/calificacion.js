function validarn(e){
    var teclado = (document.all)? e.keyCode : e.which;
    if(teclado == 8) return true;
    var patron = /[0-9\d .]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}

function calificacion(){

    var p1 = parseInt(document.formulario4.parcial1.value);
    var p2 = parseInt(document.formulario4.parcial2.value);
    var p3 = parseInt(document.formulario4.parcial3.value);
    var examen = parseInt(document.formulario4.examenF.value);
    var trabajo = parseInt(document.formulario4.trabajoF.value);

    while (p1 > 10 || p2 > 10 || p3 > 10 || examen > 10 || trabajo > 10){
        alert("Las calificaiones validas son del 0 - 10");
        return false
    }

    var calificaion_parciales = ((p1 + p2 + p3)/3)*0.55;
    var calificacion = (examen*0.3) + calificaion_parciales + (trabajo*0.15);

    document.formulario4.calificacionF.value = calificacion;
}

function borrar4(){

    document.formulario4.parcial1.value = "";
    document.formulario4.parcial2.value = "";
    document.formulario4.parcial3.value = "";
    document.formulario4.examenF.value = "";
    document.formulario4.trabajoF.value = "";
    document.formulario4.calificacionF.value = "";
}