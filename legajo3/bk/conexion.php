<?php
/**
 * Created by PhpStorm.
 * User: Sarid
 * Date: 28/02/2019
 * Time: 10:43
 */

function conectar(){
    $user="root";
    $pass="";
    $server="localhost";
    $db="salud";
    $con=mysqli_connect($server,$user,$pass)or die("error al conectar la base de datos".mysqli_error());
    mysqli_select_db($db,$con);


    return $con;

}
?>