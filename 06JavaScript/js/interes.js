/* vamos a realizar una funcion que se encarge
de validar la entrada de numeros por medio
de una expresion regular.
*/
function validarn(e){
    var teclado = (document.all)? e.keyCode : e.which;
    if(teclado == 8) return true;
    var patron = /[0-9\d .]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}

function interes(){

    var valor = document.formulario.cantidad.value;
    var meses = document.formulario.meses.value;
    var capitaln =parseInt(valor);
    var mesesn = parseInt(meses);
    
    while (mesesn > 48){
        alert("El maximo de meses que puede invertir es de 48")
        return false;        
    }

    var total = Math.pow(1.02, mesesn)*capitaln

    /*
    var valor =  document.formulario.cantidad.value;
    var resul = parseInt(valor);
    var interes = resul*0.037;
    var total = interes + resul;*/
    
    document.formulario.totalI.value = "$" + total;
}

function borrard(){
    document.formulario.cantidad.value = "";
    document.formulario.meses.value = "";
}