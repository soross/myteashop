var x,y
var drag_=false
var D=new Function('obj','return document.getElementById(obj);')
var IE=new Function('','if(navigator.appName.indexOf("Explorer")>=0)return 1;if(navigator.appName.indexOf("Netscape")>=0)return 2')
function Move_obj(obj){//1
	D(obj).onmousedown=function(e){drag_=true//4
		with(this){
			style.position="absolute";temp1=offsetLeft;temp2=offsetTop;//5
			if(IE()==1){
				x=event.clientX;y=event.clientY//6
				document.onmousemove=function(e){//7
					if(drag_==false)return false
					with(this){
						style.left=temp1+event.clientX-x+"px";style.top=temp2+event.clientY-y+"px"
					}
				}//7
			}//6
			if(IE()==2){
				x=e.pageX;y=e.pageY;//8
				document.onmousemove=function(e){//9
					if(drag_==false)return false
					with(this){
						style.left=temp1+e.pageX-x+"px";style.top=temp2+e.pageY-y+"px"
					}
				}//9
			}//8
		}//5
		document.onmouseup=new Function("drag_=false")
	 }//4
}//1
