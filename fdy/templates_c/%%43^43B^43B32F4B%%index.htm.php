<?php /* Smarty version 2.6.26, created on 2012-02-26 05:20:53
         compiled from index.htm */ ?>
<?php echo '
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />

<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="css/home.css" rel="stylesheet" type="text/css">

<script language="javascript">
lytebox_doAnimations=true;
</script>
<link rel="stylesheet" href="css/lytebox.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/master.css"/>
</head>

<script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
<script src="js/common.js" type="text/javascript"></script>
<script src="js/mt.js" type="text/javascript"></script>
<script src="js/lytebox.js" type="text/javascript"></script>
<script type="text/javascript" src="js/hdp.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$(\'#Efdbanner\').nivoSlider();
	});
</script>

<body id="homePage">

<div id="container">
	<div id="innerContainer">

		<div id="head"  style="z-index:9999">
		  <div id="logo">
		  	<!--
		  	<a href="#"><img src=\'images/siteConfig9_2010217162228.gif\'/></a>
		  	-->
		  	<a href="#"><img src=\'images/logo.png\'/></a>
		  </div>
		  <div id="quickBar">
		    <ul>
		      <li id="quickBar_home"><a href="/index.html">网站首页</a></li>
		    </ul>
		  </div>
		  <div id="navigation" style="z-index:9900">
			<ul>
			'; ?>

		      <li id="hello">欢迎访问本网站!</li>
		      <?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['menulist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['list']['show'] = true;
$this->_sections['list']['max'] = $this->_sections['list']['loop'];
$this->_sections['list']['step'] = 1;
$this->_sections['list']['start'] = $this->_sections['list']['step'] > 0 ? 0 : $this->_sections['list']['loop']-1;
if ($this->_sections['list']['show']) {
    $this->_sections['list']['total'] = $this->_sections['list']['loop'];
    if ($this->_sections['list']['total'] == 0)
        $this->_sections['list']['show'] = false;
} else
    $this->_sections['list']['total'] = 0;
if ($this->_sections['list']['show']):

            for ($this->_sections['list']['index'] = $this->_sections['list']['start'], $this->_sections['list']['iteration'] = 1;
                 $this->_sections['list']['iteration'] <= $this->_sections['list']['total'];
                 $this->_sections['list']['index'] += $this->_sections['list']['step'], $this->_sections['list']['iteration']++):
$this->_sections['list']['rownum'] = $this->_sections['list']['iteration'];
$this->_sections['list']['index_prev'] = $this->_sections['list']['index'] - $this->_sections['list']['step'];
$this->_sections['list']['index_next'] = $this->_sections['list']['index'] + $this->_sections['list']['step'];
$this->_sections['list']['first']      = ($this->_sections['list']['iteration'] == 1);
$this->_sections['list']['last']       = ($this->_sections['list']['iteration'] == $this->_sections['list']['total']);
?>
		      	  <?php $this->assign('params', 1); ?>
			      <?php if ($this->_tpl_vars['menulist'][$this->_sections['list']['index']]['pid'] == '-1'): ?>
				      <li id="navigation_<?php echo $this->_tpl_vars['menulist'][$this->_sections['list']['index']]['remark']; ?>
"><a href="<?php echo $this->_tpl_vars['menulist'][$this->_sections['list']['index']]['url']; ?>
"><?php echo $this->_tpl_vars['menulist'][$this->_sections['list']['index']]['name']; ?>
</a>

					        <?php unset($this->_sections['lt']);
$this->_sections['lt']['name'] = 'lt';
$this->_sections['lt']['loop'] = is_array($_loop=$this->_tpl_vars['menulist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['lt']['show'] = true;
$this->_sections['lt']['max'] = $this->_sections['lt']['loop'];
$this->_sections['lt']['step'] = 1;
$this->_sections['lt']['start'] = $this->_sections['lt']['step'] > 0 ? 0 : $this->_sections['lt']['loop']-1;
if ($this->_sections['lt']['show']) {
    $this->_sections['lt']['total'] = $this->_sections['lt']['loop'];
    if ($this->_sections['lt']['total'] == 0)
        $this->_sections['lt']['show'] = false;
} else
    $this->_sections['lt']['total'] = 0;
if ($this->_sections['lt']['show']):

            for ($this->_sections['lt']['index'] = $this->_sections['lt']['start'], $this->_sections['lt']['iteration'] = 1;
                 $this->_sections['lt']['iteration'] <= $this->_sections['lt']['total'];
                 $this->_sections['lt']['index'] += $this->_sections['lt']['step'], $this->_sections['lt']['iteration']++):
$this->_sections['lt']['rownum'] = $this->_sections['lt']['iteration'];
$this->_sections['lt']['index_prev'] = $this->_sections['lt']['index'] - $this->_sections['lt']['step'];
$this->_sections['lt']['index_next'] = $this->_sections['lt']['index'] + $this->_sections['lt']['step'];
$this->_sections['lt']['first']      = ($this->_sections['lt']['iteration'] == 1);
$this->_sections['lt']['last']       = ($this->_sections['lt']['iteration'] == $this->_sections['lt']['total']);
?>
				      			<?php if ($this->_tpl_vars['menulist'][$this->_sections['lt']['index']]['pid'] == $this->_tpl_vars['menulist'][$this->_sections['list']['index']]['id']): ?>
						      		<?php $this->assign('params', 0); ?>
					      		<?php endif; ?>
				      		<?php endfor; endif; ?>

							<?php if ($this->_tpl_vars['params'] == 0): ?>
					        <ul id='sub_<?php echo $this->_tpl_vars['menulist'][$this->_sections['list']['index']]['id']; ?>
' style="z-index:9900">
					        <?php endif; ?>
					        <?php unset($this->_sections['lt']);
$this->_sections['lt']['name'] = 'lt';
$this->_sections['lt']['loop'] = is_array($_loop=$this->_tpl_vars['menulist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['lt']['show'] = true;
$this->_sections['lt']['max'] = $this->_sections['lt']['loop'];
$this->_sections['lt']['step'] = 1;
$this->_sections['lt']['start'] = $this->_sections['lt']['step'] > 0 ? 0 : $this->_sections['lt']['loop']-1;
if ($this->_sections['lt']['show']) {
    $this->_sections['lt']['total'] = $this->_sections['lt']['loop'];
    if ($this->_sections['lt']['total'] == 0)
        $this->_sections['lt']['show'] = false;
} else
    $this->_sections['lt']['total'] = 0;
if ($this->_sections['lt']['show']):

            for ($this->_sections['lt']['index'] = $this->_sections['lt']['start'], $this->_sections['lt']['iteration'] = 1;
                 $this->_sections['lt']['iteration'] <= $this->_sections['lt']['total'];
                 $this->_sections['lt']['index'] += $this->_sections['lt']['step'], $this->_sections['lt']['iteration']++):
$this->_sections['lt']['rownum'] = $this->_sections['lt']['iteration'];
$this->_sections['lt']['index_prev'] = $this->_sections['lt']['index'] - $this->_sections['lt']['step'];
$this->_sections['lt']['index_next'] = $this->_sections['lt']['index'] + $this->_sections['lt']['step'];
$this->_sections['lt']['first']      = ($this->_sections['lt']['iteration'] == 1);
$this->_sections['lt']['last']       = ($this->_sections['lt']['iteration'] == $this->_sections['lt']['total']);
?>
				      			<?php if ($this->_tpl_vars['menulist'][$this->_sections['lt']['index']]['pid'] == $this->_tpl_vars['menulist'][$this->_sections['list']['index']]['id']): ?>
						      		<li><a href='<?php echo $this->_tpl_vars['menulist'][$this->_sections['lt']['index']]['url']; ?>
'><?php echo $this->_tpl_vars['menulist'][$this->_sections['lt']['index']]['name']; ?>
</a></li>
					      		<?php endif; ?>
				      		<?php endfor; endif; ?>
				      		<?php if ($this->_tpl_vars['params'] == 0): ?>
					      	</ul>
					      	<?php endif; ?>
				      </li>
			      <?php endif; ?>
		      <?php endfor; endif; ?>
		      <?php echo '
		      <!--
		      <li id="navigation_home"><a  class="hide" href="/index.html">解决方案</a>
		        <ul id=\'sub_0\' style="z-index:9900">
		      		<li><a href=\'/html/case_web.html\'>集成部署解决方案</a></li>
		      		<li><a href=\'/html/case_design.html\'>数据中心外包解决方案</a></li>
		      		<li><a href=\'/html/case_portal.html\'>网络安全解决方案</a></li>
		      		<li><a href=\'/html/case_system.html\'>IT运维管理咨询</a></li>
		      		<li><a href=\'/html/case_system.html\'>IT整合优化咨询</a></li>
		      		<li><a href=\'/html/case_system.html\'>系统高可用性架构咨询</a></li>
		      	</ul>
		      </li>
		      <li id=\'navigation_193\'>
		      	<a href=\'/html/case.html\' class=\'menulink hide\' >IT技术服务</a>
		      	<ul id=\'sub_1\' style="z-index:9900">
		      		<li><a href=\'/html/case_web.html\'>IT技术服务</a></li>
		      		<li><a href=\'/html/case_design.html\'>IT技术服务</a></li>
		      		<li><a href=\'/html/case_portal.html\'>IT技术服务</a></li>
		      		<li><a href=\'/html/case_system.html\'>IT技术服务</a></li>
		      	</ul>
		      </li>
		      <li id=\'navigation_196\'><a href=\'/html/service.html\' class=\'menulink hide\'>IT培训</a>
		      	<ul id=\'sub_2\'>
		      		<li><a href=\'/html/service_web.html\'>企业品牌网站建设</a></li>
		      		<li><a href=\'/html/service_design.html\'>界面风格设计</a></li>
			      	<li><a href=\'/html/service_portal.html\'>行业门户构建</a></li>
			      	<li><a href=\'/html/service_system.html\'>WEB系统开发</a></li>
			      	<li><a href=\'/html/service_flow.html\'>服务流程</a></li>
		      	</ul>
		      </li>
		      <li id=\'navigation_212\'><a href=\'/html/about.html\' class=\'menulink hide\'>产品与配件</a>
		      	<ul id=\'sub_3\'>
		      		<li><a href=\'/html/about_info.html\'>简介</a></li>
		      		<li><a href=\'/html/about_view.html\'>观点</a></li>
		      		<li><a href=\'/html/about_advantage.html\'>优势</a></li>
		      		<li><a href=\'/html/about_cooperation.html\'>加盟&合作</a></li>
		      	</ul>
		      </li>
		      <li id=\'navigation_197\'><a href=\'/html/contact.html\' class=\'menulink hide\'>技术支持</a>
		      	<ul id=\'sub_4\'>
		      		<li><a href=\'/html/faq.html\'>常见问题</a></li>
		      	</ul>
		      </li>
		      <li id=\'navigation_265\'><a href=\'/html/wiki.html\' class=\'menulink hide\'>项目洽谈</a></li>
		       -->
		    </ul>
		  </div>
		</div>
			<script type="text/javascript">
				window.addEvent(\'domready\', function(){
					if ($("navigation_")) {
						$("navigation_").className="navigationOverStyle";
					}
				});
				tagEventEffect(sfHover,"li", "navigation");
			</script>
	 		<script type="text/javascript">
				window.addEvent(\'domready\', function(){
					$("navigation_home").className="navigationOverStyle";
				});
			</script>
		<!---end head-->




	    <div id="body"  style="z-index:200">
			<div id="banner">
				<div class="nybanner">
					<div class="nybanner_mainer">
						<div class="hdp" id="idTransformView"  style="z-index:100">
							  <ul class="slider" id="idSlider">
							  '; ?>

							  <?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['adlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['list']['show'] = true;
$this->_sections['list']['max'] = $this->_sections['list']['loop'];
$this->_sections['list']['step'] = 1;
$this->_sections['list']['start'] = $this->_sections['list']['step'] > 0 ? 0 : $this->_sections['list']['loop']-1;
if ($this->_sections['list']['show']) {
    $this->_sections['list']['total'] = $this->_sections['list']['loop'];
    if ($this->_sections['list']['total'] == 0)
        $this->_sections['list']['show'] = false;
} else
    $this->_sections['list']['total'] = 0;
if ($this->_sections['list']['show']):

            for ($this->_sections['list']['index'] = $this->_sections['list']['start'], $this->_sections['list']['iteration'] = 1;
                 $this->_sections['list']['iteration'] <= $this->_sections['list']['total'];
                 $this->_sections['list']['index'] += $this->_sections['list']['step'], $this->_sections['list']['iteration']++):
$this->_sections['list']['rownum'] = $this->_sections['list']['iteration'];
$this->_sections['list']['index_prev'] = $this->_sections['list']['index'] - $this->_sections['list']['step'];
$this->_sections['list']['index_next'] = $this->_sections['list']['index'] + $this->_sections['list']['step'];
$this->_sections['list']['first']      = ($this->_sections['list']['iteration'] == 1);
$this->_sections['list']['last']       = ($this->_sections['list']['iteration'] == $this->_sections['list']['total']);
?>
   							    <li><img src="<?php echo $this->_tpl_vars['adlist'][$this->_sections['list']['index']]['comm_code']; ?>
"/></li>
   							    <?php endfor; endif; ?>
   							    <!--
								<li><img src="images/ad/201109281154452.jpg"/></li>
								<li><img src="images/ad/201109281155123.jpg"/></li>
								 -->
							  </ul>
							  <ul class="num" id="idNum">
							  <?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['adlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['list']['show'] = true;
$this->_sections['list']['max'] = $this->_sections['list']['loop'];
$this->_sections['list']['step'] = 1;
$this->_sections['list']['start'] = $this->_sections['list']['step'] > 0 ? 0 : $this->_sections['list']['loop']-1;
if ($this->_sections['list']['show']) {
    $this->_sections['list']['total'] = $this->_sections['list']['loop'];
    if ($this->_sections['list']['total'] == 0)
        $this->_sections['list']['show'] = false;
} else
    $this->_sections['list']['total'] = 0;
if ($this->_sections['list']['show']):

            for ($this->_sections['list']['index'] = $this->_sections['list']['start'], $this->_sections['list']['iteration'] = 1;
                 $this->_sections['list']['iteration'] <= $this->_sections['list']['total'];
                 $this->_sections['list']['index'] += $this->_sections['list']['step'], $this->_sections['list']['iteration']++):
$this->_sections['list']['rownum'] = $this->_sections['list']['iteration'];
$this->_sections['list']['index_prev'] = $this->_sections['list']['index'] - $this->_sections['list']['step'];
$this->_sections['list']['index_next'] = $this->_sections['list']['index'] + $this->_sections['list']['step'];
$this->_sections['list']['first']      = ($this->_sections['list']['iteration'] == 1);
$this->_sections['list']['last']       = ($this->_sections['list']['iteration'] == $this->_sections['list']['total']);
?>
								<li><?php echo $this->_tpl_vars['adlist'][$this->_sections['list']['index']]['comm_value']; ?>
</li>
								 <?php endfor; endif; ?>
								 <!--
								<li>2</li>
								<li>3</li> -->
							  </ul>

						</div>
					</div>
				</div>
			</div>



	      	<div id="indexBody">
	        	<div id="service">
		          <ul>
		            <li class="web">
		              <dl>
		                <dt><a href="about.html">泛地缘简介</a></dt>
		                <dd>
		                <a href="about.html"><h1 style='color:#ff7c00;font-size:14px;'>泛地缘简介</h1><?php echo $this->_tpl_vars['aboutInfo']; ?>
</a></dd>
		              </dl>
		            </li>
		            <li class="design">
		              <dl>
		                <dt><a href="superiority.html">泛地缘优势</a></dt>
		                <dd><a href="superiority.html"><h1 style='color:#ff7c00;font-size:14px;'>泛地缘优势</h1><?php echo $this->_tpl_vars['superiorityInfo']; ?>
</a></dd>
		              </dl>
		            </li>
		            <li class="portal">
		              <dl>
		                <dt><a href="partner.html">合作伙伴</a></dt>
		                <dd><a href="partner.html"><h1 style='color:#ff7c00;font-size:14px;'>合作伙伴</h1><?php echo $this->_tpl_vars['parentInfo']; ?>
</a></dd>
		              </dl>
		            </li>
		            <li class="system">
		              <dl>
		                <dt><a href="successful_case.html">成功案例</a></dt>
		                <dd><a href="successful_case.html">
			                	<h1 style='color:#ff7c00;font-size:14px;'>成功案例</h1>
			                	<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['caseList']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['list']['show'] = true;
$this->_sections['list']['max'] = $this->_sections['list']['loop'];
$this->_sections['list']['step'] = 1;
$this->_sections['list']['start'] = $this->_sections['list']['step'] > 0 ? 0 : $this->_sections['list']['loop']-1;
if ($this->_sections['list']['show']) {
    $this->_sections['list']['total'] = $this->_sections['list']['loop'];
    if ($this->_sections['list']['total'] == 0)
        $this->_sections['list']['show'] = false;
} else
    $this->_sections['list']['total'] = 0;
if ($this->_sections['list']['show']):

            for ($this->_sections['list']['index'] = $this->_sections['list']['start'], $this->_sections['list']['iteration'] = 1;
                 $this->_sections['list']['iteration'] <= $this->_sections['list']['total'];
                 $this->_sections['list']['index'] += $this->_sections['list']['step'], $this->_sections['list']['iteration']++):
$this->_sections['list']['rownum'] = $this->_sections['list']['iteration'];
$this->_sections['list']['index_prev'] = $this->_sections['list']['index'] - $this->_sections['list']['step'];
$this->_sections['list']['index_next'] = $this->_sections['list']['index'] + $this->_sections['list']['step'];
$this->_sections['list']['first']      = ($this->_sections['list']['iteration'] == 1);
$this->_sections['list']['last']       = ($this->_sections['list']['iteration'] == $this->_sections['list']['total']);
?>
			                	<span style="padding:0px 0px 0px 20px; cursor: hand;""><?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_name']; ?>
</span><br>
			                	<?php endfor; endif; ?>
			                	<!--  onclick="javascript:location.href='caseinfo/<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['id']; ?>
.html' -->
							</a>
		                </dd>
		              </dl>
		            </li>
		          </ul>
	        	</div>
	      	</div>
	      	<!--end service-->
		</div>
	    <!--end indexBody-->
	</div>
    <!-- end body  -->

    <br class="clearfloat" />
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
</div>
</body>
</html>