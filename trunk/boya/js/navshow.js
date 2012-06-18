$(function(){
    $("#menu li").hover(
    function(){
        $("div",$(this)).show();
		$(this).addClass("hover");
        },function(){
            $("div",$(this)).hide(); 
			$(this).removeClass("hover");
        }
    );
});
