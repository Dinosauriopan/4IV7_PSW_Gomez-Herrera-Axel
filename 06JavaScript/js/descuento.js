function validarn(e){
    var teclado = (document.all)? e.keyCode : e.which;
    if(teclado == 8) return true;
    var patron = /[0-9\d .]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}

function aplicar_descuento(){

    var pago_I = parseInt(document.formulario3.pago.value);
    var descuento = (pago_I)*0.15;
    var pago_F = pago_I - descuento;

    document.formulario3.pagoDescuento.value = "$" + pago_F;

}

function borrar3(){

    document.formulario3.pago.value = "";
    documento.formulario3.pagoDescuento.value = "";

}