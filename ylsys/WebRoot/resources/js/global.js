var pub = {};
var domain = "test";
var Cookies = {};
var ie = document.all;
var nn6 = document.getElementById && !document.all;
var scripts = document.getElementsByTagName("script");
var parts = scripts[scripts.length - 1].src.split("/");
parts.pop();
var basePath = parts.join("/");
pub.require = function(path) {
	document.write('<' + 'script');
	document.write(' language="javascript"');
	document.write(' type="text/javascript"');
	document.write(' src="' + basePath + "/" + path + '">');
	document.write('</' + 'script' + '>');
}
pub.require('event.js');
pub.require('jquery-1.4.2.js');
pub.objToStr = function(o) {
	var r = [];
	if (typeof o == "string" || o == null) {
		return o;
	}
	if (typeof o == "object") {
		if (!o.sort) {
			r[0] = "{"
			for (var i in o) {
				r[r.length] = i;
				r[r.length] = ":";
				r[r.length] = obj2str(o[i]);
				r[r.length] = ",";
			}
			r[r.length - 1] = "}"
		} else {
			r[0] = "["
			for (var i = 0; i < o.length; i++) {
				r[r.length] = obj2str(o[i]);
				r[r.length] = ",";
			}
			r[r.length - 1] = "]"
		}
		return r.join("");
	}
	return o.toString();
};
pub.$getSwf=function(movieName) {
	if (navigator.appName.indexOf("Microsoft") != -1) {
		return window[movieName];
	}else{
		return document[movieName];
	}
};
pub.$queryString = function(name) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	var r = window.location.search.substr(1).match(reg);
	if (r != null)
		return unescape(r[2]);
	return null;
}
pub.$id = function(name) {
	return document.getElementById(name);
}
pub.$tagName = function(name) {
	return document.getElementsByTagName(name);
}
pub.$tag = function(result) {
	return nn6 ? result.target : event.srcElement;
}
pub.$createTag=function(name){
	return document.createElement(name);
}
pub.$xmlDom = function(xmlurl) {
	var xmlDoc;
	if (window.ActiveXObject) {
		xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
		xmlDoc.async = false;
		xmlDoc.load(xmlurl);
	} else if (document.implementation
			&& document.implementation.createDocument) {
		xmlDoc = document.implementation.createDocument("", "", null);
		xmlDoc.async = false;
		xmlDoc.load(xmlurl);
	} else {
		alert('Your browser cannot handle this script');
	}
	/*
	 * var title=xmlDoc.getElementsByTagName("title"); var
	 * id=title[i].getAttribute("id"); var value=title[0].firstChild.nodeValue;
	 */
	return xmlDoc;
}
pub.$stringToXml = function(text) {
	var xmlDoc;
	if (window.DOMParser) {
		parser = new DOMParser();
		xmlDoc = parser.parseFromString(text, "text/xml");
	} else // Internet Explorer
	{
		xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
		xmlDoc.async = "false";
		xmlDoc.loadXML(text);
	}
	return xmlDoc;
}

pub.saveCookie = function(name, value) {
	var saveDate = new Date((new Date()).getTime() + 24 * 3600 * 1000);
	// console.log(saveDate.toUTCString());
	Cookies.set(name, value, saveDate);
}

pub.getCookie = function(name) {
	return Cookies.get(name);
}
pub.clearCookie = function(name, value) {
	Cookies.clear(name, value);
}

Cookies.set = function(name, value) {
	var argv = arguments;
	var argc = arguments.length;
	var expires = (argc > 2) ? argv[2] : null;
	var path = (argc > 3) ? argv[3] : '/';
	var domain = (argc > 4) ? argv[4] : null;
	var secure = (argc > 5) ? argv[5] : false;
	document.cookie = name + "=" + encodeURIComponent(value)
			+ ((expires == null) ? "" : ("; expires=" + expires.toUTCString()))
			+ ((path == null) ? "" : ("; path=" + path))
			+ ((domain == null) ? "" : ("; domain=" + domain))
			+ ((secure == true) ? "; secure" : "");
}

Cookies.get = function(name) {
	var arg = name + "=";
	var alen = arg.length;
	var clen = document.cookie.length;
	var i = 0;
	var j = 0;
	while (i < clen) {
		j = i + alen;
		if (document.cookie.substring(i, j) == arg)
			return Cookies.getCookieVal(j);
		i = document.cookie.indexOf(" ", i) + 1;
		if (i == 0)
			break;
	}
	return null;
}

Cookies.clear = function(name, value) {
	if (Cookies.get(name)) {
		document.cookie = name + "=" + escape(value)
				+ "; expires=Fri, 26 Mar 2010 23:59:59 GMT;";
	}
}

Cookies.clear = function(name) {
	if (Cookies.get(name)) {
		document.cookie = name + "=" + "; expires=Thu, 01-Jan-70 00:00:01 GMT";
	}
}

Cookies.getCookieVal = function(offset) {
	var endstr = document.cookie.indexOf(";", offset);
	if (endstr == -1) {
		endstr = document.cookie.length;
	}
	return decodeURIComponent(document.cookie.substring(offset, endstr));
}
