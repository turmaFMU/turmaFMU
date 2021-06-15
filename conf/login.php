<?php
include('conexao.php');

if($_SERVER["REQUEST_METHOD"] == "POST") {
    // username and password sent from form

    $email = mysqli_real_escape_string($link,$_POST['email']);
    $senha = mysqli_real_escape_string($link,$_POST['senha']);

    $sql = "SELECT email, senha FROM cadastro_user WHERE email = '$email' and senha = '$senha'";
    $result = mysqli_query($link,$sql);
    $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
    //$active = $row['active'];

    $count = mysqli_num_rows($result);

    // If result matched $myusername and $mypassword, table row must be 1 row

    if($count == 1) {
        $_SESSION['login_user'] = $email;
        echo "
                    <META HTTP-EQUIV=REFRESH CONTENT = '0;URL=../index.html'>
                    <script type='text/javascript'>
                        alert('Logim com Sucesso.');
                    </script>
                ";

    }elseif ($count == 0){
        $sql = "SELECT email, senha FROM cadastro_empresa WHERE email = '$email' and senha = '$senha'";
        $result = mysqli_query($link,$sql);
        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
        //$active = $row['active'];

        $count = mysqli_num_rows($result);
        if ($count == 1){
            echo "
                    <META HTTP-EQUIV=REFRESH CONTENT = '0;URL=../index.html'>
                    <script type='text/javascript'>
                        alert('Logim com Sucesso.');
                    </script>
                ";
        }else {
            echo "
                    <META HTTP-EQUIV=REFRESH CONTENT = '0;URL=../login.html'>
                    <script type='text/javascript'>
                        alert('O Usuário não foi encontrado por gentileza verifica seu cadastro.');
                    </script>
                ";
        }
    }else {
        echo "
                    <META HTTP-EQUIV=REFRESH CONTENT = '0;URL=../login.html'>
                    <script type='text/javascript'>
                        alert('O Usuário não foi encontrado por gentileza verifica seu cadastro.');
                    </script>
                ";
    }
}
?>
