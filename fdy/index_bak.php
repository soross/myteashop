<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />

<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="css/home.css" rel="stylesheet" type="text/css">
</head>

<script src="js/common.js" type="text/javascript"></script>
<script src="js/mt.js" type="text/javascript"></script>





<body id="homePage">

<link rel="stylesheet" href="css/lytebox.css" type="text/css" media="screen" />

<div id="container">
	<div id="innerContainer">
		<div id="head">
		  <div id="logo">
		  	<a href="\"><img src='images/siteConfig9_2010217162228.gif'/></a>
		  </div>
		  <!--
		  <div id="quickBar">
		    <ul>
		      <li id="quickBar_home"><a href="/index.html">网站首页</a></li>
		    </ul>
		  </div>-->
		  <div id="navigation">
		    <ul>
		      <li id="hello">今天是2011-8-30, 欢迎访问本网站!</li>
		      <li id="navigation_home"><a href="/index.html">网站首页</a></li>
		      <li id='navigation_193'><a href='/html/case.html' class='menulink'>案例</a>
		      	<ul>
		      		<li id='module198'><a href='/html/case_web.html'>企业品牌网站建设</a></li>
		      		<li id='module199'><a href='/html/case_design.html'>界面风格设计</a></li>
		      		<li id='module200'><a href='/html/case_portal.html'>行业门户构建</a></li>
		      		<li id='module263'><a href='/html/case_system.html'>WEB系统开发</a></li>
		      	</ul>
		      </li>
		      <li id='navigation_196'><a href='/html/service.html' class='menulink'>服务</a>
		      	<ul>
		      		<li id='module238'><a href='/html/service_web.html'>企业品牌网站建设</a></li>
		      		<li id='module261'><a href='/html/service_design.html'>界面风格设计</a></li>
			      	<li id='module262'><a href='/html/service_portal.html'>行业门户构建</a></li>
			      	<li id='module264'><a href='/html/service_system.html'>WEB系统开发</a></li>
			      	<li id='module266'><a href='/html/service_flow.html'>服务流程</a></li>
		      	</ul>
		      </li>
		      <li id='navigation_212'><a href='/html/about.html' class='menulink'>关于</a>
		      	<ul>
		      		<li id='module235'><a href='/html/about_info.html'>简介</a></li>
		      		<li id='module236'><a href='/html/about_view.html'>观点</a></li>
		      		<li id='module237'><a href='/html/about_advantage.html'>优势</a></li>
		      		<li id='module260'><a href='/html/about_cooperation.html'>加盟&合作</a></li>
		      	</ul>
		      </li>
		      <li id='navigation_197'><a href='/html/contact.html' class='menulink'>联络</a>
		      	<ul>
		      		<li id='module232'><a href='/html/faq.html'>常见问题</a></li>
		      	</ul>
		      </li>
		      <li id='navigation_265'><a href='/html/wiki.html' class='menulink'>知识</a>
		      	<ul>
		      		<li id='module270'><a href='/html/main_270.html'>网站策划</a></li>
		      		<li id='module272'><a href='/html/main_272.html'>网页设计</a></li>
		      		<li id='module267'><a href='/html/main_267.html'>系统开发</a></li>
		      		<li id='module269'><a href='/html/main_269.html'>推广优化</a></li>
		      		<li id='module271'><a href='/html/main_271.html'>其他分类</a></li>
		      	</ul>
		      </li>
		    </ul>
		  </div>
		</div>

		<script type="text/javascript">
			window.addEvent('domready', function(){
				if ($("navigation_")) {
					$("navigation_").className="navigationOverStyle";
				}
				if ($("menu_")) {
					$("menu_").className="menuOverStyle";
				}
				if ($$("#menu #module").length>0) {
					$$("#menu #module")[0].className="moduleOverStyle noOverStyle";
				}
			});
			tagEventEffect(sfHover,"li", "navigation");
		</script>
	    <script type="text/javascript">
			window.addEvent('domready', function(){
				$("navigation_home").className="navigationOverStyle";
			});
		</script>

	    <div id="body">
			<div id='banner'>
				<p>专业@专注——多年来，“视点网络(视点工作室)”全心致力于企业品牌网站建设、界面风格设计和WEB应用系统开发，用我们的专业技术和专注精神为众多客户提供了量身定做的解决方案。</p>
				<p>技术@美术——我们不赞成设计公司轻视技术的态度和技术公司不重视美术的做法，在我们看来，鱼与熊掌是可以兼得的。</p>
				<p>信任@合作——缺乏信任的合作，往往使项目陷入困境。获得您的信任是我们最大的追求，信任比合作更重要！</p>
			</div>

			<script src="js/swfobject.js" type="text/javascript" ></script>
			<script type="text/javascript">

				var flashvars = {xml: escape("xml/bcastr.xml")};

				var params = {bgcolor: "#010E1E", allowFullScreen: "true", wmode: "transparent"};
				swfobject.embedSWF("images/bcastr4.swf", "banner","960", "300", "9.0.0",false, flashvars, params);
			</script>

			<div id="menu">
				<ul>
					<li id="menu_home"><a href="/index.html">网站首页</a></li>
				</ul>

				<script type="text/javascript">
					window.addEvent('domready', function(){

					//左边菜单的动态效果
					var menuAction = $$('#menu li.menuOverStyle li a');
					menuAction.each(function(element) {
						var fx = new Fx.Styles(element, {duration:200, wait:false});

						element.addEvent('mouseleave', function(){
							fx.start({
								'margin-right': 10
							});
						});

						element.addEvent('mouseenter', function(){
							fx.start({
								'margin-right': 0
							});
						});
					});
					//为信息列表添加动态事件
					if ($("textList_simple")) {
						tagEventEffect(sfHover,"li", "textList_simple");
					}
					if ($("picList_sum")) {
						tagEventEffect(sfHover,"li", "picList_sum");
					}
				});
				</script>
	      </div>


	      <div id="indexBody">
	        <div id="service">
	          <ul>
	            <li class="web">
	              <dl>
	                <dt><a href="/html/service.html">企业品牌网站</a></dt>
	                <dd><a href="/html/service.html">创建美观与实用并重且与企业形象及文化相符的可用性网站，全面提升企业网络形象和产品竞争力一直是“视点”努力和发展的方向… </a></dd>
	              </dl>
	            </li>
	            <li class="design">
	              <dl>
	                <dt><a href="/html/service_design.html">界面风格设计</a></dt>
	                <dd><a href="/html/service_design.html">我们始终坚持可用性设计原则，协调界面风格的一致性，强调人性化设计理念，准确把握风格定位并设计出恰如其分的用户界面… </a></dd>
	              </dl>
	            </li>
	            <li class="portal">
	              <dl>
	                <dt><a href="/html/service_portal.html">信息门户构建</a></dt>
	                <dd><a href="/html/service_portal.html">行业门户网站是一个汇聚大量该行业供需信息、行业信息与相关人士的互联平台。“油画网”等案例的成功，增强了我们继续在该服务领域前行的信心… </a></dd>
	              </dl>
	            </li>
	            <li class="system">
	              <dl>
	                <dt><a href="/html/service_system.html">WEB系统开发</a></dt>
	                <dd><a href="/html/service_system.html">我们拥有多年WEB系统开发经验，主要提供以数据库为基础的信息应用系统的设计、开发和后期技术支援服务，以及相应的系统集成服务… </a></dd>
	              </dl>
	            </li>
	          </ul>
	        </div>
	      </div>
	      <!--end service-->
	    </div>
	    <!--end indexBody-->

	    <br class="clearfloat" />

		<div id="foot">
		  <div id='link'>
		  	<ul>
		  		<li><a href='http://www.vdesign.net' target='_blank'>专业网站建设</a></li>
		  		<li><a href='http://www.vdesign.net' target='_blank'>网站建设工作室</a></li>
		  		<li><a href='http://www.vdesign.net' target='_blank'>标准化网页设计</a></li>
		  		<li><a href='http://www.vdesign.net' target='_blank'>标准化网站建设</a></li>
		  		<li><a href='http://www.vdesign.net/html/service_web.html' target='_blank'>品牌网站建设</a></li>
		  		<li><a href='http://www.vdesign.net/html/service_design.html' target='_blank'>界面风格设计</a></li>
		  		<li><a href='http://www.vdesign.net/html/service_portal.html' target='_blank'>行业门户构建</a></li>
		  		<li><a href='http://www.vdesign.net/html/service_system.html' target='_blank'>WEB系统开发</a></li>
		  	</ul>
		  </div>
		  <div id="copyRight">
		    <div id="company">&copy;2012-2012 “视点工作室”版权所有 | <a href="http://www.miibeian.gov.cn/" target="_blank">粤ICP备11054982号-1</a> |
		      <script src="http://s120.cnzz.com/stat.php?id=1233224&web_id=1233224" language="JavaScript" charset="gb2312"></script>
		    </div>
		    <div id="author"><a href="http://www.vdesign.net" target="_blank">Site by vdesign.net</a></div>
		  </div>
		</div>

	</div>
</div>

</body>
</html>