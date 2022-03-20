function validarn(e){
    var teclado = (document.all)? e.keyCode : e.which;
    if(teclado == 8) return true;
    var patron = /[0-9\d .]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}

function comision(){

    var sueldo_b = parseInt(document.formulario2.sueldoB.value);
    var v1 = parseInt(document.formulario2.venta1.value);
    var v2 = parseInt(document.formulario2.venta2.value);
    var v3 = parseInt(document.formulario2.venta3.value);
    var comision = (v1 + v2 + v3)*0.10;
    var sueldo_f = sueldo_b + comision;

    document.formulario2.sueldoF.value = "$" + sueldo_f;

}

function borrar2(){

    document.formulario2.sueldoB.value = "";
    document.formulario2.venta1.value = "";
    document.formulario2.venta2.value = "";
    document.formulario2.venta3.value = "";
    document.formulario2.sueldoF.value = "";
    
}