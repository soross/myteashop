<?php /* Smarty version 2.6.26, created on 2012-02-27 14:39:20
         compiled from caseinfo.htm */ ?>



<?php echo '

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<meta name=\'keywords\' content=\'�ӵ㹤���ң�����,����,�Ϻ�,��ݸ��-רҵ��վ����,Ʒ����վ����,���������,��Ϣ�Ż�����,WEBϵͳ����,��վ����֪��Ʒ��,��վ���蹤����\' />
<meta name=\'description\' content=\'�����������ӵ㹤���ҡ�ȫ����������ҵƷ����վ���衢��������ƺ�WEBӦ��ϵͳ�����������ǵ�רҵ������רע����Ϊ�ڶ�ͻ��ṩ���������Ľ��������\' />

<title>��ҵƷ����վ���� &lt; ���� &lt; �ӵ�����(�ӵ㹤����)�������ڡ����ݡ��Ϻ������ݡ���ݸ����רҵ��վ���������,��ҳ���֪��Ʒ��,����Χ�漰��ҵƷ����վ���衢��������ơ���ҵ�Ż�������WEBϵͳ������</title>

<meta name="keywords" content="�ӵ㹤���ң�����,����,�Ϻ�,��ݸ��-רҵ��վ����,Ʒ����վ����,���������,��Ϣ�Ż�����,WEBϵͳ����,��վ����֪��Ʒ��,��վ���蹤����" />
<meta name="description" content="�����������ӵ㹤���ҡ�ȫ����������ҵƷ����վ���衢��������ƺ�WEBӦ��ϵͳ�����������ǵ�רҵ������רע����Ϊ�ڶ�ͻ��ṩ���������Ľ��������" />
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

      <li id="quickBar_home"><a href="/index.html">��վ��ҳ</a></li>

    </ul>
  </div>
  <div id="navigation">
    <ul>
      <li id="hello">������2012-2-3, ��ӭ���ʱ���վ!</li>
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
	        <div id=\'banner\'><div id=\'picShow_source\'><ul><li><p class=\'pic\'><img src=\'images/content/typeSet193_2010218211851.jpg\'/></p><p class=\'text\'>�����û�����Ŀ��������ԭ�򣬸�Ч����Ŀ���̹��������������ϵ���Լ��Թ��������İ�����רע��һֱ�ڰ������ǳɾ͸���ɹ�����...</p></li></ul></div></div>
      <div id="menu">


<ul>
<li id="menu_home"><a href="/index.html">��վ��ҳ</a></li>
<li id=\'menu_193\'><a href=\'/html/case.html\' class=\'menulink\'>����</a><ul><li id=\'module198\'><a href=\'/html/case_web.html\'>��ҵƷ����վ����</a></li><li id=\'module199\'><a href=\'/html/case_design.html\'>���������</a></li><li id=\'module200\'><a href=\'/html/case_portal.html\'>��ҵ�Ż�����</a></li><li id=\'module263\'><a href=\'/html/case_system.html\'>WEBϵͳ����</a></li></ul></li>
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
'; ?>

      </div>
      <div id="mainBody">
              <div class='clearfloat'></div>
        <div id="position">��ҳ > <a href='main.asp?typeCode=193&id_module=193,198,199,200,263'>����</a> &gt; ��ҵƷ����վ����</div>
        <div id="title">��ҵƷ����վ����</div>
        <div id="content">
          <div class='title'><?php echo $this->_tpl_vars['case']['case_name']; ?>
</div><div id='picShow_thumbs'>
          <ul>
          <?php if ($this->_tpl_vars['case']['case_pic'] != ""): ?>
          <li>
	          <p class='pic'>
	          	<a href='<?php echo $this->_tpl_vars['case']['case_pic']; ?>
' title='��ͼ' rel='lytebox[plants]' style="background-image:url('<?php echo $this->_tpl_vars['case']['case_pic']; ?>
')">
	          		<img title='��ͼ' alt='��ͼ' src='images/spacer.gif'/>
	          	</a>
	          </p>
			  <p class='text'>��ͼ</p>
		  </li>
		  <?php endif; ?>
		  <?php if ($this->_tpl_vars['case']['case_pic'] != ""): ?>
          <li>
          	<p class='pic'>
          		<a href='<?php echo $this->_tpl_vars['case']['case_pic_a']; ?>
' title='��ͼ' rel='lytebox[plants]' style="background-image:url('<?php echo $this->_tpl_vars['case']['case_pic_a']; ?>
')">
          			<img title='��ͼ' alt='��ͼ' src='images/spacer.gif'/>
          		</a>
          	</p>
          	<p class='text'>��ͼ</p>
          </li>
          <?php endif; ?>
          <?php if ($this->_tpl_vars['case']['case_pic'] != ""): ?>
          <li>

          	<p class='pic'>
	          	<a href='<?php echo $this->_tpl_vars['case']['case_pic_b']; ?>
' title='��ͼ' rel='lytebox[plants]' style="background-image:url('<?php echo $this->_tpl_vars['case']['case_pic_b']; ?>
')">
	          		<img title='��ͼ' alt='��ͼ' src='images/spacer.gif'/>
	          	</a>
          	</p>
          	<p class='text'>��ͼ</p>
          </li>
          <?php endif; ?>
          <?php if ($this->_tpl_vars['case']['case_pic'] != ""): ?>
          <li>
          	<p class='pic'>
          		<a href='<?php echo $this->_tpl_vars['case']['case_pic_c']; ?>
' title='��ͼ' rel='lytebox[plants]' style="background-image:url('<?php echo $this->_tpl_vars['case']['case_pic_c']; ?>
')">
          			<img title='��ͼ' alt='��ͼ' src='images/spacer.gif'/>
          		</a>
          	</p>
          	<p class='text'>��ͼ</p>
          </li>
          <?php endif; ?>

          </ul></div>
 <?php echo '
<script type="text/javascript">
window.addEvent(\'domready\', function(){

	//����ͼƬ��Ч��(��)
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
<p>�ͻ����ʣ�<?php echo $this->_tpl_vars['case']['case_type']; ?>
</p>
<p>�ͻ����ƣ�<?php echo $this->_tpl_vars['case']['case_cust']; ?>
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
              <a href="/">������ҳ</a>
              </li>
              <li class="top"><a href="#">��������</a></li>
              <li class="back"><a href="javascript:history.back(-1)">������ҳ</a></li>
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