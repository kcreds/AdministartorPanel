<?php

$ipcon= "localhost";
$name= "root";
$password = "";

$db_name = "database";

$conn = mysqli_connect($ipcon, $name, $password, $db_name);

if (!$conn) {
	echo "Connection failed!";
}
?>