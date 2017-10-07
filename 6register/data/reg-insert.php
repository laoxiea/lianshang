<?php
require('public.php');
@$u=$_REQUEST["uname"]or die('{"code":1,"msg":"用户名是必须的"}');
@$p=$_REQUEST["upwd"]or die('{"code":2,"msg":"密码是必须的"}');
$sql="insert into user values(null,'$u',$p)";
$result=mysqli_query($conn,$sql);
if($result){
	$r=mysqli_affected_rows($conn);
	if($r=1){
		echo '{"code":3,"msg":"注册成功"}';
	}else{
	    echo '{"code":4,"msg":"注册失败"}';
	};
};
?>