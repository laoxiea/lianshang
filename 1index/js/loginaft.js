var u=sessionStorage.getItem('uname');
if(u){
    $("#topHead").html(`<li>欢迎回来&nbsp;&nbsp; <span style="color: #e4393c">${u}</span></li>
        <li class="exit"><a href="">退出</a></li>
    `)
}
$("#topHead").on("click","li.exit",function(){
    sessionStorage.removeItem('uname');
    sessionStorage.removeItem('upwd');
    location.href='index.html';
})

