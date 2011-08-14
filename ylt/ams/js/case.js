$(document).ready(function(){
	$("#classCodeSelect").change(function(){
		alert($('#classCodeSelect').val());
		if($('#classCodeSelect').val()!=-1){
			$.ajax({
			type: "POST",
			url:"action/action.php",
			data: "task=getProdListByClassCode&prodClassCode="+$('#classCodeSelect').val(),
			success: function(msg){
				alert(unescape(msg));
				if(msg=="ERROR"){
					$('div#resule').hide();
					$('div#ajaxResule').html(msg);
					$('div#ajaxResule').show();
				}else{
					$('#prodidSelect').html(unescape(msg));
				}
			}
		});
		}
	});
});