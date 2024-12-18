<?php
session_start();
if (isset($_GET['id'])) {

    $quantity = $_GET['quantity'];
    $id = $_GET['id'];

    if ($quantity >= 0) {
        $_SESSION['cart'][$id] = array('quantity' => $quantity);
    } else {
        echo "<script>alert('Quantity cannot be less than 0');</script>";
    }

    header('location:welcome.php');

    echo '<pre>';
    print_r($_SESSION['cart']);
    echo '</pre>';
}
?>
