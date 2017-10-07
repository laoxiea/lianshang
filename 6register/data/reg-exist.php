<?php
require('public.php');
@$u=$_REQUEST["uname"]or die('{"code":1,"msg":"用户名是必须的"}');
$sql="select * from user where uname='$u'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
if($row==null){
    echo'{"code":2,"msg":"用户名可用"}';
}else{
    echo '{"code":3,"msg":"用户名已存在"}';
}
?>