<?php
require_once "config/config.php";

////
$filters="";
$sort="";
if(isset($_REQUEST['langfilter']) && ($_REQUEST['langfilter'])!='' && isset($_REQUEST['movfilter']) && ($_REQUEST['movfilter'])!=''){
	$filters = "having FIND_IN_SET(".$_REQUEST['langfilter'].",langids)>0
				 and FIND_IN_SET(".$_REQUEST['movfilter'].",movids)>0  ";
}
else if(isset($_REQUEST['langfilter']) && ($_REQUEST['langfilter'])!='')
	$filters = "having FIND_IN_SET(".$_REQUEST['langfilter'].",langids)>0";
else if(isset($_REQUEST['movfilter']) && ($_REQUEST['movfilter'])!='')
	$filters = "having FIND_IN_SET(".$_REQUEST['movfilter'].",movids)>0 ";

if(isset($_REQUEST['sort']) && $_REQUEST['sort']!=''){
	$sort = "order by ".$_REQUEST['sort']."";
}

function getDbData($filters,$sort,$offset,$rowsperpage,$flag){
	$limit = '';
	
	if($flag == 1)
		$limit = "limit ".$offset.",".$rowsperpage."";
	return "SELECT
	movies.title AS moviename,
	description,
	GROUP_CONCAT(mov_genr.`value`) as genre,
	GROUP_CONCAT(mov_lang.`value`) as `language`,
	movie_length,
	movie_release_date,
	GROUP_CONCAT(mov_genr.id) as movids,
	GROUP_CONCAT(mov_lang.id) as langids
	FROM
		movies
	INNER JOIN relationship ON relationship.movie_id = movies.id
	LEFT JOIN category mov_lang ON mov_lang.id = relationship.category_id
	AND mov_lang.type = 'Language' 
	LEFT JOIN category mov_genr ON mov_genr.id = relationship.category_id
	AND mov_genr.type = 'Genre'
	GROUP BY movies.id
	".$filters."
	".$sort."
	".$limit."
	";
}


$result0 = $conn->query(getDbData($filters,$sort,'','',0)) or die($conn->error);
$numrows0 = $result0->num_rows;

////

$rowsperpage = 10;
$totalpages = ceil($numrows0 / $rowsperpage);

if (isset($_REQUEST['currentpage']) && is_numeric($_REQUEST['currentpage'])){
   // cast var as int
   $currentpage = (int) $_REQUEST['currentpage'];
} else {
   // default page num
   $currentpage = 1;
}

// if current page is greater than total pages...
if ($currentpage > $totalpages) {
   // set current page to last page
   $currentpage = $totalpages;
} // end if
// if current page is less than first page...
if ($currentpage < 1) {
   // set current page to first page
   $currentpage = 1;
} // end if

$offset = ($currentpage - 1) * $rowsperpage;

$result = $conn->query(getDbData($filters,$sort,$offset,$rowsperpage,1)) or die($conn->error);
$numrows = $result->num_rows;

$data="";

if($result->num_rows){
	$i = 1;
	while($myrow = $result->fetch_array(MYSQLI_ASSOC)){
		$data.= "<tr>";
		$data.=	"<td>".($i++)."</td>";
		$data.=	"<td>".$myrow['moviename']."</td>";
		$data.=	"<td>".$myrow['description']."</td>";
		$data.=	"<td>".$myrow['genre']."</td>";
		$data.=	"<td>".$myrow['language']."</td>";
		$data.=	"<td>".$myrow['movie_length']." Min</td>";
		$data.=	"<td>".$myrow['movie_release_date']."</td>";
		$data.= "</tr>";
	}

}else{
	$data="No Results Found";
}

/******  build the pagination links ******/
// range of num links to show
$range = 3;
$links = "";
// if not on page 1, don't show back links
if ($currentpage > 1) {
   // show << link to go back to page 1
   $links.= " <a href='#' onclick=loadPage('1')><<</a> ";
   // get previous page num
   $prevpage = $currentpage - 1;
   // show < link to go back to 1 page
   $links.= " <a href='#' onclick =loadPage('$prevpage')><</a> ";
} // end if 

// loop to show links to range of pages around current page
for ($x = ($currentpage - $range); $x < (($currentpage + $range) + 1); $x++) {
   // if it's a valid page number...
   if (($x > 0) && ($x <= $totalpages)) {
      // if we're on current page...
      if ($x == $currentpage) {
         // 'highlight' it but don't make a link
         $links.= " [<b>$x</b>] ";
      // if not current page...
      } else {
         // make it a link
         $links.= " <a href='#' onclick =loadPage('$x')>$x</a> ";
      } // end else
   } // end if 
} // end for

// if not on last page, show forward and last page links        
if ($currentpage != $totalpages && $totalpages > 0) {
   // get next page
   $nextpage = $currentpage + 1;
    // echo forward link for next page 
   $links.= " <a href='#' onclick =loadPage('$nextpage')>></a> ";
   // echo forward link for lastpage
   $links.= " <a href='#' onclick =loadPage('$totalpages')>>></a> ";
} // end if
/****** end build pagination links ******/

echo $data.'|'.$links;
?>