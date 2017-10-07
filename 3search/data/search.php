<?php
require('public.php');
@$kw=$_REQUEST['kw']or die('{"code":1,"msg":"关键字是必须的"}');
@$k=$_REQUEST['kind']or die('{"code":2,"msg":"种类是必须的"}');
@$page=$_REQUEST['pageno'];
$page=($page-1)*12;
if($k==1){
    $sql="select * from productlist where color like '%$kw%' limit $page,12";
}else if($k==2){
    $sql="select * from productlist where place like '%$kw%' limit $page,12";
}else if($k==3){
    $sql="select * from productlist where pseason like '%$kw%' limit $page,12";
}
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($rows);
?>