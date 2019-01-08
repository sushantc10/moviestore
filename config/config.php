<?php

$servername = "ec2-107-20-211-10.compute-1.amazonaws.com";
$username = "nigmqslwjkfvbo";
$password = "8e171e1dfeb873a4deac17ab50804bbe4205df90b10facf90ca4e5557c49cee3";
$database = "d7sbvomc9bre6q";

$conn = new mysqli($servername,$username,$password,$database);

if($conn->connect_error){
	die('connection failedL').$conn->connect_error;
}
?>