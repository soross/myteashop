	/*自定义焦点图*/
//a,b,c分类代表三个ID
//times代码间隔时间差
function focusjs(a,b,c,d,times,nums,imgheight) {
    var xindex = 0;
    var xuweiimg;
    var $xuwei = $('#'+a)
    //$xuwei.css("opacity", "0.9")
    //一，//光标滑过
    $xuwei.mouseover(function() {
        xindex = $xuwei.index(this);
        ximg(xindex);
    }).eq(0).mouseover();
    //二，//动作
    $('#'+b).hover(function() {clearInterval(xuweiimg)}, function() {
    xuweiimg = setInterval(function() {
    ximg(xindex)
    xindex++
    if (xindex == nums) { xindex = 0 }}, times)}).trigger("mouseleave");
    //三，//滚动展示方式   也可以淡入淡出
    function ximg(i) {
        $('#' + c).stop(true, false).animate({ top: -i * imgheight }, 200);
        $xuwei.eq(i).addClass('on').siblings().removeClass('on');
    }
}