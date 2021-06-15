<?php

include_once("conexao.php");

$email = $_POST["email"];
$endereco = $_POST["endereco"];
$bairro = $_POST["bairro"];
$cidade = $_POST["cidade"];
$fone = $_POST['fone'];
$estado = $_POST["estado"];
$cep = $_POST["cep"];
$descricao = $_POST['descricao'];

$query = "INSERT INTO agendamento(email, endereco, bairro, cidade, fone, estado, cep, descricao)
VALUE ('$email','$endereco', '$bairro', '$cidade', '$fone', '$estado','$cep', '$descricao')";
mysqli_query($link, $query) or die(mysqli_error($link));

if(mysqli_affected_rows($link) != 0){
    echo "
                    <META HTTP-EQUIV=REFRESH CONTENT = '0;URL=../index.html'>
                    <script type='text/javascript'>
                        alert('Agendamento feito com Sucesso.');
                    </script>
                ";
}else{
    echo "
                    <META HTTP-EQUIV=REFRESH CONTENT = '0;URL=../agendamento.html'>
                    <script type='text/javascript'>
                        alert('O agendamento não foi cadastrado com Sucesso.');
                    </script>
                ";
}

