function zhuanzhangcheck(obj){
		return	confirm('是否确定转出\n红利：'+obj.num+'\n积分：'+obj.jifennum+'\n到账户：'+obj.username);
}

/**
 *
 * @param {} obj 当前对象，一般是使用this引用。
 * @param {} vrl 主页URL
 */
function setHome(obj, vrl) {
    try {
        obj.style.behavior = 'url(#default#homepage)';
        obj.setHomePage(vrl);
    } catch (e) {
        if (window.netscape) {
            try {
                netscape.security.PrivilegeManager
                        .enablePrivilege("UniversalXPConnect");
            } catch (e) {
                alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入“about:config”并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。");
            }
            var prefs = Components.classes['@mozilla.org/preferences-service;1']
                    .getService(Components.interfaces.nsIPrefBranch);
            prefs.setCharPref('browser.startup.homepage', vrl);
        }
    }
}

/**
 *
 * @param {} sURL 收藏链接地址
 * @param {} sTitle 收藏标题
 */
function addFavorite(sURL, sTitle) {
    try {
        window.external.addFavorite(sURL, sTitle);
    } catch (e) {
        try {
            window.sidebar.addPanel(sTitle, sURL, "");
        } catch (e) {
            alert("加入收藏失败，请使用Ctrl+D进行添加");
        }
    }
}

function fontZoom(size)
{
   document.getElementById('con').style.fontSize=size+'px';
}

function menuclick(count,current,flag){
	for(j=1;j<=count;j++)
	{
		$("#shops_"+j).removeClass('xuanzhong');
		$("#"+flag+"_div_shops_"+j).css({display:'none'});
	}
	$("#shops_"+current).addClass('xuanzhong');
	$("#"+flag+"_div_shops_"+current).css({display:'block'});
}

function newgdcode(obj,url) {
    //后面传递一个随机参数，否则在IE7和火狐下，不刷新图片
    obj.src = url+ '?nowtime=' + new Date().getTime();
}

function showOrHiddleDiv(flag){
	if($("#"+flag+"_div").css("display")=="none"){
		$("#"+flag+"_div").css({display:'block'});
	}else{
		$("#"+flag+"_div").css({display:'none'});
	}
}

function showAgentDiv(count,current){
	for(j=0;j<=count;j++)
	{
		$("#div"+j).css({display:'none'});
	}
	$("#div"+current).css({display:'block'});
}



function showModifyPassword(flag){
	$("#tb_password").css({display:'none'});
	$("#tb_password2").css({display:'none'});
	$("#tb_question").css({display:'none'});
	$("#tb_"+flag).css({display:'block'});

	$("#td_password").css({background:'#7FB829'});
	$("#td_password2").css({background:'#7FB829'});
	$("#td_question").css({background:'#7FB829'});
	$("#td_"+flag).css({background:'ffffcc'});
}
/*
function write_nav(flag){
	var _nav='<li {INDEX_LI}><a href="index.php" class="sekuai {INDEX_A}" {INDEX_A_CSS}>首页</a></li>'+
			 '<li {PROCAT_LI}><a href="procat.php" class="sekuai {PROCAT_A}" {PROCAT_A_CSS}>联盟商家</a></li>'+
			 '<li {AGENT_LI}><a href="agent.php" class="sekuai {AGENT_A}" {AGENT_A_CSS}>加盟中心</a></li>'+
			 '<li {SJ_LI}><a href="sj.php" class="sekuai {SJ_A}" {SJ_A_CSS}>商家平台</a></li>'+
			 '<li {AUTH_LI}><a href="auth.php" class="sekuai {AUTH_A}" {AUTH_A_CSS}>审核中心</a></li>'+
			 '<li {HELP_LI}><a href="help.php" class="sekuai {HELP_A}" {HELP_A_CSS}>帮助中心</a></li>';

	var _sNavTPL = _nav.replace('{'+flag+'_LI}','class="beijingwu"');
	_sNavTPL = _sNavTPL.replace('{'+flag+'_A}',' flwindex_menu_zhuyao_sekuai');
	_sNavTPL = _sNavTPL.replace('{'+flag+'_A_CSS}','style="color: rgb(0, 0, 0); font-family: 宋体;"');

	document.write(_sNavTPL);
}*/