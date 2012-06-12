     function showApply(title,width,height,content){
        var win=new Ext.Window({
           title:title,
           width:width,
           height:height,
           closeAction:'hide',
           contentEl:'content',
           modal:true,
           buttons:[{
           		text:'申 请',
           		handler:function(){
           		 		if(ischeck){
           		 		   sf.submit();
           		 		}else{
           		 		   showMsg("该号码尚未进行验证，请先验证！");
           		 		}
           		}
           },{
           		text:'取 消',
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
           		text:'进入消费',
           		handler:function(){
           		       Ext.get("task").dom.value='buy';
           		       scoreForm.submit();	
           		}
           },{
           		text:'礼品回退',
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
           		text:'验 证',
           		handler:function(){
           		 		search();
           		 		if(msg=='ok'){
           		 		   win.hide();
           		 		}
           		}
           },{
           		text:'取 消',
           		handler:function(){
           		 		win.hide();
           		}
           }]
        });
       return win;
     }
     
      function showMsg(message){
       Ext.MessageBox.show({
	    title:'消息提示',
	    msg:message,
	    width:200,
	    height:100,
	    buttons:Ext.MessageBox.OK,
	    icon:Ext.MessageBox.INFO
	   });
     }
     
     function showInfo(){
       Ext.MessageBox.confirm('提示消息','该号码已申请积分，是否进入消费',function(btn){
          if(btn=='yes'){
              location.href="/crm/admin/present.do?task=pay";
          }
       });
     }
    