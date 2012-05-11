<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-cn" xml:lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK"/>

    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />

    <meta http-equiv="Cache-Control" content="no-store"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    <title></title>
    <meta name="title" content=""/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
    <script type="text/javascript">
    //<![CDATA[
        var app_domain = 'v.yupoo.com';
        var sprout_app_domain = 'yupoo.com';
        var media_root = 'http://v.yupoo.com';

        var auth_hash = 'u0v7ne7s8dibnrc6f6lp607ja0';
        var api_key = 'e92d590fb501a3e4770babf1435af8ff';
        var api_secret = '4faca9b72ca53';
        var api_endpoint = '/api/rest/';
        var api_response_format = 'json';
        var current_user = null;
    //]]>
    </script>

    <link rel="stylesheet" type="text/css" href="http://v.yupoo.com/css/screen.css?15395000.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="http://v.yupoo.com/css/photos.css?15455000.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="http://v.yupoo.com/css/lighteditor.css?15467000.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="http://v.yupoo.com/css/account.css?15284000.css" media="screen" />
    <script type="text/javascript" src="http://v.yupoo.com/js/global.js?15467000.js" charset="utf-8"></script>

</head>
<body class="ie ie7">
<script type="text/javascript">
//<![CDATA[
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-8399606-4']);

  _gaq.push(['_addOrganic', 'soso', 'w']);
  _gaq.push(['_addOrganic', 'yodao', 'q']);
  _gaq.push(['_addOrganic', 'vnet', 'kw']);
  _gaq.push(['_addOrganic', 'sogou', 'query']);

    _gaq.push(['_trackPageview']);
    _gaq.push(['_setDomainName', '.v.yupoo.com']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ga);
  })();
//]]>
</script>
            <!-- HEADER -->
    <div id="header">
        <div id="logo"><a href="http://v.yupoo.com/" class="logo" title="又拍图片管家"><img class="fixpng" src="http://v.yupoo.com/img/logo_cube.png" alt="又拍图片管家" /></a></div>
        <ul id="main_menu" class="drop-menu">
        <li id="menu_index"><a href="http://v.yupoo.com/">首页</a></li>
        <li id="menu_home" class="selected"><a href="http://v.yupoo.com/dashboard/" >管理中心</a></li>
                    <!--li id="menu_intro"><a href="http://v.yupoo.com/info/intro/">服务介绍</a></li-->
            <li id="menu_feature"><a href="http://v.yupoo.com/explore/features/">产品特性</a></li>
            <li id="menu_price"><a href="http://v.yupoo.com/explore/price/">产品价格</a></li>
            <li id="menu_upyun"><a href="http://www.upyun.com" target="_blank" >云存储</a></li>
            <li id="menu_help"><a href="http://help.yupoo.com/">帮助中心</a></li>
                </ul>
            <div id="account_menu" style="right:10px;">
            <ul class="menu">
                            <li>你尚未登录</li>
                <li><a href="http://v.yupoo.com/account/login/">登录</a></li>
                <li><a href="http://v.yupoo.com/account/signup/">注册</a></li>
                        </ul>
        </div>
        <script type="text/javascript">
            dropmenu.init([{name:'home', popup: false}, {name:'intro', popup: false}, {name:'feature', popup:false}, {name:'price',popup:false}, {name: 'upyun', popup: false}, {name: 'help', popup: false}]);
        </script>
    </div>

    <div id="content">

        <!-- BODY -->
        <div id="middle-wrapper">
            <!-- MESSAGES -->
                        <!-- END MESSAGES -->
                        <div id="container" class="clearfix">
            <!-- CONTENT -->

