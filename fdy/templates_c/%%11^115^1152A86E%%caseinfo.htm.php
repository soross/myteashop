<?php /* Smarty version 2.6.26, created on 2012-02-27 14:39:20
         compiled from caseinfo.htm */ ?>



<?php echo '

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<meta name=\'keywords\' content=\'视点工作室（深圳,广州,上海,东莞）-专业网站建设,品牌网站建设,界面风格设计,信息门户构建,WEB系统开发,网站建设知名品牌,网站建设工作室\' />
<meta name=\'description\' content=\'多年来，“视点工作室”全心致力于企业品牌网站建设、界面风格设计和WEB应用系统开发，用我们的专业技术和专注精神为众多客户提供了量身定做的解决方案。\' />

<title>企业品牌网站建设 &lt; 案例 &lt; 视点网络(视点工作室)——深圳、广州、上海、杭州、东莞地区专业网站建设服务商,网页设计知名品牌,服务范围涉及企业品牌网站建设、界面风格设计、行业门户构建、WEB系统开发等</title>

<meta name="keywords" content="视点工作室（深圳,广州,上海,东莞）-专业网站建设,品牌网站建设,界面风格设计,信息门户构建,WEB系统开发,网站建设知名品牌,网站建设工作室" />
<meta name="description" content="多年来，“视点工作室”全心致力于企业品牌网站建设、界面风格设计和WEB应用系统开发，用我们的专业技术和专注精神为众多客户提供了量身定做的解决方案。" />
<link href="css/css.css" rel="stylesheet" type="text/css">
<style type="text/css">
#body #menu dl ul li#module198 {
}
#body #menu dl ul li#module198 a {
}
</style>
</head>
<body id="detailPage" class="typeCode193">

<script src="js/common.js" type="text/javascript"></script>
<script src="js/mt.js" type="text/javascript"></script>
<script src="js/reflection.js" type="text/javascript"></script>
<script language="javascript">
lytebox_doAnimations=true;
</script>
<script type="text/javascript" language="javascript" src="js/lytebox.js"></script>
<link rel="stylesheet" href="css/lytebox.css" type="text/css" media="screen" />
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
      <li id="hello">今天是2012-2-3, 欢迎访问本网站!</li>
   			 '; ?>

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
	if ($$("#menu #module198").length>0) {
		$$("#menu #module198")[0].className="moduleOverStyle noOverStyle";
	}
});
tagEventEffect(sfHover,"li", "navigation");
</script>

    <div id="body">
	        <div id=\'banner\'><div id=\'picShow_source\'><ul><li><p class=\'pic\'><img src=\'images/content/typeSet193_2010218211851.jpg\'/></p><p class=\'text\'>重视用户体验的可用性设计原则，高效的项目流程管理和质量控制体系，以及对工作持续的爱好与专注，一直在帮助我们成就更多成功案例...</p></li></ul></div></div>
      <div id="menu">


<ul>
<li id="menu_home"><a href="/index.html">网站首页</a></li>
<li id=\'menu_193\'><a href=\'/html/case.html\' class=\'menulink\'>案例</a><ul><li id=\'module198\'><a href=\'/html/case_web.html\'>企业品牌网站建设</a></li><li id=\'module199\'><a href=\'/html/case_design.html\'>界面风格设计</a></li><li id=\'module200\'><a href=\'/html/case_portal.html\'>行业门户构建</a></li><li id=\'module263\'><a href=\'/html/case_system.html\'>WEB系统开发</a></li></ul></li>
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
'; ?>

      </div>
      <div id="mainBody">
              <div class='clearfloat'></div>
        <div id="position">首页 > <a href='main.asp?typeCode=193&id_module=193,198,199,200,263'>案例</a> &gt; 企业品牌网站建设</div>
        <div id="title">企业品牌网站建设</div>
        <div id="content">
          <div class='title'><?php echo $this->_tpl_vars['case']['case_name']; ?>
</div><div id='picShow_thumbs'>
          <ul>
          <?php if ($this->_tpl_vars['case']['case_pic'] != ""): ?>
          <li>
	          <p class='pic'>
	          	<a href='<?php echo $this->_tpl_vars['case']['case_pic']; ?>
