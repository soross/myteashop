<?php /* Smarty version 2.6.26, created on 2012-02-27 14:39:16
         compiled from successful_case.htm */ ?>
<?php echo '

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>���� &lt; �ӵ�����(�ӵ㹤����)�������ڡ����ݡ��Ϻ������ݡ���ݸ����רҵ��վ���������,��ҳ���֪��Ʒ��,����Χ�漰��ҵƷ����վ���衢��������ơ���ҵ�Ż�������WEBϵͳ������</title>
<link href="css/css.css" rel="stylesheet" type="text/css">
<meta name="keywords" content="�ӵ㹤���ң�����,����,�Ϻ�,��ݸ��-רҵ��վ����,Ʒ����վ����,���������,��Ϣ�Ż�����,WEBϵͳ����,��վ����֪��Ʒ��,��վ���蹤����" />
<meta name="description" content="�����������ӵ㹤���ҡ�ȫ����������ҵƷ����վ���衢��������ƺ�WEBӦ��ϵͳ�����������ǵ�רҵ������רע����Ϊ�ڶ�ͻ��ṩ���������Ľ��������" />

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

      <li id="quickBar_home"><a href="/index.html">��վ��ҳ</a></li>

    </ul>
  </div>
  <div id="navigation">
    <ul>
    	'; ?>

      	<li id="hello">������2012-2-3, ��ӭ���ʱ���վ!</li>
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
      <div id=\'banner\'><div id=\'picShow_source\'><ul><li><p class=\'pic\'><img src=\'images/content/typeSet193_2010218211851.jpg\'/></p><p class=\'text\'>�����û�����Ŀ��������ԭ�򣬸�Ч����Ŀ���̹��������������ϵ���Լ��Թ��������İ�����רע��һֱ�ڰ������ǳɾ͸���ɹ�����...</p></li></ul></div></div>
      <div id="menu">


<ul>
<li id="menu_home"><a href="/index.html">��վ��ҳ</a></li>
<li id=\'menu_193\'><a href=\'/html/case.html\' class=\'menulink\'>����</a><ul>
<li id=\'module198\'><a href=\'/html/case_web.html\'>��ҵƷ����վ����</a></li>
<li id=\'module199\'><a href=\'/html/case_design.html\'>���������</a></li>
<li id=\'module200\'><a href=\'/html/case_portal.html\'>��ҵ�Ż�����</a></li>
<li id=\'module263\'><a href=\'/html/case_system.html\'>WEBϵͳ����</a></li>
</ul></li>
</ul>

<script type="text/javascript">
window.addEvent(\'domready\', function(){

	//��߲˵��Ķ�̬Ч��
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
	//Ϊ��Ϣ�б���Ӷ�̬�¼�
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
        <div id="position">����</div>
        <div id="title">����</div>
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
		<p>���ͣ���ҵƷ����վ����</p>
		<p>
			<a href='<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_url']; ?>
' target='_blank'><?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_url']; ?>
</a>
		</p>
	</blockquote>
</li>
<?php endfor; endif; ?>
<!--
<li><p class='pic'><a href='/html/detail_3258.html' title='���������������' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='���������������' alt='���������������' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3258.html' title='���������������'>���������������</a></h4><p>���ͣ���ҵƷ����վ����</p><p><a href='http://www.salesworld.cn' target='_blank'>http://www.salesworld.cn</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3255.html' title='����ҽҩ' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='����ҽҩ' alt='����ҽҩ' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3255.html' title='����ҽҩ'>����ҽҩ</a></h4><p>���ͣ���ҵƷ����վ����</p><p><a href='http://www.relin.cn' target='_blank'>http://www.relin.cn</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3122.html' title='���Ǵ���(��Ӣ��)' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='���Ǵ���(��Ӣ��)' alt='���Ǵ���(��Ӣ��)' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3122.html' title='���Ǵ���(��Ӣ��)'>���Ǵ���(��Ӣ��)</a></h4><p>���ͣ���ҵƷ����վ����</p><p><a href='http://www.heysea.com' target='_blank'>http://www.heysea.com</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3152.html' title='���ҽҩ����' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='���ҽҩ����' alt='���ҽҩ����' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3152.html' title='���ҽҩ����'>���ҽҩ����</a></h4><p>���ͣ���ҵƷ����վ����</p><p><a href='http://www.kingworld.com.cn/cn/common/' target='_blank'>http://www.kingworld.com.cn</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3257.html' title='Intelligent Home Solution' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='Intelligent Home Solution' alt='Intelligent Home Solution' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3257.html' title='Intelligent Home Solution'>Intelligent Home Solution</a></h4><p>���ͣ����������</p><p><a href='' target='_blank'></a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3256.html' title='China Nature Optical' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='China Nature Optical' alt='China Nature Optical' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3256.html' title='China Nature Optical'>China Nature Optical</a></h4><p>���ͣ���ҵƷ����վ����</p><p><a href='http://www.ntoptical.com' target='_blank'>http://www.ntoptical.com</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3150.html' title='��������ͧ��(��Ӣ��)' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='��������ͧ��(��Ӣ��)' alt='��������ͧ��(��Ӣ��)' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3150.html' title='��������ͧ��(��Ӣ��)'>��������ͧ��(��Ӣ��)</a></h4><p>���ͣ���ҵƷ����վ����</p><p><a href='http://www.chinamarina.com' target='_blank'>http://www.chinamarina.com</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3183.html' title='����Ʒ�ƹ���' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='����Ʒ�ƹ���' alt='����Ʒ�ƹ���' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3183.html' title='����Ʒ�ƹ���'>����Ʒ�ƹ���</a></h4><p>���ͣ���ҵƷ����վ����</p><p><a href='http://www.leedo.net' target='_blank'>http://www.leedo.net</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3153.html' title='˳�����' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='˳�����' alt='˳�����' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3153.html' title='˳�����'>˳�����</a></h4><p>���ͣ���ҵƷ����վ����</p><p><a href='http://www.sunlordinc.com.cn/chinese/common/index.asp' target='_blank'>http://www.sunlordinc.com</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3253.html' title='�й���Ŀ��' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='�й���Ŀ��' alt='�й���Ŀ��' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3253.html' title='�й���Ŀ��'>�й���Ŀ��</a></h4><p>���ͣ���ҵ�Ż�����</p><p><a href='http://www.china-project.com' target='_blank'>http://www.china-project.com</a></p></blockquote></li>
<li><p class='pic'><a href='/html/detail_3249.html' title='�׽��й���ѧ����ͧ��ƴ���' style="background-image:url('images/case/picNews3259_2011114142449.jpg')"><img title='�׽��й���ѧ����ͧ��ƴ���' alt='�׽��й���ѧ����ͧ��ƴ���' src='images/spacer.gif'/></a></p><blockquote class='text'><h4><a href='/html/detail_3249.html' title='�׽��й���ѧ����ͧ��ƴ���'>�׽��й���ѧ����ͧ��ƴ���</a></h4><p>���ͣ���ҵƷ����վ����</p><p><a href='http://www.yachtsdesign.com' target='_blank'>http://www.yachtsdesign.com</a></p></blockquote></li>
 -->
</ul></div>
<div class='clearfloat'></div>
<div class='pageBar'>
<p class='left'>1-31 of 31, 100��/ҳ, ��ǰ 1/1ҳ</p><p class='right'><span class='first'>��ҳ</span> <span class='previous'>��ҳ</span><span class='number'> <strong>1</strong> </span><span class='next'>��ҳ</span> <span class='last'>βҳ</span></p>
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