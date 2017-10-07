<?php
require('public.php');
@$kw=$_REQUEST['kw']or die('{"code":1,"msg":"关键字是必须的"}');
@$k=$_REQUEST['kind']or die('{"code":2,"msg":"种类是必须的"}');
if($k==1){
    $sql="select count(pid) as page from productlist where color like '%$kw%'";
}else if($k==2){
    $sql="select count(pid) as page from productlist where place like '%$kw%'";
}else if($k==3){
    $sql="select count(pid) as page from productlist where pseason like '%$kw%'";
}
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($rows);
?>