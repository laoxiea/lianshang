//中间楼层发送请求共用
function inKind(num,sel){
$.ajax({
    type:"GET",
    url:"data/indexIn.php",
    data:{kid:num},
    success:function(data){
        var html=''
        //console.log(data)
        for(var i=0;i<data.length;i++){
            html+=`<a href="">
            <p class="mask">
            <span>${data[i].pname}</span>
            <b>${data[i].price}/米</b>
            </p>
            <img src="${data[i].pic}">
            </a>`
        }
        $(sel).html(html)
    },
    error:function(){
        alert("网络错误")
    }
})
}
//页面加载后直接显示第一楼
inKind(10,"#change1")
$("li.li1").mouseenter(function(){
    inKind(10,"#change1")
})
$("li.li2").mouseenter(function(){
    inKind(20,"#change2")
})
$("li.li3").mouseenter(function(){
    inKind(30,"#change3")
})
inKind(40,"#change4")
$("li.li4").mouseenter(function(){
    inKind(40,"#change4")
})
$("li.li5").mouseenter(function(){
    inKind(50,"#change5")
})
$("li.li6").mouseenter(function(){
    inKind(60,"#change6")
})

//右侧楼层共用
function rtKind(num,sel){
    $.ajax({
        type:"GET",
        url:"data/indexRt.php",
        data:{kid:num},
        success:function(data){
            //console.log(data[0])
               var html=`<a href="">
                            <p class="mask">
                                <span>${data[0].pname}</span>
                                <b>${data[0].price}/米</b>
                            </p>
                            <img src="${data[0].pic}">
                        </a>`
            $(sel).html(html)
        },
        error:function(){
            alert("网络错误")
        }
    })
}
rtKind(70,"#change1+li")
$("li.li1").mouseenter(function(){
    rtKind(70,"#change1+li")
})
$("li.li2").mouseenter(function(){
    rtKind(80,"#change2+li")
})
$("li.li3").mouseenter(function(){
    rtKind(90,"#change3+li")
})
rtKind(100,"#change4+li")
$("li.li4").mouseenter(function(){
    rtKind(100,"#change4+li")
})
$("li.li5").mouseenter(function(){
    rtKind(110,"#change5+li")
})
$("li.li6").mouseenter(function(){
    rtKind(120,"#change6+li")
})
//第三楼
$.ajax({
    type:"GET",
    url:"data/thirdfl.php",
    success:function(data){
        console.log(data.length)
        if(data.length>20)
        return;
        var html=''
        for(var obj of data){
            html+=`<li>
                        <a href="">
                            <dl>
                                <dt><img src="${obj.picb}" alt=""/></dt>
                                <dd class="lf"><img src="${obj.pics}" alt=""/></dd>
                                <dd class="rt">${obj.pname}</dd>
                            </dl>
                        </a>
                    </li>`
        }
        $(".last>ul.lf").html(html)
    },
    error:function(){
        alert("网络错误")
    }
})