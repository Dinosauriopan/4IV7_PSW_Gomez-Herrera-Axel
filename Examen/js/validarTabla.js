function algoritmo(){
var valor = parseFloat (document.interescompuesto.valor.value);
var interes = 0.0304
var periodo = parseInt (document.interescompuesto.periodo.value);

var cuota = valor*Math.pow(1.0+interes/5/100,periodo);
    document.interescompuesto.cuota.value = cuota;

    var checkOK = "0123456789.";

    var checkStr = interescompuesto.valor.value;

    var todoesvalido = true;


    if(interescompuesto.valor.value.length < 8){
        alert("Escriba por lo menos una cantidad a partir de 100,000.00, hasta 1,000,000.00");
        interescompuesto.valor.focus();
        return false;
    }
    if(interescompuesto.valor.value.length > 9){
        alert("Escriba por lo menos una cantidad a partir de 100,000.00, hasta 1,000,000.00");
        interescompuesto.valor.focus();
        return false;
    }

    for(var i = 0; i < checkStr.length; i++){
        var ch = checkStr.charAt(i);
        for(var j = 0; j < checkOK.length; j++){
            if(ch == checkOK.charAt(j)){
                break;
            }
            
        }
        if(j == checkOK.length){
            todoesvalido = false;
            break;
        }
    }

    if(!todoesvalido){
        alert("Escriba unicamente numeros en el campo: Valor del Automovil");
        interescompuesto.valor.focus();
        return false;
    }

    var checkOK = "0123456789.";

    var checkStr = interescompuesto.cuotai.value;

    var todoesvalido = true;


    if(interescompuesto.cuotai.value != valor*10/100){
        alert("Escriba la cuota incial correctamente (10% de valor auto)");
        interescompuesto.cuotai.focus();
        return false;
    }

    for(var i = 0; i < checkStr.length; i++){
        var ch = checkStr.charAt(i);
        for(var j = 0; j < checkOK.length; j++){
            if(ch == checkOK.charAt(j)){
                break;
            }
            
        }
        if(j == checkOK.length){
            todoesvalido = false;
            break;
        }
    }

    if(!todoesvalido){
        alert("Escriba unicamente numeros en el campo: Cuota incial");
        interescompuesto.cuotai.focus();
        return false;
    }

    var checkOK = "0123456789";

    var checkStr = interescompuesto.periodo.value;

    var todoesvalido = true;


    if(interescompuesto.periodo.value != 3){
        alert("Escriba el periodo correctamente (3,6,9,12,18)");
        interescompuesto.cuotai.focus();
        return false;
    }

    for(var i = 0; i < checkStr.length; i++){
        var ch = checkStr.charAt(i);
        for(var j = 0; j < checkOK.length; j++){
            if(ch == checkOK.charAt(j)){
                break;
            }
            
        }
        if(j == checkOK.length){
            todoesvalido = false;
            break;
        }
    }

    if(!todoesvalido){
        alert("Escriba unicamente numeros en el campo: periodo");
        interescompuesto.cuotai.focus();
        return false;
    }
}