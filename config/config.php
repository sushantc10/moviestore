<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "movierepository";

$conn = new mysqli($servername,$username,$password,$database);

if($conn->connect_error){
	die('connection failedL').$conn->connect_error;
}
?>