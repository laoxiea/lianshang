<?php
require('public.php');
@$kw=$_REQUEST['kw']or die('{"code":1,"msg":"种类是必须的"}');
$sql="select count(pid) as page from productlist where pname like '%$kw%'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
echo json_encode($row);
?>