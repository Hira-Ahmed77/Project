<?php
include('header2.php');
include('config/db.php');
if(!isset($_SESSION['customer']) && empty($_SESSION['customer']) ){
    header('location:index.php');
}
?>

<?php
include('_login-page.php');
?>

<?php
include('Template/_hero-carousel.php');
?>

<?php
include('Template/_menu-grid.php');
?>
<?php
include('Template/_breakfast.php');
?>
<?php
include('Template/_lunch.php');
?>
<?php
include('Template/_snacks.php');
?>
<?php
include('Template/_dinner.php');
?>
<?php
include('Template/_desert.php');
?><?php
include('Template/_drinks.php');
?>
<?php
include('footer.php');
?>