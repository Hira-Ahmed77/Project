<?php include('header.php');

include('config/db.php');

if(isset($_POST['submit'])){
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $name = mysqli_real_escape_string($conn, $_POST['name']);

    $password =  password_hash($_POST['password'], PASSWORD_DEFAULT);

    $sql = "INSERT INTO user (user_name, user_email, user_password) VALUES ('$name', '$email', '$password' )";

    if (mysqli_query($conn, $sql)) {
        $_SESSION['customer'] = $email;
        header('location:index.php');
    } else {
        header('location:index.php?message=2');
        echo("Error description: " . mysqli_error($conn));
    }
}
?>