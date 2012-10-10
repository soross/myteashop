<!--
function setOnloadEvent(func){
	 var oldonload = window.onload;
	 if(typeof window.onload != "function"){
		  window.onload = func;
	 }
	 else{
	    window.onload = function(){
	    	 oldonload();
	    	 func();
	    }	
	 }
}

function $(objectId){
   if(document.getElementById && document.getElementById(objectId)){
      // W3C DOM
      return document.getElementById(objectId);
   }
   else if (document.all && document.all(objectId)){
      // MSIE 4 DOM
      return document.all(objectId);
   }
   else if (document.layers && document.layers[objectId]){
      // NN 4 DOM.. note: this won't find nested layers
      return document.layers[objectId];
   }
   else{
      return false;
   }
}
//-->