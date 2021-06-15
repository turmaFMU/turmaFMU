<?php
$servidor = "localhost";
$usuario = "root";
$senha = "";
$dbname = "db_lixo";

//Criar a conexao
$link = new mysqli($servidor, $usuario, $senha, $dbname) or die("Falha na conexao: " . mysqli_connect_error());
mysqli_set_charset($link, 'utf8');
?>