var nameReg=/^[0-9a-z]{6,10}$/;
var pwdReg=/^[0-9a-z]{6,10}$/;
var sub=true;//用户名是否存在
var sub1=false;//验证码
var sub2=false;//两次密码是否一致
var sub3=false;//阅读

//用户名正则验证，如通过，发送请求验证是否已存在
$("#uname").blur(function(){
    var u=uname.value;
    //var p=upwd.value;
    if(nameReg.test(u)){
        $("#un").html('用户名可用')
    }else{
        $("#un").html('用户名必须是数字或字母6-10位')
        return;
    }
    $.ajax({
        type:"GET",
        url:"data/reg-exist.php",
        data:{uname:u},
        success:function(data){
            console.log(data)
            $("#un").html(data.msg)
            if(data.code==3){
                sub=false;
            }else if(data.code==2)
            sub=true;
        },
        error:function(){
            alert("网络错误1")
        }
    })
})
//密码正则
$("#upwd").blur(function(){
    var p=upwd.value;
    if(pwdReg.test(p)){
        $("#up").html('密码符合规范')
    }else{
        $("#up").html('密码必须是数字或字母6-10位')
    }
})
$("#upwd2").blur(function(){
    var p=upwd.value;
    var p2=upwd2.value;
    if(p==p2){
        $("#up2").html('√').addClass('pp')
        sub2=true;
    }else{
        $("#up2").html('两次密码不一致').addClass('pp')
    }
})
//是否勾选注册协议
$("#agree").click(function(){
    if(agree.checked){
        sub3=true;
    }
})
//点击注册
$("#btn").click(function(){
    //console.log(agree.checked)
    var u=uname.value;
    var p=upwd.value;
    console.log(sub2,sub3)
    if(sub&&sub2&&sub3){
    $.ajax({
        type:"GET",
        url:"data/reg-insert.php",
        data:{uname:u,upwd:p},
        success:function(data){
            console.log(data)
            if(data.code==3){
                sessionStorage.setItem('uname',u)
                sessionStorage.setItem('upwd',p)
                setTimeout(function(){
                    location.href="../1index/index.html";
                },1000)
            }
        },
        error:function(){
            alert("网络错误2")
        }
    })
    }
})

