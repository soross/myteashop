	function DeleteTr(trid){
		if(confirm("确定要删除图片"+(parseInt(trid)+1)+"吗?") == true){
			var tr = document.getElementById(trid);
			var testBody = document.getElementById("tb");
			var currRowIndex=event.srcElement.parentNode.parentNode.rowIndex;
	        testBody.deleteRow(currRowIndex);//行的索引...
        }
	}
	function subdata(){
	  	var tab=document.getElementById("tb");
		var pos=tab.rows.length;//默认位置为最后一行

		var tr1=tab.insertRow(pos);
		var td1=tr1.insertCell();
		tr1.id = tab.rows.length-1;
		//DeleteTr
		td1.innerHTML= "图片"+(tab.rows.length)+"：<input type='file' name='user_upload_file[]' /><input type='button' name='button"+tr1.id+"' value='删除' onClick=\"DeleteTr('"+tr1.id+"');\">";
  }