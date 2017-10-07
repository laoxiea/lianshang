//轮播图
$.ajax({
    type:"GET",
    url:"data/slider.php",
    success:function(data){
        var arrSlider=[]
        for(var a of data){
            arrSlider.push(a.pic)
        }
        slider(arrSlider)
    },
    error:function(){
        alert("网络错误")
    }
})

function slider(imgs){
//$(function lunbo(imgs){
    /*广告图片数组*/
    //var imgs=[
    //    "image/banner_01.jpg",
    //    "image/banner_02.jpg",
    //    "image/banner_03.jpg",
    //    "image/banner_04.jpg",
    //    "image/banner_05.jpg"
    //];
    if(imgs.length>30)
    return;
    const LIWIDTH=750,
        INTERVAL=1000,
        WAIT=1000;
    var $ulImgs=$('#imgs'),
        $ulIdxs=$('#indexs');
    //设置$ulImgs的内容
    $ulImgs.html(
        //`<li><img src="${imgs.join('"></li><li><img src="')}"></li>`+
        //`<li><img src="${imgs[0]}"></li>`
        `<li><img src="${imgs.join('"></li><li><img src="')}"></li>`+`<li><img src="${imgs[0]}"></li>`
    ).css('width',LIWIDTH*(imgs.length+1))
    $ulIdxs.html(()=>{
        var str='';
        for(var i=1;i<=imgs.length;i++){
            str+=`<li>${i}</li>`
        }
        return str;
    })
        .children(':first').addClass('hover');
    var moved=0;
    var timer=null;
    var canMove=true;
    function move(){
        if(canMove){
            timer=setTimeout(()=>{
                moved++;
                $ulImgs.delay(WAIT).animate({
                    left:-LIWIDTH*moved
                },INTERVAL,()=>{
                    if(moved<imgs.length){
                        $ulIdxs.children(`:eq(${moved})`)
                            .addClass('hover').siblings().removeClass('hover')
                    }else{
                        moved=0;
                        $ulImgs.css('left',0);
                        $ulIdxs.children(':first')
                            .addClass("hover")
                            .siblings()
                            .removeClass("hover")
                    }
                    move()
                })
            },WAIT)
        }
    }
    move();
    $('#slider').hover(
        ()=>{
            clearTimeout(timer);
            timer=null;
            canMove=false
        },
        ()=>{
            canMove=true;
            move()
        }
    )
    $ulIdxs.on('mouseover','li',e=>{
        var $li=$(e.target);
        $li.addClass('hover').siblings().removeClass('hover');
        moved=$li.index();
        $ulImgs.stop(true).animate({
            left:-LIWIDTH*moved
        },INTERVAL)
    })
}
//==================搜索框===================
var toTop=document.getElementById('search-top');
window.onscroll=function(){
    if(document.body.scrollTop>500){
        toTop.style.opacity=1;
        toTop.style.zIndex=100;
    }else{
        toTop.style.opacity=0;
        toTop.style.zIndex=-1;
    }
}
//楼层切换
$('#floorTitle1 li').mouseenter(function(){
    var aa=this.className;
    var bb=`div.${aa}`;
    //console.log(bb);
    $(bb).addClass('show').removeClass('hide').siblings().addClass('hide').removeClass('show');
})

$('#floorTitle2 li').mouseenter(function(){
    var cc=this.className;
    var dd=`div.${cc}`;
    $(dd).addClass('show').removeClass('hide').siblings().addClass('hide').removeClass('show');
})

