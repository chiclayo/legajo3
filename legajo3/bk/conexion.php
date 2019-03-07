<?php

/**
 * Created by PhpStorm.
 * User: Sarid
 * Date: 7/03/2019
 * Time: 08:11
 */
$conexion=new mysqli("localhost","root","","salud");
if ($conexion){
    echo "conexión exitosa";
}
else{
    echo "conexion no exitosa";
}

?>