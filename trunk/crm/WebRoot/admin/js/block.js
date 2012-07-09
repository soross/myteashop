function fieldtype(type){
		if(type=="text"||type=="textarea"){
			document.getElementById('text_show').style.display = 'block';
		}else{
			document.getElementById('text_show').style.display = 'none';
		}
		
		if(type=="textarea"){
			document.getElementById('textarea_show').style.display = 'block';
		}
		else{
			document.getElementById('textarea_show').style.display = 'none';
		}
}

function islink(value){
		if(value=="1"){
			document.getElementById('text_show').style.display = 'block';
		}else{
			document.getElementById('text_show').style.display = 'none';
		}
}

//Ä£Äâconfirm
 function ShowConfirm(title,content,url){
	var pop=new Popup({ contentType:3,isReloadOnClose:false,width:340,height:80});
	pop.setContent("title",title);
	pop.setContent("confirmCon",content);
	pop.setContent("callBack",ShowCallBack);
	pop.build();
	pop.show();
	function ShowCallBack(){
		window.location=url
	}
}

//Ä£ÄâIframe
 function ShowIframe(title,url,w,h){
       var pop=new Popup({ contentType:1,scrollType:'no',isReloadOnClose:false,width:w,height:h});
       pop.setContent("contentUrl",url);
       pop.setContent("title",title);
       pop.build();
       pop.show();
}


function checkAll(box1) {
    var ids = document.getElementsByName("id[]");
	if (ids != null) {
		for (i=0; i<ids.length; i++) {
			var obj = ids[i];
			obj.checked = box1.checked;
		}
	}
}