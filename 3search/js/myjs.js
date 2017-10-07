//分类搜索--
var aftpage=1
function kindSearch(aftpage){
    $.ajax({
        type:"GET",
        data:{kw:kws,kind:skind,pageno:aftpage},
        url:"data/search.php",
        success:function(data){
            //console.log(data)
            if(typeof data=='object') {
                var html = '';
                for (var aa of data) {
                    html += `<li>
                <a href="">
                <img src="${aa.pic}" alt=""/>
                </a>
                <p>¥${aa.price}元</p>
                <h3>${aa.pname}</h3>
                <h4>${aa.pbrand}</h4>
                <a href="">购买</a>
                <a href="">收藏</a>
                </li>`
                }
                $("#shopDetails>ul").html(html)
            }
        },
        error:function(){
            alert("网络错误")
        }
    })
}
//var kws
//颜色
$("#colorSty").on('click','li',function(e){
    //var kw='黑色';
    kws=$(e.target).html()
    orderor=4
    aftpage=1
    //console.log(kw)
    skind=1
    kindSearch(aftpage)
    pageonloador()
})
//产地
$("#placeSty").on('click','li',function(e){
    kws=$(e.target).html()
    aftpage=1
    orderor=4
    skind=2
    kindSearch(aftpage)
    pageonloador()
})
//季节
$("#seasonSty").on('click','li',function(e){
    kws=$(e.target).html()
    aftpage=1
    orderor=4
    skind=3;
    kindSearch(aftpage)
    pageonloador()
})

//搜索框搜索
$("#btnsearch").click(function(){
    orderor=2
    var kwd=mainSearch.value;

    searchpage=1;
    pageaftsearch(1)
    searchtotal(1)
})
//搜索框搜索商品列表
function searchtotal(searchpage){
    var kwd=mainSearch.value;
    $.ajax({
        type:"GET",
        data:{kw:kwd,pageno:searchpage},
        url:"data/search-total.php",
        success:function(data){
            var html='';
            for(var aa of data){
                html+=`<li>
                <a href="">
                <img src="${aa.pic}" alt=""/>
                </a>
                <p>¥${aa.price}元</p>
                <h3>${aa.pname}</h3>
                <h4>${aa.pbrand}</h4>
                <a href="">购买</a>
                <a href="">收藏</a>
                </li>`
            }
            $("#shopDetails>ul").html(html)
        },
        error:function(){
            alert("网络错误")
        }
    })
}
//动态页码
//总页码
function pageonload(){
    $.ajax({
        type:"GET",
        url:"data/page.php",
        success:function(data){
            console.log(data)
            var pages=parseInt(data.page/12)+1;
            var html='';
            for(var i=1;i<=pages;i++){
                html+=`<li><a class="noactive" href="">${i}</a></li>`
            }
            $("#page>ul").html(html).children().eq(0).children().addClass('active')
        },
        error:function(){
            alert("网络错误")
        }
    })
}
pageonload()
//分类排序后的页码加载
function pageonloador(){
    $.ajax({
        type:"GET",
        data:{kw:kws,kind:skind},
        url:"data/pageorderby.php",
        success:function(data){
            console.log(data)
            var pages=parseInt(data[0].page/12)+1;
             console.log(pages)
            var html='';
            for(var i=1;i<=pages;i++){
                html+=`<li><a class="noactive" href="">${i}</a></li>`
            }
            $("#page>ul").html(html).children().eq(0).children().addClass('active')
        },
        error:function(){
            alert("网络错误")
        }
    })
}
//搜索后的页码加载
function pageaftsearch(){
    var kws=mainSearch.value;
    $.ajax({
        type:"GET",
        data:{kw:kws},
        url:"data/pageaftsearch.php",
        success:function(data){
            console.log(data)
            var pages=parseInt(data.page/12)+1;
            console.log(pages)
            var html='';
            for(var i=1;i<=pages;i++){
                html+=`<li><a class="noactive" href="">${i}</a></li>`
            }
            $("#page>ul").html(html).children().eq(0).children().addClass('active')
        },
        error:function(){
            alert("网络错误")
        }
    })
}
//商品列表加载
function listno(page) {
    $.ajax({
        type: "GET",
        data: {pageno: page},
        url: "data/productlist.php",
        success: function (data) {
            //console.log(data)
            if (typeof data == 'object') {
                var html = '';
                for (var aa of data) {
                    html += `<li>
                <a href="">
                <img src="${aa.pic}" alt=""/>
                </a>
                <p>¥${aa.price}元</p>
                <h3>${aa.pname}</h3>
                <h4>${aa.pbrand}</h4>
                <a href="">购买</a>
                <a href="">收藏</a>
                </li>`
                }
                $("#shopDetails>ul").html(html)
            }
        },
        error: function () {
            alert("网络错误")
        }
    })
}
listno(1)
//按价格排序后的所有商品列表
function listnoorder(page) {
    $.ajax({
        type: "GET",
        data: {pageno: page},
        url: "data/searchorderby.php",
        success: function (data) {
            //console.log(data)
            if (typeof data == 'object') {
                var html = '';
                for (var aa of data) {
                    html += `<li>
                <a href="">
                <img src="${aa.pic}" alt=""/>
                </a>
                <p>¥${aa.price}元</p>
                <h3>${aa.pname}</h3>
                <h4>${aa.pbrand}</h4>
                <a href="">购买</a>
                <a href="">收藏</a>
                </li>`
                }
                $("#shopDetails>ul").html(html)
            }
        },
        error: function () {
            alert("网络错误")
        }
    })
}
//页码加载页面内容
var orderor=0;
$("#page ul").on("click","a",function(e){
    e.preventDefault();
    var pageinner=$(e.target).html()
    aftpage=$(e.target).html()
    //console.log(pageinner)
    $(e.target).addClass('active').parent().siblings().children().removeClass("active")
    if(orderor==0){
        listno(pageinner)//默认总排序
    }else if(orderor==1){
        //pageonorder(pageinner)
        listnoorder(pageinner)//按价格排序后
    }else if(orderor==2){
        searchtotal(pageinner)//搜索框搜索后
    }else if(orderor==4){
        kindSearch(pageinner)//按分类排序后
    }
})
//排序
$("#orderby").on('click','li',function(e){
    console.log($(e.target).html())
    if($(e.target).html()=='价格'){
        orderor=1
         //console.log(orderor)
        listnoorder(1)
        pageonload()
    }else if($(e.target).html()=='综合'){
        orderor=0
        listno(1)
        pageonload()
    }
})
//排序后显示换页物品

