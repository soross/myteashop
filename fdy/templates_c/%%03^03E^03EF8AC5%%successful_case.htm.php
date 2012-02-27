<?php /* Smarty version 2.6.26, created on 2012-02-27 14:39:16
         compiled from successful_case.htm */ ?>
<?php echo '

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>案例 &lt; 视点网络(视点工作室)——深圳、广州、上海、杭州、东莞地区专业网站建设服务商,网页设计知名品牌,服务范围涉及企业品牌网站建设、界面风格设计、行业门户构建、WEB系统开发等</title>
<link href="css/css.css" rel="stylesheet" type="text/css">
<meta name="keywords" content="视点工作室（深圳,广州,上海,东莞）-专业网站建设,品牌网站建设,界面风格设计,信息门户构建,WEB系统开发,网站建设知名品牌,网站建设工作室" />
<meta name="description" content="多年来，“视点工作室”全心致力于企业品牌网站建设、界面风格设计和WEB应用系统开发，用我们的专业技术和专注精神为众多客户提供了量身定做的解决方案。" />

</head>
<body id="mainPage" class="page193">

<script src="js/common.js" type="text/javascript"></script>
<script src="js/mt.js" type="text/javascript"></script>
<script src="js/reflection.js" type="text/javascript"></script>
<script language="javascript">
lytebox_doAnimations=true;
</script>
<script type="text/javascript" language="javascript" src="js/lytebox.js"></script>
<link rel="stylesheet" href="js/lytebox.css" type="text/css" media="screen" />
<div id="container">
<div id="innerContainer">
<div id="head">
  <div id="logo"><a href="\\">
    <img src=\'images/logo.png\'/>
    </a></div>
  <div id="quickBar">
    <ul>

      <li id="quickBar_home"><a href="/index.html">网站首页</a></li>

    </ul>
  </div>
  <div id="navigation">
    <ul>
    	'; ?>

      	<li id="hello">今天是2012-2-3, 欢迎访问本网站!</li>
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


      </ul>
  </div>
</div>
<script type="text/javascript">
window.addEvent(\'domready\', function(){
	if ($("navigation_265")) {
		$("navigation_265").className="navigationOverStyle";
	}
	if ($("menu_193")) {
		$("menu_193").className="menuOverStyle";
	}
	if ($$("#menu #module193").length>0) {
		$$("#menu #module193")[0].className="moduleOverStyle noOverStyle";
	}
});
tagEventEffect(sfHover,"li", "navigation");
</script>
    <div id="body">
      <div id=\'banner\'><div id=\'picShow_source\'><ul><li><p class=\'pic\'><img src=\'images/content/typeSet193_2010218211851.jpg\'/></p><p class=\'text\'>重视用户体验的可用性设计原则，高效的项目流程管理和质量控制体系，以及对工作持续的爱好与专注，一直在帮助我们成就更多成功案例...</p></li></ul></div></div>
      <div id="menu">


<ul>
<li id="menu_home"><a href="/index.html">网站首页</a></li>
<li id=\'menu_193\'><a href=\'/html/case.html\' class=\'menulink\'>案例</a><ul>
<li id=\'module198\'><a href=\'/html/case_web.html\'>企业品牌网站建设</a></li>
<li id=\'module199\'><a href=\'/html/case_design.html\'>界面风格设计</a></li>
<li id=\'module200\'><a href=\'/html/case_portal.html\'>行业门户构建</a></li>
<li id=\'module263\'><a href=\'/html/case_system.html\'>WEB系统开发</a></li>
</ul></li>
</ul>

<script type="text/javascript">
window.addEvent(\'domready\', function(){

	//左边菜单的动态效果
	var menuAction = $$(\'#menu li.menuOverStyle li a\');
	menuAction.each(function(element) {
		var fx = new Fx.Styles(element, {duration:200, wait:false});

		element.addEvent(\'mouseleave\', function(){
			fx.start({
				\'margin-right\': 10
			});
		});

		element.addEvent(\'mouseenter\', function(){
			fx.start({
				\'margin-right\': 0
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
      <div id="mainBody">
              <div class=\'clearfloat\'></div>
        <div id="position">案例</div>
        <div id="title">案例</div>
        <div id="content">
          <div class=\'content\'>
<script type="text/javascript">
window.addEvent(\'domready\', function(){

	if ($("picList_simple")) {
		tagEventEffect(sfHover,"li", "picList_simple");
		var listAction_1 = $$(\'#picList_simple p.pic\');
		listAction_1.each(function(element) {

			var fx = new Fx.Styles(element, {duration:300, wait:false});

			element.addEvent(\'mouseleave\', function(){
				fx.start({
					\'background-color\':  \'#333\'
				});
			});

			element.addEvent(\'mouseenter\', function(){
				fx.start({
					\'background-color\':  \'#000\'
				});
			});
		});
		var listAction_2 = $$(\'#picList_simple p.pic a\');
		listAction_2.each(function(element) {

			var fx = new Fx.Styles(element, {duration:300, wait:false});

			element.addEvent(\'mouseleave\', function(){
				fx.start({
					\'opacity\': 1
				});
			});

			element.addEvent(\'mouseenter\', function(){
				fx.start({
					\'opacity\': 0.5
				});
			});
		});

	}



});
</script>
'; ?>

<div id='picList_simple'><ul>
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
<li>
	<p class='pic'>
		<a href='case_<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['id']; ?>
_info.html' title='<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_name']; ?>
' style="background-image:url('<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_pic']; ?>
')">
			<img title='<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_name']; ?>
' alt='<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_name']; ?>
' src='images/spacer.gif'/>
		</a>
	</p>
	<blockquote class='text'>
		<h4>
			<a href='case_<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['id']; ?>
_info.html' title='<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_name']; ?>
'><?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_name']; ?>
</a>
		</h4>
		<p>类型：企业品牌网站建设</p>
		<p>
			<a href='<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_url']; ?>
