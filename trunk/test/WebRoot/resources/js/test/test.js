var ev = new fml.Ev();

function getMenu(id) {
	alert(id);
	$.ajax( {
		url : domain+'/test.shtml',
		type : 'POST',
		dataType : 'json',
		cache : false,
		async : false,
		data : ( {id : id}),
		timeout : 1000,
		error : function()
		{
			alert('��ѯʧ��');
		},
		success : function(json) 
		{
			if(json.code ==1)
			{
				alert('��γ���');
			}
			else
			{
				if(json.flag == 1)
				{
					alert("��ѯ�쳣");
				}
				else
				{
					var xml = "id: "+json.ID+"<br>";
					xml = xml + "name: "+json.NAME+"<br>";
					xml = xml +"url: "+json.URL+"<br>";
					xml = xml +"pid: "+json.PID+"<br>";
					document.getElementById('Menu').innerHTML = xml;
				}
			}
		}
	});
 }