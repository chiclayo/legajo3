

<?php
$nombre=$_POST['nombre'];
$contraseña=$_POST['contraseña'];

//conectar
$conexion=mysqli_connect("localhost","root","","salud");
$consulta="SELECT * FROM usuario WHERE nombre='$nombre' and contraseña='$contraseña'";
$resultado=mysqli_query($conexion,$consulta);

$filas=mysqli_num_rows($resultado);

if ($filas>0){

    header("location:index.html");

}
else{
    echo "erron al ingresar";

}
mysqli_free_result($resultado);
mysqli_close($conexion);

