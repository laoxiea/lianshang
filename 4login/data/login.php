<?php
require('public.php');
@$u=$_REQUEST["uname"]or die('{"code":1,"msg":"用户名是必须的"}');
@$p=$_REQUEST["upwd"]or die('{"code":2,"msg":"密码是必须的"}');
$sql="select * from user where uname='$u' and upwd=$p";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
if($row){
    echo '{"code":3,"msg":"登录成功"}';
}else{
    echo '{"code":4,"msg":"用户名或密码错误"}';
}
?>