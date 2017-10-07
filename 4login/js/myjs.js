$("#submit").click(function(){
    var u=uname.value;
    var p=upwd.value;
    $.ajax({
        type:"GET",
        url:"data/login.php",
        data:{uname:u,upwd:p},
        success:function(data){
            console.log(data)
            if(data.code==4){
                alert('账号或密码错误')
            }
            if(data.code==3){
                $("#inner").html(`${data.msg}3秒后跳转`).css('display',"block");
                var t=3;
            var timer=setInterval(function(){
                t--;
                $("#inner").html(`${data.msg}${t}秒后跳转`).css('display',"block");
                if(t<=0){
                    clearInterval(timer);
                    timer=null;
                    location.href='../1index/index.html';
                }
            },1000);
            $('#form').css('display',"none")
            $('#login ul').css('display',"none")
                //保存用户数据
                sessionStorage.setItem('uname',u)
                sessionStorage.setItem('upwd',p)
            }
        },
        error:function(){
            alert("网络错误")
        }
    })
})
