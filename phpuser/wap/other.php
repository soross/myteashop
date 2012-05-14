<!DOCTYPE HTML>





<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="copyright" content="Copyright (c) 1998-2010 Tencent." />
<meta name="description" content="手机腾讯网-软件下载" />
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0"/>
<meta name="MobileOptimized" content="240"/>
<meta name="format-detection" content="telephone=no" />
<link rel="shortcut icon" type="image/x-icon" href="http://3g.qq.com/favicon.ico" />















<link rel="stylesheet" href="http://3gimg.qq.com/wap30/css/app/itouch.min.css" type="text/css"  media="screen"/>
<style type="text/css" media="all">
/*iUi 与页面preloader*/
body>section, body>footer {display:none;}
body>[selected="true"] {
	display: block;
}
body >.preloader{
	position:absolute;
	width:60px;
	z-index:9000;
	display: none;
}

</style>
<title>腾讯应用中心iPhone</title>
</head>
<body>

<!-- 每日精选begin -->
<section id="recommendlist">
  <header class="main">
  <h1>iPhone应用宝</h1>
  <!--  a href="#" class="downbtn">客户端免费下载</a--> <a href="javascript:toSearch('recommendlist')" class="searchbtn">搜索</a>


  <nav>
    <ul>
      <li class="current"><a href="javascript:void(0);">精品</a></li>
      <li><a href="javascript:UI.showApplist('qrycmslist_ios',1,{type:3});">限时免费</a></li>
      <li><a href="javascript:UI.recommendRank('qrycmslist_ios',1,{topicid:'5',icfa:'131556500000000000'});">热门</a></li>
      <li ><a href="javascript:showCategory_topiclist();">专题分类</a></li>
    </ul>

  </nav>
 </header>
  <div>
    <section class="app-list price-list">
      <article>
      </article>
    </section>
  </div>
  </section>
 <!-- 每日精选end -->


 <!-- 专题分类begin -->

 <section id="category_topiclist">
 <header class="main">
  <h1>iPhone应用宝</h1>
  <!--  a href="#" class="downbtn">客户端免费下载</a-->  <a href="javascript:toSearch('category_topiclist')" class="searchbtn">搜索</a>
  <nav>
    <ul>
      <li><a href="javascript:UI.showApplist('qrycmslist_ios',1,{type:0});">精品</a></li>

      <li><a href="javascript:UI.showApplist('qrycmslist_ios',1,{type:3});">限时免费</a></li>
      <li><a href="javascript:UI.recommendRank('qrycmslist_ios',1,{topicid:'5',icfa:'131556500000000000'});">热门</a></li>
      <li class="current"><a href="javascript:void(0);">专题分类</a></li>
    </ul>
  </nav>
</header>
  <section class="app-list">
    <article id="topiclist"> </article>

    <article id="categorylist">
    </article>
  </section>
</section>
 <!-- 专题分类end -->

 <!-- 热门begin -->
<section id="recomondRank">
<header class="main">
  <h1>iPhone应用宝</h1>
  <!--  a href="#" class="downbtn">客户端免费下载</a--> <a href="javascript:toSearch('limitedfreelist')" class="searchbtn">搜索</a>

  <nav>
    <ul>
      <li><a href="javascript:UI.showApplist('qrycmslist_ios',1,{type:0});">精品</a></li>
      <li><a href="javascript:UI.showApplist('qrycmslist_ios',1,{type:3});">限时免费</a></li>
      <li class="current"><a href="javascript:void(0);">热门</a></li>
      <li><a href="javascript:showCategory_topiclist();">专题分类</a></li>
    </ul>

  </nav>
</header>
<div>
    <section class="app-list  price-list">
      <article>
      </article>
    </section>
  </div>
</section>
<!-- 热门end -->

