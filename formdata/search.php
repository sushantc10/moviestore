<?php
require_once "./config/config.php";



$language = "SELECT id as langid, `value` as language FROM `category` where `type` = 'Language' ORDER BY `value`";
$result1 = $conn->query($language) or die($conn->error);
$numrows1 = $result1->num_rows;


$language = "SELECT id as genreid,`value` as genre FROM `category` where `type` = 'Genre' ORDER BY `value`";
$result2 = $conn->query($language) or die($conn->error);
$numrows2 = $result2->num_rows;

if($result1->num_rows){
	$language = "";
	while($myrow = $result1->fetch_array(MYSQLI_ASSOC)){
		$language .="<option value=".$myrow['langid'].">".$myrow['language']."</option>";
	}

}

if($result2->num_rows){
	$genres = '';
	while($myrow = $result2->fetch_array(MYSQLI_ASSOC)){
		$genres.='<option value='.$myrow['genreid'].'>'.$myrow['genre'].'</option>';
	}
}



?>