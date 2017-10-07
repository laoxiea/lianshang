<?php
require('public.php');
@$page=$_REQUEST['pageno'];
$page=($page-1)*12;
$sql="select * from productlist order by price limit $page,12";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($rows);
?>