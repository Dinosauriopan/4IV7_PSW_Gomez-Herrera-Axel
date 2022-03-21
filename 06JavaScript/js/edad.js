function validare(e){
    var teclado = (document.all)? e.keyCode : e.which;
    if(teclado == 8) return true;
    var patron = /[0-9]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}

function edad(){

    var diA = parseInt(document.formulario6.diaA.value);
    var meA = parseInt(document.formulario6.mesA.value);
    var anA = parseInt(document.formulario6.anoA.value);
    var diN = parseInt(document.formulario6.diaN.value);
    var meN = parseInt(document.formulario6.mesN.value);
    var anN = parseInt(document.formulario6.anoN.value);

    //El unico comentado porque esta largo y que no se me reinicie el cerebro :3

    //validar datos
    while (diA > 31 || diN > 31 || diA == 0 || diN == 0){
        alert("Valores de dia van de 1 al 31");
        return false;
    }

    while (meA > 12 || meN > 12 || meA == 0 || meN == 0){
        alert("Valores de mes van de 1 al 12");
        return false;
    }

    while (anA > 2022 || anA == 0){
        alert("Valor de año invalido, favor de poner un año valido");
        return false;
    }

    while (anA < anN){
        alert("Su año de nacimiento no debe ser mayor al actual =)");
        return false;
    }

    var edad = anA - anN;

    //Eliminar edad cuando sea necesario

    //Mes
    if (meA < meN){
        edad -= 1;
    }

    //Día
    else{
        if(meA == meN){
            if(diA < diN){
                edad -=1;
            }
        }
    }

    //validar año bisiesto
    if (meN == 2){
        if(diN == 29){
            if (anN % 4 === 0){
                edad = Math.trunc(edad/4);
            }

        }
    }

    document.formulario6.edad_calculada.value = edad + " años";
}

function borrar6(){

    document.formulario6.diaA.value = "";
    document.formulario6.diaN.value = "";
    document.formulario6.mesA.value = "";
    document.formulario6.mesN.value = "";
    document.formulario6.anoA.value = "";
    document.formulario6.anoN.value = "";
    document.formulario6.edad_calculada.value = "";

}