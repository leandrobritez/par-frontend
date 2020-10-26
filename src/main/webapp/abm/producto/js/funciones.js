/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function validacion() {
    var id = document.forms["elForm1"]["id"].value;
    var nombre = document.forms["elForm1"]["nombre"].value;
    var precio = document.forms["elForm1"]["precio"].value;
    var categoria = document.forms["elForm1"]["categoria"].value;
    var cantidad = document.forms["elForm1"]["categoria"].value;
    if (id.length > 12) {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo id debe tener mas de 12 caracteres');
        return false;
    }
    if (isNaN(id)) {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo id debe ser numerico');
        return false;
    }
    if (nombre.length > 50) {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo nombre debe tener mas de 50 caracteres');
        return false;
    }
    if (precio.length > 50) {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo precio debe tener mas de 50 caracteres');
        return false;
    }
    
    if (isNaN(precio)) {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo precio debe ser numerico');
        return false;
    }
    if (cantidad.length > 10) {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo precio debe tener mas de 50 caracteres');
        return false;
    }
    
    if (isNaN(cantidad)) {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo precio debe ser numerico');
        return false;
    }
    if (categoria.length > 12) {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo precio debe tener mas de 50 caracteres');
        return false;
    }
    
    if (isNaN(categoria)) {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo precio debe ser numerico');
        return false;
    }

    // Si el script ha llegado a este punto, todas las condiciones
    // se han cumplido, por lo que se devuelve el valor true
    return true;
}

function validacionM() {
    var nombre = document.forms["elForm1"]["nombre"].value;
    var precio = document.forms["elForm1"]["precio"].value;

    if (nombre.length > 50) {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo nombre debe tener mas de 50 caracteres');
        return false;
    }
    if (precio.length > 50) {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo precio debe tener mas de 50 caracteres');
        return false;
    }
    if (isNaN(precio)) {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo precio debe ser numerico');
        return false;
    }

    // Si el script ha llegado a este punto, todas las condiciones
    // se han cumplido, por lo que se devuelve el valor true
    return true;
}


function asegurar (){
      rc = confirm("¿Seguro que desea Eliminar?");
      return rc;
  }
