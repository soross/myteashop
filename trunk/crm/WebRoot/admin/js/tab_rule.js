		var i = 1;
		var textValue = 0;
		function showDIV(temp,index){
			if(temp.value=="ARPU"){
				var tr = document.getElementById("tr"+index);
				
				tr.deleteCell(0) ;
				tr.deleteCell(0) ;
				tr.deleteCell(0) ;
				
				var td1 = tr.insertCell();	
				td1.innerHTML="����<select id='type' name='type' style='width:50px;' onchange='showDIV(this,"+ index +");'><option value='ARPU'>ARPU</option><option value='����'>����</option></select>";
					
				var td2 = tr.insertCell();
				td2.id = "arpu"+index;				
				td2.innerHTML="	&nbsp;ARPU����<input type='text'  maxlength='5' id='startvalue' name='startvalue' style='width:40;' onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}'/><input type='hidden' id='endvalue' name='endvalue' value='-1'>";
				
				var td3 = tr.insertCell();
				td3.innerHTML = "&nbsp;&nbsp;<input type='button' value='ɾ��' onclick='delTr("+index+")'/><br>";
				
			}else{				
				var tr = document.getElementById("tr"+index)
				
				tr.deleteCell(0) ;			
				tr.deleteCell(0) ;
				tr.deleteCell(0) ;
				
				var td1 = tr.insertCell();	
				td1.innerHTML="����<select id='type' name='type' style='width:50px;' onchange='showDIV(this,"+ index +");'><option value='����'>����</option><option value='ARPU'>ARPU</option></select>";
			
				var td2 = tr.insertCell();
				td2.style.display = "block";
				td2.id="score"+index;
				td2.innerHTML="&nbsp;���ִ��ڵ��� <input type='text' maxlength='5' id='startvalue' name='startvalue' style='width:40;' onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}' />&nbsp;С��&nbsp;<input type='text' id='endvalue'   maxlength='5' name='endvalue' style='width:40;' onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}'/>";
				
				var td3 = tr.insertCell();
				td3.innerHTML = "&nbsp;&nbsp;<input type='button' value='ɾ��' onclick='delTr("+index+")'/>";
				
			}	
		}
		
		function addTr(){			
			var tab = document.getElementById("expTab");
			
			var tr= tab.insertRow(tab.rows.length);
			tr.id = "tr"+i;
			
			var td1 = tr.insertCell();	
			td1.innerHTML="����<select id='type' name='type' style='width:50px;' onchange='showDIV(this,"+ i +");'><option value='����'>����</option><option value='ARPU'>ARPU</option></select>";
			
			var td2 = tr.insertCell();
			td2.style.display = "block";
			td2.id="score"+i;
			td2.innerHTML="&nbsp;���ִ��ڵ��� <input type='text' maxlength='5' id='startvalue' name='startvalue' style='width:40;' onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}' />&nbsp;С��&nbsp;<input type='text' id='endvalue'  maxlength='5' name='endvalue' style='width:40;' onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}' />";
			
			var td3 = tr.insertCell();
			td3.innerHTML = "&nbsp;&nbsp;<input type='button' value='ɾ��' onclick='delTr("+i+")'/>";
			i++;			
		}
		
		function delTr(trIndex){
			var getTr = document.getElementById("tr"+trIndex);
			var tab = document.getElementById("expTab");
			tab.deleteRow(getTr.rowIndex);
			 
			//var tab=document.getElementById("tab");
		    //var element=window.event.srcElement;
		    //while(element.tagName!="TR"){
		    //    element=element.parentNode;
		    //}     
		    //tab.deleteRow(element.rowIndex);
		}
				
		
