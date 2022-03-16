

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