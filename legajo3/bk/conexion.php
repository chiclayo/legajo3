<?php
$conexion = mysqli_connect('localhost', 'root','');
mysqli_select_db($conexion, 'salud');
$resultado = mysqli_query($conexion,"select id, nombre, contraseña");







?>