<div id="main">
    <h1>注册免费帐户</h1>
    <div class="thin" id="signup">
        <form id="signupForm" name="signupForm" action="/account/signup/" method="post" class="x-form left-label" >
            <fieldset>
                <ol>
                    <li>
                        <label for="user_username">用户名:</label>
                        <input type="text" id="user_username" name="username" value="" class="txt" tabindex="1"/>
                                                <p class="instruct">用户登录、获取个人图片主页地址</p>
                    </li>
                    <li>
                        <label for="user_email">Email地址:</label>
                        <input type="text" id="user_email" name="email" size="30" value="" class="txt" tabindex="2"/>
                                                <p class="instruct">用于确认你的身份，或者登录</p>
                    </li>
                    <li>
                        <label for="user_password">设一个密码:</label>
                        <input type="password" id="user_password" name="password" value="" class="txt" tabindex="3"/>
                                                <p class="instruct">4到32位的字母或数字的组合</p>
                    </li>
                    <li>
                        <label for="confirm_password">密码确认:</label>
                        <input type="password" id="confirm_password" name="password2" value="" class="txt" tabindex="4"/>
                                            </li>
                    <li>
                        <label for="recaptcha_input">安全验证:</label>
                        <p class="instruct">为了防止恶意注册，请输入下面的单词: </p>
                        <div id="recaptcha" style="padding-left: 110px;margin-top: 5px;">
                            <div id="recaptcha_image" style="width: 300px; height: 57px;">
                                <img style="display:block;" height="57" width="300" src="http://v.yupoo.com/img/spacer.gif" />
                            </div>
                            <input type="hidden" name="recaptcha_challenge_field" id="recaptcha_challenge_field" value="" />
                            <input name="recaptcha_response_field" id="recaptcha_response_field" type="text" size="35" class="txt required" autocomplete="off" tabindex="5" />
                        </div>
                        <p class="instruct">看不清楚，<a id="upai_recaptcha_reload" href="javascript:Recaptcha.reload();">换一组</a></p>
                    </li>
                    <li class="terms">
                        <input id="privacy_checker" type="checkbox" checked="checked" name="privacy" tabindex="5"/>
                        <label for="privacy_checker" class="instruct">我已阅读并接受网站的<a target="_blank" href="http://www.yupoo.com/info/terms/">服务条款</a></label>
                                            </li>
                </ol>
            </fieldset>
            <fieldset class="submit clearfix">
                <input type="hidden" name="form_cookie" value="b70131bf458fde462a1b685d7f7b9d46" />
                <input id="submit" type="submit" value="马上注册" class="btn" tabindex="6"/>
            </fieldset>
        </form>
    </div>
</div>

<script type="text/javascript" src="http://www.google.com/recaptcha/api/js/recaptcha_ajax.js"></script>
<script type="text/javascript">
    Recaptcha.create('6LeiScYSAAAAAAD0KRnkXS_LrhnO5Ua2FNhMR71C', 'recaptcha', {
        theme: 'custom',
        callback: Recaptcha.focus_response_field
    });
</script>
            <!-- END CONTENT -->
            </div>
        </div>
        <!-- END BODY -->
    </div>

<!-- SITEMAP -->
<!-- END SITEMAP -->

        <!-- FOOTER -->
    <div id="footer">
        <div class="wrap">
            <div id="yplogo">
                <a href="http://www.yupoo.com/" class="yplogo">Yupoo.com</a>
            </div>
            <ul id="bottom_nav">
                <li>
                    <ul class="bottom_subnav">
                        <li class="title">又拍图片管家</li>
                        <li><a href="http://v.yupoo.com/info/about/">关于又拍图片管家</a></li>
                        <li><a href="http://blog.yupoo.com/" target="_blank">官方博客</a></li>
                        <li><a href="http://www.yupoo.com/info/contact/" target="_blank">联系我们</a></li>
                        <li><a href="http://www.yupoo.com/info/partner/" target="_blank">与又拍合作</a></li>
                    </ul>
                </li>
                <li>
                    <ul class="bottom_subnav">
                        <li class="title">旗下网站</li>
                        <li><a href="http://www.yupoo.com/">又拍网</a></li>
                        <li><a href="http://v.yupoo.com/">又拍图片管家</a></li>
                    </ul>
                </li>
                <li>
                    <ul class="bottom_subnav">
                        <li class="title">合作伙伴</li>
                        <li><a href="http://www.juandou.com/" title="卷豆网-服务社区电子商务" target="_blank"rel="external nofollow" onclick="javascript:_gaq.push(['_trackPageview', '/click/index/juandou/']);">卷豆网</a>
</li>
                        <li><a href="http://www.jiankongbao.com/" title="监控宝" target="_blank"rel="external nofollow" onclick="javascript:_gaq.push(['_trackPageview', '/click/index/jiankongbao/']);">监控宝</a></li>
                        <li><a href="http://www.ebrun.com/" title="亿邦动力网" target="_blank"rel="external nofollow" onclick="javascript:_gaq.push(['_trackPageview', '/click/index/ebrun/']);">亿邦动力</a></li>
                    </ul>
                </li>
                <li style="border-right:none;">
                    <ul class="bottom_subnav">
                        <li class="title">更多</li>
                        <li><a href="http://help.yupoo.com/">帮助论坛</a></li>
                        <li><a href="http://v.yupoo.com/">淘宝相册</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div id="copyright">
            <div class="wrap">Copyright &copy; 2005-2010 <a href="http://www.yupoo.com/">Yupoo.com</a>, All Rights Reserved. </div>
        </div>
        <div class="clear"></div>
    </div>


<script type="text/javascript">
//<![CDATA[
    window.addEvent('domready', function(){
    });
//]]>
</script>
<script type="text/javascript">
//<![CDATA[
    if (top.location != window.location) top.location.href = window.location.href;
//]]>
</script>
</body>
</html>
<!-- 0.0056018829345703 seconds -->
