<?php
require('public.php');
@$kw=$_REQUEST['kw']or die('{"code":1,"msg":"种类是必须的"}');
@$page=$_REQUEST['pageno'];
$page=($page-1)*12;
$sql="select * from productlist where pname like '%$kw%' limit $page,12";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($rows);
?>