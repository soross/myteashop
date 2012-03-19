$(document).ready(function(){ 
	$(".imgs").click( function(){
		if( $(".domain").attr("value") == ''){ 
			alert("请输入域名");
			return;
		}
		$(".clearfix").html('<img src="img/40.gif" />');
		$(".clearfix").removeClass("removeClass");
		var ipns = $(".dChk input").get();//get inputs
		var domains = "";
		$.each( ipns, function(n,ele){//遍历
			if( ele.checked){
				domains += "|" + ele.value;
			}
		});
		$.ajax({
		   type: "POST",
		   url: "query.php",
		   data: "ext="+domains+"&domain="+$(".domain").attr("value"),
		   success: function(msg){
			$(".clearfix").html( msg);
		   }
		}); 
	});

	$(".username").blur( function(){
		if( this.value == ""){
		 $(".chkNameRes").html( "<font color='red'> 请输入用户名!</font>");
		}else{
			$.ajax({
			   type: "POST",
			   url: "query.php",
			   data: "t=chkname&user="+this.value,
			   success: function(msg){
				if( msg == 1){ 
					msg = "<font color='red'> 用户名已存在！</font>";
				}else if( msg == 2){
					msg = "<font color='red'> 用户名位数错误！</font>";
				}else{ 
					msg = "<font color='green'> 恭喜！此用户可注册</font>";}
				$(".chkNameRes").html( msg);
			   }
			}); 
		}
	});
});