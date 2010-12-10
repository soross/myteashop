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
			alert('查询失败');
		},
		success : function(json) 
		{
			if(json.code ==1)
			{
				alert('入参出错');
			}
			else
			{
				if(json.flag == 1)
				{
					alert("查询异常");
				}
				else
				{
//					var xml = "id: "+json.ID+"<br>";
//					xml = xml + "name: "+json.NAME+"<br>";
//					xml = xml +"url: "+json.URL+"<br>";
//					xml = xml +"pid: "+json.PID+"<br>";
					var xml = getMenuList(json.LIST,0);
					alert(xml);
					document.getElementById('Menu').innerHTML = xml;
				}
			}
		}
	});
 }

function getMenuList(list,id)
{
	var xml = '';
	   for(var i =0;i<list.length;i++)
       {
		   var str = '';
		   for(var j =0;j<id;j++)
		   {
			   str = str+'----';
		   }
		   xml = xml+ str +"id: "+list[i].ID+",name: "+list[i].NAME+",url: "+list[i].URL+",pid: "+list[i].PID+"<br>";
		   if(list[i].SMENU.length !=0)
           {
        	   alert(list[i].SMENU.length);
        	   xml = xml + getMenuList(list[i].SMENU,id+1);
           }
               
       }
	   return xml;
}