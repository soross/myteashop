<?php /* Smarty version 2.6.26, created on 2012-02-27 14:06:25
         compiled from inc/top.html */ ?>
<?php echo '
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>��ҵƷ����վ���� &lt; ���� &lt; �ӵ�����(�ӵ㹤����)�������ڡ����ݡ��Ϻ������ݡ���ݸ����רҵ��վ���������,��ҳ���֪��Ʒ��,����Χ�漰��ҵƷ����վ���衢��������ơ���ҵ�Ż�������WEBϵͳ������</title>

<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="css/css.css" rel="stylesheet" type="text/css">
<link href="css/contact.css" rel="stylesheet" type="text/css" />

</head>
<body id="mainPage" class="page238">

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

		<div id="head"  style="z-index:9999">
		<div id="logo">
		  	<!--
		  	<a href="#"><img src=\'images/siteConfig9_2010217162228.gif\'/></a>
		  	-->
		  	<a href="index.html"><img src=\'images/logo.png\'/></a>
		  </div>
		  <div id="quickBar">
		    <ul>
		      <li id="quickBar_home"><a href="/index.html">��վ��ҳ</a></li>
		    </ul>
		  </div>
		  <div id="navigation" style="z-index:9900">
			<ul>
			'; ?>

		      <li id="hello">��ӭ���ʱ���վ!</li>
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
		      <li id="navigation_home"><a  class="hide" href="/index.html">�������</a>
		        <ul id=\'sub_0\' style="z-index:9900">
		      		<li><a href=\'/html/case_web.html\'>���ɲ���������</a></li>
		      		<li><a href=\'/html/case_design.html\'>������������������</a></li>
		      		<li><a href=\'/html/case_portal.html\'>���簲ȫ�������</a></li>
		      		<li><a href=\'/html/case_system.html\'>IT��ά������ѯ</a></li>
		      		<li><a href=\'/html/case_system.html\'>IT�����Ż���ѯ</a></li>
		      		<li><a href=\'/html/case_system.html\'>ϵͳ�߿����Լܹ���ѯ</a></li>
		      	</ul>
		      </li>
		      <li id=\'navigation_193\'>
		      	<a href=\'/html/case.html\' class=\'menulink hide\' >IT��������</a>
		      	<ul id=\'sub_1\' style="z-index:9900">
		      		<li><a href=\'/html/case_web.html\'>IT��������</a></li>
		      		<li><a href=\'/html/case_design.html\'>IT��������</a></li>
		      		<li><a href=\'/html/case_portal.html\'>IT��������</a></li>
		      		<li><a href=\'/html/case_system.html\'>IT��������</a></li>
		      	</ul>
		      </li>
		      <li id=\'navigation_196\'><a href=\'/html/service.html\' class=\'menulink hide\'>IT��ѵ</a>
		      	<ul id=\'sub_2\'>
		      		<li><a href=\'/html/service_web.html\'>��ҵƷ����վ����</a></li>
		      		<li><a href=\'/html/service_design.html\'>���������</a></li>
			      	<li><a href=\'/html/service_portal.html\'>��ҵ�Ż�����</a></li>
			      	<li><a href=\'/html/service_system.html\'>WEBϵͳ����</a></li>
			      	<li><a href=\'/html/service_flow.html\'>��������</a></li>
		      	</ul>
		      </li>
		      <li id=\'navigation_212\'><a href=\'/html/about.html\' class=\'menulink hide\'>��Ʒ�����</a>
		      	<ul id=\'sub_3\'>
		      		<li><a href=\'/html/about_info.html\'>���</a></li>
		      		<li><a href=\'/html/about_view.html\'>�۵�</a></li>
		      		<li><a href=\'/html/about_advantage.html\'>����</a></li>
		      		<li><a href=\'/html/about_cooperation.html\'>����&����</a></li>
		      	</ul>
		      </li>
		      <li id=\'navigation_197\'><a href=\'/html/contact.html\' class=\'menulink hide\'>����֧��</a>
		      	<ul id=\'sub_4\'>
		      		<li><a href=\'/html/faq.html\'>��������</a></li>
		      	</ul>
		      </li>
		      <li id=\'navigation_265\'><a href=\'/html/wiki.html\' class=\'menulink hide\'>��ĿǢ̸</a></li>
		       -->
		    </ul>
		  </div>
		</div>
<script type="text/javascript">
window.addEvent(\'domready\', function(){
	if ($("navigation_'; ?>
<?php echo $this->_tpl_vars['nav_style']; ?>
<?php echo '")) {
		$("navigation_'; ?>
<?php echo $this->_tpl_vars['nav_style']; ?>
<?php echo '").className="navigationOverStyle";
	}
	if ($("menu_212")) {
		$("menu_212").className="menuOverStyle";
	}
	if ($$("#menu #module'; ?>
<?php echo $this->_tpl_vars['nav_son_style']; ?>
<?php echo '").length>0) {
		$$("#menu #module'; ?>
<?php echo $this->_tpl_vars['nav_son_style']; ?>
<?php echo '")[0].className="moduleOverStyle noOverStyle";
	}
});
tagEventEffect(sfHover,"li", "navigation");

</script>
'; ?>