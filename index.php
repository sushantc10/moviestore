<?php
require_once "config/config.php";
require_once "formdata/search.php";

?>
<html>
	<head>
		<title>Movies</title>
	</head>
	<style>
		table,th,td{
			border:1px solid black
		}
		table.movie_list1{
			height:60px;
		}
		table{
			table-layout: fixed;	
			width:70%;
			margin-left:300px;
		}
		#pagination{
			text-align: center;
		}
	</style>
	<body>
		<form method="post">
			<table>
				<tr>
					<td><label>Filter By:</label></td>
				</tr>
				<tr>
					<td><label>Language:</label></td>
					<td>
						<select name="langfilter" onchange="update_data()">
							<option value="">ALL</option>	
							<?php echo $language;?>
						</select>
					</td>
				</tr>
				<tr>
					<td><label>Genre:</label></td>
					<td>
						<select name="movfilter" onchange="update_data()">
							<option value="">ALL</option>
							<?php echo $genres;?>
						</select>
					</td>
				</tr>
				<tr>
					<td><label>Sort:</label></td>
					<td>
						<select name="sort" onchange="update_data()">
							<option value=""></option>
							<option value="5">Length</option>
							<option value="6">Release Date</option>
						</select>
					</td>
				</tr>
			</table>
		</form>
		<div id="pagination"></div>
		<table id="movie_list" class="movie_list1" style="">
			<thead>
				<th>Sr. No</th>
				<th>Movie name</th>
				<th>Description</th>
				<th>Genre</th>
				<th>Language</th>
				<th>Length</th>
				<th>Release Date</th>
			</thead>
			<tbody>
			</tbody>
		</table>
	</body>
</html>
<script type="text/javascript">
	function ajaxRequest(param,data='',pageData=''){
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function(){
			if(this.readyState == 4 && this.status == 200){
				var display_ = document.getElementById(param).getElementsByTagName('tbody')[0];
				var paginationData = document.getElementById('pagination');
				var finalResult = this.responseText.split("|");
				display_.innerHTML=finalResult[0];
				paginationData.innerHTML=finalResult[1];
			}
		}
		var postData="";
		var page = "";
		if(data)
			postData = data;
		if(pageData)
			page = pageData;

		xhttp.open("GET","getMovies.php?"+postData+'&currentpage='+page,true);
		xhttp.send();
	}
	window.onload = function(){
		ajaxRequest('movie_list');
	}
	function getFormData(){
		var form = document.querySelector('form');
		return new URLSearchParams(new FormData(form)).toString();
	}
	function update_data(){
		var data =getFormData();
		ajaxRequest('movie_list',data);		
	}
	function loadPage(page){
		ajaxRequest('movie_list',getFormData(),page);
	}
</script>