' target='_blank'><?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_url']; ?>
</a>
		</p>
	</blockquote>
</li>
<?php endfor; endif; ?>
<!--
<li><p class='pic'><a href='/html/detail_3258.html' title='世纪启明管理顾问' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='世纪启明管理顾问' alt='世纪启明管理顾问' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3258.html' title='世纪启明管理顾问'>世纪启明管理顾问</a></h4><p>类型：企业品牌网站建设</p><p><a href='http://www.salesworld.cn' target='_blank'>http://www.salesworld.cn</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3255.html' title='瑞霖医药' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='瑞霖医药' alt='瑞霖医药' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3255.html' title='瑞霖医药'>瑞霖医药</a></h4><p>类型：企业品牌网站建设</p><p><a href='http://www.relin.cn' target='_blank'>http://www.relin.cn</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3122.html' title='海星船舶(中英文)' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='海星船舶(中英文)' alt='海星船舶(中英文)' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3122.html' title='海星船舶(中英文)'>海星船舶(中英文)</a></h4><p>类型：企业品牌网站建设</p><p><a href='http://www.heysea.com' target='_blank'>http://www.heysea.com</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3152.html' title='金活医药集团' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='金活医药集团' alt='金活医药集团' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3152.html' title='金活医药集团'>金活医药集团</a></h4><p>类型：企业品牌网站建设</p><p><a href='http://www.kingworld.com.cn/cn/common/' target='_blank'>http://www.kingworld.com.cn</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3257.html' title='Intelligent Home Solution' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='Intelligent Home Solution' alt='Intelligent Home Solution' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3257.html' title='Intelligent Home Solution'>Intelligent Home Solution</a></h4><p>类型：界面风格设计</p><p><a href='' target='_blank'></a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3256.html' title='China Nature Optical' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='China Nature Optical' alt='China Nature Optical' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3256.html' title='China Nature Optical'>China Nature Optical</a></h4><p>类型：企业品牌网站建设</p><p><a href='http://www.ntoptical.com' target='_blank'>http://www.ntoptical.com</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3150.html' title='深圳湾游艇会(中英文)' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='深圳湾游艇会(中英文)' alt='深圳湾游艇会(中英文)' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3150.html' title='深圳湾游艇会(中英文)'>深圳湾游艇会(中英文)</a></h4><p>类型：企业品牌网站建设</p><p><a href='http://www.chinamarina.com' target='_blank'>http://www.chinamarina.com</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3183.html' title='力度品牌顾问' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='力度品牌顾问' alt='力度品牌顾问' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3183.html' title='力度品牌顾问'>力度品牌顾问</a></h4><p>类型：企业品牌网站建设</p><p><a href='http://www.leedo.net' target='_blank'>http://www.leedo.net</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3153.html' title='顺络电子' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='顺络电子' alt='顺络电子' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3153.html' title='顺络电子'>顺络电子</a></h4><p>类型：企业品牌网站建设</p><p><a href='http://www.sunlordinc.com.cn/chinese/common/index.asp' target='_blank'>http://www.sunlordinc.com</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3253.html' title='中国项目网' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='中国项目网' alt='中国项目网' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3253.html' title='中国项目网'>中国项目网</a></h4><p>类型：行业门户构建</p><p><a href='http://www.china-project.com' target='_blank'>http://www.china-project.com</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3249.html' title='首届中国大学生游艇设计大赛' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='首届中国大学生游艇设计大赛' alt='首届中国大学生游艇设计大赛' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3249.html' title='首届中国大学生游艇设计大赛'>首届中国大学生游艇设计大赛</a></h4><p>类型：企业品牌网站建设</p><p><a href='http://www.yachtsdesign.com' target='_blank'>http://www.yachtsdesign.com</a></p></blockquote></li>
 -->
</ul></div>
<div class='clearfloat'></div>
<div class='pageBar'>
<p class='left'>1-31 of 31, 100条/页, 当前 1/1页</p><p class='right'><span class='first'>首页</span> <span class='previous'>上页</span><span class='number'> <strong>1</strong> </span><span class='next'>下页</span> <span class='last'>尾页</span></p>
</div>
</div>
        </div>
      </div>
      <div class="clearfloat"></div>
    </div>
    <br class="clearfloat" />

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

</div>
</div>

</body>
</html>