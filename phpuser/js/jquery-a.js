$(document).ready(function(){ 
	$(".imgs").click( function(){
		if( $(".domain").attr("value") == ''){ 
			alert("����������");
			return;
		}
		$(".clearfix").html('<img src="img/40.gif" />');
		$(".clearfix").removeClass("removeClass");
		var ipns = $(".dChk input").get();//get inputs
		var domains = "";
		$.each( ipns, function(n,ele){//����
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
		 $(".chkNameRes").html( "<font color='red'> �������û���!</font>");
		}else{
			$.ajax({
			   type: "POST",
			   url: "query.php",
			   data: "t=chkname&user="+this.value,
			   success: function(msg){
				if( msg == 1){ 
					msg = "<font color='red'> �û����Ѵ��ڣ�</font>";
				}else if( msg == 2){
					msg = "<font color='red'> �û���λ������</font>";
				}else{ 
					msg = "<font color='green'> ��ϲ�����û���ע��</font>";}
				$(".chkNameRes").html( msg);
			   }
			}); 
		}
	});
});