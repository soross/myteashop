function writeTool() {
	document.write("<div id='toolBar'><ul><li class='home'><a href='../common/index.asp'>返回首页</a></li><li class='top'><a href='#'>跳到顶部</a></li><li class='back'><a href='javascript:history.back(-1)'>返回上页</a></li></ul></div>");
}



var originalClassNameString;
originalClassNameString="";
//对所有的input 和 textarea 批量用CSS控制
function formatInput(strID){   
	var   a   =   document.getElementById(strID).getElementsByTagName("INPUT"); 
	for   (var   i=0;   i<a.length;   i++)  {
		if(a[i].type=="text" || a[i].type=="password") {
			a[i].className="input_text";
			a[i].onfocus=function() {
				originalClassNameString = this.className;
				this.className+=" focus"; 
			};
			a[i].onblur=function() {
				this.className=originalClassNameString; 
			};
		}
	} 
	
	
	var   a   =   document.all(strID).getElementsByTagName("textarea"); 
	for   (var   i=0;   i<a.length;   i++)  {
			a[i].className="input_text";
			a[i].onfocus=function() {
				originalClassNameString = this.className;
				this.className+=" focus"; 
			};
			a[i].onblur=function() {
				this.className=originalClassNameString; 
			};
	} 
	
}

function tagEventEffect(type,tag, parentId) { 	
	if (window.attachEvent) {   
		window.attachEvent("onload", function() {
		var sfEls = (parentId==null)?document.getElementsByTagName(tag):document.getElementById(parentId).getElementsByTagName(tag);
		type(sfEls);   
		});   
	}  	
}
sfHover = function(sfEls) {
	for (var i=0; i < sfEls.length; i++) {
		if(sfEls[i].className.indexOf("noOverStyle")<0){		
			sfEls[i].onmouseover=function() {
				originalClassNameString = this.className;
				this.className+=" over";
			}
			sfEls[i].onmouseout=function() {
				this.className=originalClassNameString;
			}
		}		
	}
}

function submitForm(thisObj,url,prop) {
	thisObj.action=url+"?u="+escape(self.location)+"&"+prop;
}


function goto(url,prop) {
	if(url.indexOf("?")>0) {
		location.href=url+"&u="+escape(self.location)+"&"+prop;
	}
	else {
		location.href=url+"?u="+escape(self.location)+"&"+prop;
	}	
}