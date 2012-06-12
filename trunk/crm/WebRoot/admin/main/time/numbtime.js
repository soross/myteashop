	var dn;
	c1=new Image(); c1.src="time/c1.gif";
	c2=new Image(); c2.src="time/c2.gif";
	c3=new Image(); c3.src="time/c3.gif";
	c4=new Image(); c4.src="time/c4.gif";
	c5=new Image(); c5.src="time/c5.gif";
	c6=new Image(); c6.src="time/c6.gif";
	c7=new Image(); c7.src="time/c7.gif";
	c8=new Image(); c8.src="time/c8.gif";
	c9=new Image(); c9.src="time/c9.gif";
	c0=new Image(); c0.src="time/c0.gif";
	cb=new Image(); cb.src="time/cb.gif";
	cam=new Image(); cam.src="time/cam.gif";
	cpm=new Image(); cpm.src="time/cpm.gif";
	
	function extract(h,m,s,type){
		if (!document.images){
			return;
		}
				
		if (h<=9){
			document.images.a.src=cb.src;
			document.images.b.src=eval("c"+h+".src");
		}
		else {
			document.images.a.src=eval("c"+Math.floor(h/10)+".src");
			document.images.b.src=eval("c"+(h%10)+".src");
		}
		if (m<=9){
			document.images.d.src=c0.src;
			document.images.e.src=eval("c"+m+".src");
		}
		else {
			document.images.d.src=eval("c"+Math.floor(m/10)+".src");
			document.images.e.src=eval("c"+(m%10)+".src");
		}
		if (s<=9){
			document.g.src=c0.src;
			document.images.h.src=eval("c"+s+".src");
		}
		else {
			document.images.g.src=eval("c"+Math.floor(s/10)+".src");
			document.images.h.src=eval("c"+(s%10)+".src");
		}
		if (dn=="AM"){
			document.j.src=cam.src;
		}else {
			document.images.j.src=cpm.src;
		}
	}
	
	function show(){
		if (!document.images)
		{
			return;
		}		
		var Digital=new Date();
		var hours=Digital.getHours();
		var minutes=Digital.getMinutes();
		var seconds=Digital.getSeconds();
		dn="AM" ;
		if ((hours>=12)&&(minutes>=1)||(hours>=13)){
			dn="PM";
			hours=hours-12;
		}
		if (hours==0)hours=12;
		
		extract(hours,minutes,seconds,dn);
		
		setTimeout("show()",1000);
	}