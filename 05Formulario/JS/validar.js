function validar(formulario){
    /* 
    Queremos validar que se escriban mas de 5 caracteres en el campo
    de nombre
    */
 
    if(formulario.nombre.value.length < 5){
        alert("Por favor escribe más de 5 caracteres en el campo nombre");
        formulario.nombre.focus();
    return false;
    }
}