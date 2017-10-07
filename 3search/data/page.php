<?php
require('public.php');
$sql="select count(pid) as page from productlist";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
echo json_encode($row);
?>