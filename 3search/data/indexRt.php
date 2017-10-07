<?php
require('public.php');
@$k=$_REQUEST['kid']or die('{"code":1,"msg":"种类是必须的"}');
$sql="select * from indexinrt where kid=$k";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($rows);
?>