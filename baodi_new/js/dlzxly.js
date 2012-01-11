function checkjlqysf(){

	var jlqysf = document.gqinfo.jlqysf.value;
	if(jlqysf==null&&jlqysf==""||jlqysf.length==0){

		alert("省份不能为空");
		return false;
	}else{

		return true;
	}
}

function checkjlqycs(){//
	var jlqycs = document.gqinfo.jlqycs.value;
	if(jlqycs==null&&jlqycs==""||jlqycs.length==0){

		alert("城市不能为空");
		return false;
	}
	else{

		return true;
	}
}

function checkjlqyqu(){//
	var jlqyqu = document.gqinfo.jlqyqu.value;
	if(jlqyqu==null&&jlqyqu==""||jlqyqu.length==0){

		alert("区不能为空");
		return false;
	}
	else{

		return true;
	}
}




function checkyxqd(){//
	var yxqd = document.gqinfo.yxqds.value;
	var o=document.getElementsByName("yxqd");
    var len=o.length;
    if(yxqd==null||yxqd==""||yxqd.length==0||yxqd=="undefined"){
    for (var i=0;i<len ;i++ ) {
       if( o[i].checked==true ) {

            return true;
       }
    }
	alert("代理/经销渠道不能为空");
    return false;
    }
    else{

    	return true;
    }
}

function checkdwgrmz(){//
	var dwgrmz = document.gqinfo.dwgrmz.value;
	if(dwgrmz==null&&dwgrmz==""||dwgrmz.length==0){

		alert("单位/个人名称不能为空");
		return false;
	}
	else{

		return true;
	}
}

function checklxdh(){//
	var lxdh = document.gqinfo.lxdh.value;
	if(lxdh==null&&lxdh==""||lxdh.length==0){

		alert("联系电话/手机不能为空");
		return false;
	}
	else{

		return true;
	}
}

function checklxr(){//
	var lxr = document.gqinfo.lxr.value;
	if(lxr==null&&lxr==""||lxr.length==0){

		alert("联系人不能为空");
		return false;
	}
	else{

		return true;
	}
}

function ongqinfo(){

	if(checkjlqysf()&&checkjlqycs()&&checkyxqd()&&checksf()&&checklxr()

&&checklxdh()&&checkjlqyqu()){


		return true;
	}
	else{


		return false;
	}

}