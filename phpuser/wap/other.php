<!DOCTYPE HTML>





<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="copyright" content="Copyright (c) 1998-2010 Tencent." />
<meta name="description" content="�ֻ���Ѷ��-�������" />
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0"/>
<meta name="MobileOptimized" content="240"/>
<meta name="format-detection" content="telephone=no" />
<link rel="shortcut icon" type="image/x-icon" href="http://3g.qq.com/favicon.ico" />















<link rel="stylesheet" href="http://3gimg.qq.com/wap30/css/app/itouch.min.css" type="text/css"  media="screen"/>
<style type="text/css" media="all">
/*iUi ��ҳ��preloader*/
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
<title>��ѶӦ������iPhone</title>
</head>
<body>

<!-- ÿ�վ�ѡbegin -->
<section id="recommendlist">
  <header class="main">
  <h1>iPhoneӦ�ñ�</h1>
  <!--  a href="#" class="downbtn">�ͻ����������</a--> <a href="javascript:toSearch('recommendlist')" class="searchbtn">����</a>


  <nav>
    <ul>
      <li class="current"><a href="javascript:void(0);">��Ʒ</a></li>
      <li><a href="javascript:UI.showApplist('qrycmslist_ios',1,{type:3});">��ʱ���</a></li>
      <li><a href="javascript:UI.recommendRank('qrycmslist_ios',1,{topicid:'5',icfa:'131556500000000000'});">����</a></li>
      <li ><a href="javascript:showCategory_topiclist();">ר�����</a></li>
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
 <!-- ÿ�վ�ѡend -->


 <!-- ר�����begin -->

 <section id="category_topiclist">
 <header class="main">
  <h1>iPhoneӦ�ñ�</h1>
  <!--  a href="#" class="downbtn">�ͻ����������</a-->  <a href="javascript:toSearch('category_topiclist')" class="searchbtn">����</a>
  <nav>
    <ul>
      <li><a href="javascript:UI.showApplist('qrycmslist_ios',1,{type:0});">��Ʒ</a></li>

      <li><a href="javascript:UI.showApplist('qrycmslist_ios',1,{type:3});">��ʱ���</a></li>
      <li><a href="javascript:UI.recommendRank('qrycmslist_ios',1,{topicid:'5',icfa:'131556500000000000'});">����</a></li>
      <li class="current"><a href="javascript:void(0);">ר�����</a></li>
    </ul>
  </nav>
</header>
  <section class="app-list">
    <article id="topiclist"> </article>

    <article id="categorylist">
    </article>
  </section>
</section>
 <!-- ר�����end -->

 <!-- ����begin -->
<section id="recomondRank">
<header class="main">
  <h1>iPhoneӦ�ñ�</h1>
  <!--  a href="#" class="downbtn">�ͻ����������</a--> <a href="javascript:toSearch('limitedfreelist')" class="searchbtn">����</a>

  <nav>
    <ul>
      <li><a href="javascript:UI.showApplist('qrycmslist_ios',1,{type:0});">��Ʒ</a></li>
      <li><a href="javascript:UI.showApplist('qrycmslist_ios',1,{type:3});">��ʱ���</a></li>
      <li class="current"><a href="javascript:void(0);">����</a></li>
      <li><a href="javascript:showCategory_topiclist();">ר�����</a></li>
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
<!-- ����end -->

<!-- ��ʱ���begin -->
<section id="limitedfreelist">
<header class="main">
  <h1>iPhoneӦ�ñ�</h1>
  <!--  a href="#" class="downbtn">�ͻ����������</a--> <a href="javascript:toSearch('limitedfreelist')" class="searchbtn">����</a>
  <nav>
    <ul>
      <li><a href="javascript:UI.showApplist('qrycmslist_ios',1,{type:0});">��Ʒ</a></li>

      <li class="current"><a href="javascript:void(0);">��ʱ���</a></li>
      <li><a href="javascript:UI.recommendRank('qrycmslist_ios',1,{topicid:'5',icfa:'131556500000000000'});">����</a></li>
      <li ><a href="javascript:showCategory_topiclist();">ר�����</a></li>
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
<!-- ��ʱ���end -->

<!-- ��������begin -->
<section id="searchUi">
<header class="search">
  <form onsubmit="searchResult(1,'{type:0}');return false;">
    <div class="holder">

      <input placeholder="����ؼ���" type="text" id="searchText"/>
      <a href="javascript:clearText();" class="clear" style="display:none;">���</a> </div>
    <input onclick="cancelSearch(this)" type="button" value="ȡ��" />
  </form>
</header>
<div id="noresult" class="search-result">
	<!-- ������Ӧ�����ĵ�classΪinit��û�н����classΪnoresult -->
	<p class="init">û�з������Ӧ��</p>

</div>

<div id="searchloading" class="loading" style="display:none"> ��������... </div>
  <div>
    <section class="app-list price-list">
      <article style="min-height:80px;"></article>
    </section>
  </div>
</section>
<!-- ��������end -->

<!-- ����ҳbegin -->
<section id="appinfo"></section>
<!-- ����ҳ end-->

<!-- ר�����ҳ�б�begin -->
<section id="category_topic_applist"></section>
<!-- ר�����ҳ �б�end-->
<footer style="display:block;">
    	<!--  p><a href="" target="_blank">Ӧ�ñ��ͻ���</a></p-->

      <p> <a href="http://3g.qq.com" target="_blank">�ֻ���Ѷ��</a> <a href="http://ti.3g.qq.com/touch/iphone/index.jsp?&aid=touch_pub#personIndex/u=download_app" target="_blank">�ٷ�΢��</a> <a href="http://wap.3g.qq.com/g/s?aid=wapsupport&fid=717" target="_blank">�������</a><a href="http://app.qq.com/g/s?aid=uniBrandList" target="_blank">�޸Ļ���</a></p>

      <p>��Ѷ��˾��Ȩ����<a href="javascript:scrollTop();" class="topbtn">���ض���</a></p>
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

