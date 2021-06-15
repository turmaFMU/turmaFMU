<?php
require 'conexao.php';

$razao = $_POST["razao"];
$cnpj = $_POST["cnpj"];
$email = $_POST["email"];
$senha = $_POST["senha"];
$confsenha= $_POST["confsenha"];
$endereco = $_POST["endereco"];
$cidade = $_POST["cidade"];
$estado = $_POST["estado"];
$cep = $_POST["cep"];

$query = "INSERT INTO cadastro_empresa (razao, cnpj, email, senha, confsenha, endereco, cidade, estado, cep) 
VALUES ('$razao', '$cnpj', '$email', '$senha','$confsenha', '$endereco', '$cidade', '$estado', '$cep')";

mysqli_query($link, $query) or die(mysqli_error($link));

if(mysqli_affected_rows($link) != 0){
    echo "
                    <META HTTP-EQUIV=REFRESH CONTENT = '0;URL=../login.html'>
                    <script type='text/javascript'>
                        alert('Usuario cadastrado com Sucesso.');
                    </script>
                ";
}else{
    echo "
                    <META HTTP-EQUIV=REFRESH CONTENT = '0;URL=cadastro_empresa.html'>
                    <script type='text/javascript'>
                        alert('O Usuario não foi cadastrado com Sucesso.');
                    </script>
                ";
}