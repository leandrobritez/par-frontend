/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function validacion() {
    var desc = document.forms["elForm1"]["descripcion"].value;
    var val = document.forms["elForm1"]["value"].value.item(0).toString();


    if (desc == "") {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo de busqueda no debe ir vacio');
        return false;
    }

    // Si el script ha llegado a este punto, todas las condiciones
    // se han cumplido, por lo que se devuelve el valor true
    return true;

}

function asegurar() {
    rc = confirm("¿Seguro que desea Eliminar?");
    return rc;
}

function valcant() {
    var cant = document.forms["elForm"]["cantAgregada"].value;
    var cantDisponible = document.forms["elForm"]["cantDisponible"].value;
    if (isNaN(cant)) {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo cantidad debe ser numerico');
        return false;
    }
    if (cant == "") {
        // Si no se cumple la condicion...
        alert('[ERROR] El campo no debe ir vacio');
        return false;
    }
    if (cant == 0) {
        // Si no se cumple la condicion...
        alert('[ERROR] La cantidad no puede ser cero');
        return false;
    }
    if (document.forms["elForm"]["cantAgregada"].value>document.forms["elForm"]["cantDisponible"].value) {
        // Si no se cumple la condicion...
        alert('[ERROR] La cantidad que desea adquirir es mayor a la disponible');
        return false;
    }

    // Si el script ha llegado a este punto, todas las condiciones
    // se han cumplido, por lo que se devuelve el valor true
    return true;

}
