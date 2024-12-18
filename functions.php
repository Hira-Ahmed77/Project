<?php
require("database/DBController.php");
require("database/Food.php");
$db = new DBController();
$food = new Food($db);
?>


