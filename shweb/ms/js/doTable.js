	function DeleteTr(trid){
		if(confirm("ȷ��Ҫɾ��ͼƬ"+(parseInt(trid)+1)+"��?") == true){
			var tr = document.getElementById(trid);
			var testBody = document.getElementById("tb");
			var currRowIndex=event.srcElement.parentNode.parentNode.rowIndex;
	        testBody.deleteRow(currRowIndex);//�е�����...
        }
	}
	function subdata(){
	  	var tab=document.getElementById("tb");
		var pos=tab.rows.length;//Ĭ��λ��Ϊ���һ��

		var tr1=tab.insertRow(pos);
		var td1=tr1.insertCell();
		tr1.id = tab.rows.length-1;
		//DeleteTr
		td1.innerHTML= "ͼƬ"+(tab.rows.length)+"��<input type='file' name='user_upload_file[]' /><input type='button' name='button"+tr1.id+"' value='ɾ��' onClick=\"DeleteTr('"+tr1.id+"');\">";
  }