' title='附图' rel='lytebox[plants]' style="background-image:url('<?php echo $this->_tpl_vars['case']['case_pic']; ?>
')">
	          		<img title='附图' alt='附图' src='images/spacer.gif'/>
	          	</a>
	          </p>
			  <p class='text'>附图</p>
		  </li>
		  <?php endif; ?>
		  <?php if ($this->_tpl_vars['case']['case_pic'] != ""): ?>
          <li>
          	<p class='pic'>
          		<a href='<?php echo $this->_tpl_vars['case']['case_pic_a']; ?>
' title='附图' rel='lytebox[plants]' style="background-image:url('<?php echo $this->_tpl_vars['case']['case_pic_a']; ?>
')">
          			<img title='附图' alt='附图' src='images/spacer.gif'/>
          		</a>
          	</p>
          	<p class='text'>附图</p>
          </li>
          <?php endif; ?>
          <?php if ($this->_tpl_vars['case']['case_pic'] != ""): ?>
          <li>

          	<p class='pic'>
	          	<a href='<?php echo $this->_tpl_vars['case']['case_pic_b']; ?>
' title='附图' rel='lytebox[plants]' style="background-image:url('<?php echo $this->_tpl_vars['case']['case_pic_b']; ?>
')">
	          		<img title='附图' alt='附图' src='images/spacer.gif'/>
	          	</a>
          	</p>
          	<p class='text'>附图</p>
          </li>
          <?php endif; ?>
          <?php if ($this->_tpl_vars['case']['case_pic'] != ""): ?>
          <li>
          	<p class='pic'>
          		<a href='<?php echo $this->_tpl_vars['case']['case_pic_c']; ?>
' title='附图' rel='lytebox[plants]' style="background-image:url('<?php echo $this->_tpl_vars['case']['case_pic_c']; ?>
')">
          			<img title='附图' alt='附图' src='images/spacer.gif'/>
          		</a>
          	</p>
          	<p class='text'>附图</p>
          </li>
          <?php endif; ?>

          </ul></div>
 <?php echo '
<script type="text/javascript">
window.addEvent(\'domready\', function(){

	//案例图片组效果(横)
	var szNormal = 145, szSmall  = 130, szFull   = 200;
	var kwicks = $$("#picShow_thumbs .pic a");
	var fx = new Fx.Elements(kwicks, {wait: false, duration: 300, transition: Fx.Transitions.Quad.easeOut});
	kwicks.each(function(kwick, i) {
		kwick.addEvent("mouseenter", function(event) {
			var o = {};
			o[i] = {width: [kwick.getStyle("width").toInt(), szFull]}
			kwicks.each(function(other, j) {
				if(i != j) {
					var w = other.getStyle("width").toInt();
					if(w != szSmall) o[j] = {width: [w, szSmall]};
				}
			});
			fx.start(o);
		});
		kwick.addEvent("mouseleave", function(event) {
			var o = {};
			kwicks.each(function(kwick, i) {
				o[i] = {width: [kwick.getStyle("width").toInt(), szNormal]}
			});
			fx.start(o);
		})
	});


});
</script>
'; ?>

<div class='newsSum'>
<h4><a href='#' title='<?php echo $this->_tpl_vars['case']['case_name']; ?>
'><?php echo $this->_tpl_vars['case']['case_name']; ?>
</a></h4>
<p>客户性质：<?php echo $this->_tpl_vars['case']['case_type']; ?>
</p>
<p>客户名称：<?php echo $this->_tpl_vars['case']['case_cust']; ?>
</p>
<p><a href='<?php echo $this->_tpl_vars['case']['case_url']; ?>
' target='_blank'>
<a href='<?php echo $this->_tpl_vars['case']['case_url']; ?>
' target='_blank'><?php echo $this->_tpl_vars['case']['case_url']; ?>
</a>
</a>
</p></div>
<div class='content'>
<?php echo $this->_tpl_vars['case']['case_desc']; ?>

</div>
          <div id="toolBar">
            <ul>
              <li class="home">
              <a href="/">返回首页</a>
              </li>
              <li class="top"><a href="#">跳到顶部</a></li>
              <li class="back"><a href="javascript:history.back(-1)">返回上页</a></li>
            </ul>
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