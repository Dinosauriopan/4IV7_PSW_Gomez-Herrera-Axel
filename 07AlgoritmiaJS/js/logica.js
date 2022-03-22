//problema 1

//validacion de solo letras
function validarn(e){
    var teclado = (document.all)? e.keyCode : e.which;
    //El 32 es para aceptar el espacio segun encontre.
    if(teclado == 32) return true;
    var patron = /[a b c d e f g h i j k l m n ñ o p q r s t u v w x y z A B C D E F G H I J K L M N Ñ O P Q R S T U V W X Y Z]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}

function problema1(){

    //obtener la cadena
    var p1_input = document.querySelector('#p1-input').value;
    //poner la cadena en reversa y que puedan estar separadas por un espacio
    var p1_palabras = p1_input.split(' ').reverse();
    
    //Darme cuenta que las palabras con espacio se les ponen comas automaticamente.
    var p1_espacios = ' ';

    p1_palabras.forEach(function(palabra, i){
        if(i != p1_palabras.length || i != 0 ){
            p1_espacios += ' ';
            p1_espacios += palabra;
        }
    })

    document.querySelector('#p1-output').textContent = p1_espacios;
}

//problema 2
function problema2(){

}

//problema 3
function problema3(){
    //definir un alfabeto
    var alfabeto = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 
                    'J', 'K', 'L', 'M', 'N', 'Ñ', 'O', 'P', 'Q',
                    'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];

    //obtener la cadena del input y separar por comas
    var p3_input = document.querySelector('#p3-input').value;

    var p3_palabras = p3_input.split(',');

    //eliminar el espacio que hay entre cada palabra
    p3_palabras = p3_palabras.map(function (palabra){
        return palabra.replace(/\s/g, '').toUpperCase();
    });

    //calcular los caracteres unicos de cada palabra
    var p3_res = '';

    //iterear en cada palabra
    p3_palabras.forEach(function (palabra, i){

        //separar las palabras actuales del array
        //contiene cada letra de dichas palabra
        var letra_unica = [];
        var palabra_array = palabra.split('');

        //iterar al alfabeto
        alfabeto.forEach(function (letra, j){

            //iterar por palabra
            palabra_array.forEach(function (letra_palabra, k){
                //comprobar que la letra esta dentro del alfabeto
                if(letra_palabra == letra){
                    //si la letra no la hemos contado,la agregamos a un array
                    //para contar las letras unicas
                    if(letra_unica.indexOf(letra) < 0){
                        letra_unica.push(letra);
                    }
                }
            });

        });
        p3_res += 'Palabra: ' + palabra + ' = ' + letra_unica.length + '\n';
    });
    document.querySelector('#p3-output').textContent = p3_res;
}