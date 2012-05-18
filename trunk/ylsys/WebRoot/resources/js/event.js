var fml={}
fml.Ev=function(){
	this.onClick=function(tag,fun){
		// 如果是FF
		if (tag.addEventListener) {
			tag.addEventListener("mousedown", fun, false);
		}
		// 如果是IE
		else if (tag.attachEvent) {
			tag.attachEvent("onmousedown", fun);
		} else {
			tag["onmousedown"] = fun;
		}
	}
	this.deOnClick=function(tag,fun){
		// 如果是FF
		if (tag.removeEventListener) {
			tag.removeEventListener("mousedown", fun, false);
		}
		// 如果是IE
		else if (tag.detachEvent) {
			tag.detachEvent("onmousedown", fun);
		} else {
			tag["onmousedown"] = undefined;
		}
	}
	
	this.onClick=function(tag,fun,obj){
		// 如果是FF
		if (tag.addEventListener) {
			tag.addEventListener("mousedown", function(e){fun(e,obj)}, false);
		}
		// 如果是IE
		else if (tag.attachEvent) {
			tag.attachEvent("onmousedown",  function(e){fun(e,obj)});
		} else {
			tag["onmousedown"] =  function(e){fun(e,obj)};
		}
	}
	this.onMouseMove=function(tag,fun){
		// 如果是FF
		if (tag.addEventListener) {
			tag.addEventListener("mousemove", fun, false);
		}
		// 如果是IE
		else if (tag.attachEvent) {
			tag.attachEvent("onmousemove", fun);
		} else {
			tag["onmousemove"] = fun;
		}
	}
	this.onMouseOver=function(tag,fun){
		// 如果是FF
		if (tag.addEventListener) {
			tag.addEventListener("mouseover", fun, false);
		}
		// 如果是IE
		else if (tag.attachEvent) {
			tag.attachEvent("onmouseover", fun);
		} else {
			tag["onmouseover"] = fun;
		}
	}
	this.onMouseOut=function(tag,fun){
		// 如果是FF
		if (tag.addEventListener) {
			tag.addEventListener("mouseout", fun, false);
		}
		// 如果是IE
		else if (tag.attachEvent) {
			tag.attachEvent("onmouseout", fun);
		} else {
			tag["onmouseout"] = fun;
		}
	}
	this.onScroll=function(tag,fun){
		// 如果是FF
		if (tag.addEventListener) {
			tag.addEventListener("scroll", fun, false);
		}
		// 如果是IE
		else if (tag.attachEvent) {
			tag.attachEvent("onscroll", fun);
		} else {
			tag["onscroll"] = fun;
		}
	}
	this.onFocusin=function(tag,fun){
		// 如果是FF
		if (tag.addEventListener) {
			tag.addEventListener("onfocus", fun, false);
		}
		// 如果是IE
		else if (tag.attachEvent) {
			tag.attachEvent("onfocusin", fun);
		} else {
			tag["onfocusin"] = fun;
		}
	}
	this.onFocusout=function(tag,fun){
		// 如果是FF
		if (tag.addEventListener) {
			tag.addEventListener("onblur", fun, false);
		}
		// 如果是IE
		else if (tag.attachEvent) {
			tag.attachEvent("onfocusout", fun);
		} else {
			tag["onfocusout"] = fun;
		}
	}
	this.onKeyDown=function(tag,fun){
		// 如果是FF
		if (tag.addEventListener) {
			tag.addEventListener("keydown", fun, false);
		}
		// 如果是IE
		else if (tag.attachEvent) {
			tag.attachEvent("onkeydown", fun);
		} else {
			tag["onkeydown"] = fun;
		}
	}
	this.onKeyUp=function(tag,fun){
		// 如果是FF
		if (tag.addEventListener) {
			tag.addEventListener("keyup", fun, false);
		}
		// 如果是IE
		else if (tag.attachEvent) {
			tag.attachEvent("onkeyup", fun);
		} else {
			tag["onkeyup"] = fun;
		}
	}
}