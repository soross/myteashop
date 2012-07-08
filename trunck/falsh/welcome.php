<!DOCTYPE HTML>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />

	<title>Web 2.0 Login Form by Azmind.com</title>

	<link rel="stylesheet" href="css/style.css" type="text/css" />
	<link rel="stylesheet" type="text/css" href="css/jquery.qtip.min.css" />


<style type="text/css">
	*{padding:0;margin:0}
	p{line-height:28px}

	.classlist{
	width:75px;background-color:#e4e4e4;position:fixed;_position:absolute;right:2px;bottom:74px;border-radius:5px;box-shadow:0 0 2px #6E6E6E;
	}


	.classlist li{
	list-style: none;
	}
	.classlist .imgli{height:72px;margin:5px;float:left}

	.go{width:75px;background-color:#e4e4e4;height:74px;position:fixed;_position:absolute;right:2px;bottom:0px;border-radius:5px;box-shadow:0 0 2px #6E6E6E}
	.go a{background:url(images/selectclasstip.png) no-repeat;display:block;text-indent:999em;line-height:999px;width:70px;margin:5px;border:0;overflow:hidden;float:left}
	.go .feedback{background-position:0 -140px;height:70px}
	.go .feedback:hover{background-position:0px -70px}


	.style13{
		width: 200px;
		height: 100px;
		font-size:12px;
		line-height:18px;
		border:1px solid #D3D3D3;
		background-color: #F7F7F7;
	}

	.style13 h2{
		font-size:14px;
		color:#50c5e1;
		padding:5px 0 5px 5px;
	}
	.style13 p{
		font-size:12px;
	}
</style>


	</head>

	<body>
		<a name="gotop"></a>
		<div id="container">
			<div class="welcome">
				<div class="welcome-user">Welcome 张三!</div>
				<div class="welcome-text">
				欢迎进入《网络综合布线技术》课程的学习天地!<br/><br/>
				即将进入第一模块的学习天地!<br/>
				要求：理解网络综合布线的含义;<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;掌握网络综合布线的系统组成;<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;掌握各子系统的特点!<br/>
				</div>
				<div class="home"><a href="javascript:show('classdiv');"><img src="images/selectclass.png"></a></div>
			</div>
		</div>
		<div id="footer">
			Web Design by <a href="http://www.fjfdy.com">FJFDY.com</a> - <a href="http://wpa.qq.com/msgrd?v=3&uin=258372895&site=qq&menu=yes">Help it here!</a>
		</div>
		<a name="gobottom"></a>



		<div id="classdiv" class="classlist" style="display:none;">
			<li class="imgli"><a href="content.php" title="<div class='style13'><h2>网络综合布线简介</h2>&nbsp;主要内容：<br>&nbsp;&nbsp;&nbsp;网络综合布线的含义;<br>&nbsp;&nbsp;&nbsp;网络综合布线的系统组成;<br>&nbsp;&nbsp;&nbsp;各子系统的特点!</div>"><img src="images/icon_01.png"/></a></li>
			<li class="imgli"><a href="JavaScript:alert('您还没通过网络综合布线简介的学习!');"  title="<div class='style13'><h2>网络综合布线设计</h2>&nbsp;主要内容：<br>&nbsp;&nbsp;&nbsp;网络综合布线的含义;<br>&nbsp;&nbsp;&nbsp;网络综合布线的系统组成;<br>&nbsp;&nbsp;&nbsp;各子系统的特点!</div>"><img src="images/icon_02.png"/></a></li>
			<li class="imgli"><a href="JavaScript:alert('您还没通过网络综合布线设计的学习!');"  title="<div class='style13'><h2>网络综合布线工程技术</h2>&nbsp;主要内容：<br>&nbsp;&nbsp;&nbsp;网络综合布线的含义;<br>&nbsp;&nbsp;&nbsp;网络综合布线的系统组成;<br>&nbsp;&nbsp;&nbsp;各子系统的特点!</div>"><img src="images/icon_03.png"/></a></li>
			<li class="imgli"><a href="JavaScript:alert('您还没通过网络综合布线工程技术的学习!');"  title="<div class='style13'><h2>网络综合布线验收</h2>&nbsp;主要内容：<br>&nbsp;&nbsp;&nbsp;网络综合布线的含义;<br>&nbsp;&nbsp;&nbsp;网络综合布线的系统组成;<br>&nbsp;&nbsp;&nbsp;各子系统的特点!</div>"><img src="images/icon_04.png"/></a></li>
			<li class="imgli"><a href="JavaScript:alert('您还没通过网络综合布线验收的学习!');"  title="<div class='style13'><h2>网络综合布线案例</h2>&nbsp;主要内容：<br>&nbsp;&nbsp;&nbsp;网络综合布线的含义;<br>&nbsp;&nbsp;&nbsp;网络综合布线的系统组成;<br>&nbsp;&nbsp;&nbsp;各子系统的特点!</div>"><img src="images/icon_05.png"/></a></li>
		</div>
		<div class="go">
			<a class="feedback" href="javascript:show('classdiv');"><img src="images/selecetclasstip.png"/></a>
		</div>
	</body>

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.qtip.min.js"></script>

	<script  type="text/javascript">
		function show(vid){
			if(document.getElementById(vid).style.display=="none"){
				document.getElementById(vid).style.display="block";
			}else{
				document.getElementById(vid).style.display="none";
			}
		}


		$(document).ready(function()
		{
			$('a[title]').qtip({
				position: {
					my: 'right bottom', // Use the corner...
					at: 'left center' // ...and opposite corner
				},
				style: {
					classes: 'ui-tooltip-shadow ui-tooltip-light'
				}
			});
		});

		/**
		var at = [
		'bottom left', 'bottom right', 'bottom center',
		'top left', 'top right', 'top center',
		'left center', 'left top', 'left bottom',
		'right center', 'right top', 'right bottom', 'center'
		],
		my = [
			'top left', 'top right', 'top center',
			'bottom left', 'bottom right', 'bottom center',
			'right center', 'right top', 'right bottom',
			'left center', 'left top', 'left bottom', 'center'
		],
		styles = [
			'red', 'blue', 'dark', 'light', 'green', 'jtools', 'plain', 'youtube', 'cluetip', 'tipsy', 'tipped', 'bootstrap'
		];

		// Create the tooltips only on document load
		$(document).ready(function()
		{
			// Loop through the my array
			$('.structure')

					.removeData('qtip')
					.qtip({
						content: {
							text: 'At its left bottom',
							title: {
								text: 'My right bottom',
								button: true
							}
						},
						position: {
							my: 'right bottom', // Use the corner...
							at: 'left bottom' // ...and opposite corner
						},
						show: {
							event: false, // Don't specify a show event...
							ready: true // ... but show the tooltip when ready
						},
						hide: false, // Don't specify a hide event either!
						style: {
							classes: 'ui-tooltip-shadow ui-tooltip-light'
						}
					});
		});

		**/
	</script>
</html>