<!-- 限时免费begin -->
<section id="limitedfreelist">
<header class="main">
  <h1>iPhone应用宝</h1>
  <!--  a href="#" class="downbtn">客户端免费下载</a--> <a href="javascript:toSearch('limitedfreelist')" class="searchbtn">搜索</a>
  <nav>
    <ul>
      <li><a href="javascript:UI.showApplist('qrycmslist_ios',1,{type:0});">精品</a></li>

      <li class="current"><a href="javascript:void(0);">限时免费</a></li>
      <li><a href="javascript:UI.recommendRank('qrycmslist_ios',1,{topicid:'5',icfa:'131556500000000000'});">热门</a></li>
      <li ><a href="javascript:showCategory_topiclist();">专题分类</a></li>
    </ul>
  </nav>
</header>
<div>
    <section class="app-list  price-list">

      <article>
      </article>
    </section>
  </div>
</section>
<!-- 限时免费end -->

<!-- 搜索界面begin -->
<section id="searchUi">
<header class="search">
  <form onsubmit="searchResult(1,'{type:0}');return false;">
    <div class="holder">

      <input placeholder="输入关键词" type="text" id="searchText"/>
      <a href="javascript:clearText();" class="clear" style="display:none;">清除</a> </div>
    <input onclick="cancelSearch(this)" type="button" value="取消" />
  </form>
</header>
<div id="noresult" class="search-result">
	<!-- 做最懂你的应用中心的class为init，没有结果的class为noresult -->
	<p class="init">没有发现相关应用</p>

</div>

<div id="searchloading" class="loading" style="display:none"> 正在搜索... </div>
  <div>
    <section class="app-list price-list">
      <article style="min-height:80px;"></article>
    </section>
  </div>
</section>
<!-- 搜索界面end -->

<!-- 详情页begin -->
<section id="appinfo"></section>
<!-- 详情页 end-->

<!-- 专题分类页列表begin -->
<section id="category_topic_applist"></section>
<!-- 专题分类页 列表end-->
<footer style="display:block;">
    	<!--  p><a href="" target="_blank">应用宝客户端</a></p-->

      <p> <a href="http://3g.qq.com" target="_blank">手机腾讯网</a> <a href="http://ti.3g.qq.com/touch/iphone/index.jsp?&aid=touch_pub#personIndex/u=download_app" target="_blank">官方微博</a> <a href="http://wap.3g.qq.com/g/s?aid=wapsupport&fid=717" target="_blank">意见反馈</a><a href="http://app.qq.com/g/s?aid=uniBrandList" target="_blank">修改机型</a></p>

      <p>腾讯公司版权所有<a href="javascript:scrollTop();" class="topbtn">返回顶部</a></p>
</footer>

<script type="text/javascript">
var g_action = "http://i.myapp.com/s?sid=AYp1kfzfYH8NdFsHzL0cw2XP";
var g_sid = "AYp1kfzfYH8NdFsHzL0cw2XP";
var  g_inquiryHref = "";
~function(){
	var iJqueryStrageDate = "2011112015";
	if(localStorage.getItem("js-jQuery") && localStorage.getItem("iJqueryStrageDate") == iJqueryStrageDate){
		evalGlobal(localStorage.getItem("js-jQuery"));
	}else{
		localStorage.setItem("iJqueryStrageDate", iJqueryStrageDate);
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange=function(){console.info(xmlhttp.readyState)
			if (xmlhttp.readyState==4 && xmlhttp.status==200) {
				var responseData = xmlhttp.responseText;
				localStorage.setItem("js-jQuery", responseData);
				evalGlobal(responseData);
			}
		}

		xmlhttp.open("GET","http://3gimg.qq.com/common/js/jquery/1.4.2/jquery.min.js",false);
		xmlhttp.send();
	}
	function evalGlobal(strScript){
	    var oScript = document.createElement ("script" );
	    oScript.type= "text/javascript" ;
	    oScript.text= strScript ;
	    document.getElementsByTagName("head")[0].appendChild(oScript) ;
	}
}()
</script>
<script type="text/javascript" src="http://3gimg.qq.com/wap30/js/app/ibase.min.js"></script>
<script type="text/javascript" src="http://3gimg.qq.com/wap30/js/app/ilogic.min.js"></script>
</body>
</html>

