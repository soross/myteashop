     function showApply(title,width,height,content){
        var win=new Ext.Window({
           title:title,
           width:width,
           height:height,
           closeAction:'hide',
           contentEl:'content',
           modal:true,
           buttons:[{
           		text:'�� ��',
           		handler:function(){
           		 		if(ischeck){
           		 		   sf.submit();
           		 		}else{
           		 		   showMsg("�ú�����δ������֤��������֤��");
           		 		}
           		}
           },{
           		text:'ȡ ��',
           		handler:function(){
           		 		win.hide();
           		}
           }]
        });
       return win;
     }
     
     function showWin2(title,width,height,content){
        var win=new Ext.Window({
           title:title,
           width:width,
           height:height,
           closeAction:'hide',
           contentEl:'content',
           modal:true,
           buttons:[{
           		text:'��������',
           		handler:function(){
           		       Ext.get("task").dom.value='buy';
           		       scoreForm.submit();	
           		}
           },{
           		text:'��Ʒ����',
           		handler:function(){
           		 	   Ext.get("task").dom.value='changeList';
           		       scoreForm.submit();	
           		}
           }]
        });
       return win;
     }
     
     function showWin3(title,width,height,content){
        var win=new Ext.Window({
           title:title,
           width:width,
           height:height,
           closeAction:'hide',
           contentEl:'content',
           modal:true,
           buttons:[{
           		text:'�� ֤',
           		handler:function(){
           		 		search();
           		 		if(msg=='ok'){
           		 		   win.hide();
           		 		}
           		}
           },{
           		text:'ȡ ��',
           		handler:function(){
           		 		win.hide();
           		}
           }]
        });
       return win;
     }
     
      function showMsg(message){
       Ext.MessageBox.show({
	    title:'��Ϣ��ʾ',
	    msg:message,
	    width:200,
	    height:100,
	    buttons:Ext.MessageBox.OK,
	    icon:Ext.MessageBox.INFO
	   });
     }
     
     function showInfo(){
       Ext.MessageBox.confirm('��ʾ��Ϣ','�ú�����������֣��Ƿ��������',function(btn){
          if(btn=='yes'){
              location.href="/crm/admin/present.do?task=pay";
          }
       });
     }
    