function $(objID) {
	return document.getElementById(objID);
}

function pagecheck(turl,ext){
    var inputs = document.getElementsByTagName('input');

    for (var i = 0; i < inputs.length; i++) {
      var input = inputs[i];

      if (input.type == "text" && input.name == "custompage" && input.value != "") {

      	window.location=turl+input.value+ext;
      }
		}
}

function show_curtype(num){
  if(curtype = $("type"+num)){
    curtype.className +=' selected_type';
  }
}

function nav_on(num){
  if(curtype = $("nav_"+num)){
    curtype.className +=' nav_on';
  }
}

function JSAddFavorite(){
	if ( window.sidebar && "object" == typeof( window.sidebar ) && "function" == typeof( window.sidebar.addPanel ) ){
  	//  firefox
		window.sidebar.addPanel( document.title, document.location.href, '' );
	}else if ( document.all && "object" == typeof( window.external ) ){
    //  ie
    window.external.addFavorite( document.location.href, document.title );
  }
}


/*ȥ�����߿�*/
window.onload=function()
{
 for(var ii=0; ii<document.links.length; ii++)
 document.links[ii].onfocus=function(){this.blur()}
}

function toleft(demo,demo1,demo2,speed,flag){
demo=$(demo);demo1=$(demo1);demo2=$(demo2)
demo2.innerHTML=demo1.innerHTML
function Marquee(){
if(demo2.offsetWidth-demo.scrollLeft<=0){
demo.scrollLeft-=demo1.offsetWidth
}
else{
demo.scrollLeft++
}
}
flag=setInterval(Marquee,speed)
demo.onmouseover=function(){clearInterval(flag);}
demo.onmouseout=function(){flag=setInterval(Marquee,speed);}
}

function duty(){
  var disp = $('duty').style.display;
  if(disp == 'none' || disp == ''){
    $('duty').style.display = 'block';  
  }else{
    $('duty').style.display = 'none';
  }
}

function CheckForm(theform){		
		if(theform.title.value==''){
			alert('���Ա��ⲻ��Ϊ��');
			theform.title.focus();
			return false;
		} 
		
		if(theform.content.value==''){
			alert('�������ݲ���Ϊ��');
			theform.content.focus();
			return false;
		} 
		
		if(theform.contact.value==''){
			alert('��ϵ��ʽ����Ϊ��');
			theform.contact.focus();
			return false;
		}
		  		
		if(theform.checkcode.value==''){
			alert('����д�Ҳ���ĸ�����');
			theform.checkcode.focus();
			return false;
		}  		
				   
}