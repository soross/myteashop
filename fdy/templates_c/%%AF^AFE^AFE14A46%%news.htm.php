<?php /* Smarty version 2.6.26, created on 2012-02-27 14:41:17
         compiled from news.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'truncate', 'news.htm', 63, false),)), $this); ?>

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php echo '

    <div id="body">
      <div id=\'banner\'><div id=\'picShow_source\'><ul><li><p class=\'pic\'><img src=\'images/content/typeSet197_2010217163240.jpg\'/></p><p class=\'text\'>רע@�Ӳ�и������������֪�����������������󲢷����£�����ʼ�������ĽǶȹ�ע�û����������裬ƾ��רҵ��������Ŀ����������ϵ��������δ�룬������ҵ���רҵ����Ϊ���ƶ�ר������...��������ǵ�̬�ȣ�רע@�Ӳ�и����</p></li></ul></div></div>
      <div id="menu">

<ul>
	<li id="menu_home"><a href="/index.html">��վ��ҳ</a></li>
	<li id=\'menu_212\'><a href=\'#\' class=\'menulink\'>��Ŀ����</a>
		<ul>
			<li id=\'module235\'><a href=\'about.html\'>վ������</a></li>
			<li id=\'module236\'><a href=\'superiority.html\'>�����ĵ�</a></li>
			<li id=\'module237\'><a href=\'partner.html\'>������Ϣ</a></li>
		</ul>
	</li>
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
        <div id="position"><a href='about.html'>��Ѷ����</a> &gt; վ������</div>
        <div id="title">����Ե���</div>
        <div id="content">
          <div class='content'>
          	 <div id='textList_simple'>
          	 	<ul>
          	 		<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['newsList']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
          	 			<a class='times'>[<?php echo ((is_array($_tmp=$this->_tpl_vars['newsList'][$this->_sections['list']['index']]['create_date'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 10, "") : smarty_modifier_truncate($_tmp, 10, "")); ?>
]</a>
          	 			<a href="news_<?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['id']; ?>
_info.html" class='module'>[�ƹ��Ż�]</a>
          	 			<a href='news_<?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['id']; ?>
_info.html' title='<?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['title']; ?>
' class='listTitle' ><?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['title']; ?>
</a>
          	 		</li>
          	 		<?php endfor; else: ?>
          	 		<li>
          	 			<a class='times'>[00-00-00]</a>
          	 			<a href="news.html" class='module'>[��Ѷ����]</a>
          	 			<a href='news.html' title='û����Ҫ��ѯ������...' class='listTitle' >û����Ҫ��ѯ������...</a>
          	 		</li>
          	 		<?php endif; ?>
          	 		<!-- -
          	 		<li>

          	 		<a class='times'>[10-07-27]</a>
          	 		<a href="/web/common/main.asp?typeCode=265&id_module=269" class='module'>[�ƹ��Ż�]</a><a href='/html/detail_3251.html' title='���������Ż�ʮ���������' class='listTitle' >���������Ż�ʮ���������</a></li><li><a class='times'>[10-07-27]</a><a href="/web/common/main.asp?typeCode=265&id_module=269" class='module'>[�ƹ��Ż�]</a><a href='/html/detail_3250.html' title='���������Ż���SEO�������������' class='listTitle' >���������Ż���SEO�������������</a></li><li><a class='times'>[10-03-20]</a><a href="/web/common/main.asp?typeCode=265&id_module=272" class='module'>[��ҳ���]</a><a href='/html/detail_3242.html' title='�Ż���վ��Ƶ����ַ���' class='listTitle' >�Ż���վ��Ƶ����ַ���</a></li><li><a class='times'>[10-03-15]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[��վ�߻�]</a><a href='/html/detail_3219.html' title='��ҵ��վ���µı�Ҫ�Է���' class='listTitle' >��ҵ��վ���µı�Ҫ�Է���</a></li><li><a class='times'>[10-03-14]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[��վ�߻�]</a><a href='/html/detail_3200.html' title='��վ�����Զ���վ����Ҫ��' class='listTitle' >��վ�����Զ���վ����Ҫ��</a></li><li><a class='times'>[10-03-15]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[��վ�߻�]</a><a href='/html/detail_3215.html' title='��վ����������ļ����û�����' class='listTitle' >��վ����������ļ����û�����</a></li><li><a class='times'>[10-03-14]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[��վ�߻�]</a><a href='/html/detail_3203.html' title='��������' class='listTitle' >��������</a></li><li><a class='times'>[10-03-19]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[��վ�߻�]</a><a href='/html/detail_3241.html' title='���������վĿ��' class='listTitle' >���������վĿ��</a></li><li><a class='times'>[10-03-15]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[��վ�߻�]</a><a href='/html/detail_3213.html' title='��ҵ��վ�б�Ҫ���𣨽�����ҵ��վ�ĺô���Ŀ�ģ�' class='listTitle' >��ҵ��վ�б�Ҫ���𣨽�����ҵ��վ�ĺô���Ŀ�ģ�</a></li><li><a class='times'>[10-03-14]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[��վ�߻�]</a><a href='/html/detail_3207.html' title='��ҵ��վ���������׳��ֵ�����' class='listTitle' >��ҵ��վ���������׳��ֵ�����</a></li><li><a class='times'>[10-03-19]</a><a href="/web/common/main.asp?typeCode=265&id_module=267" class='module'>[ϵͳ����]</a><a href='/html/detail_3240.html' title='WEBϵͳ�����������¹���ϵͳ' class='listTitle' >WEBϵͳ�����������¹���ϵͳ</a></li><li><a class='times'>[10-03-19]</a><a href="/web/common/main.asp?typeCode=265&id_module=267" class='module'>[ϵͳ����]</a><a href='/html/detail_3239.html' title='WEBϵͳ�������������������ϵͳ' class='listTitle' >WEBϵͳ�������������������ϵͳ</a></li><li><a class='times'>[10-03-19]</a><a href="/web/common/main.asp?typeCode=265&id_module=267" class='module'>[ϵͳ����]</a><a href='/html/detail_3238.html' title='WEBϵͳ������������Ԥ�㱨��ϵͳ' class='listTitle' >WEBϵͳ������������Ԥ�㱨��ϵͳ</a></li><li><a class='times'>[10-03-14]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[��վ�߻�]</a><a href='/html/detail_3206.html' title='��ҵ��վ�߻�������ôд?' class='listTitle' >��ҵ��վ�߻�������ôд?</a></li>
          	 		-->
        	 	</ul>
          	</div>
          	<div class='clearfloat'></div>
          	<div class='pageBar'>
          		<p class='left'>1-15 of 46, 15��/ҳ, ��ǰ 1/4ҳ</p>
          		<p class='right'>
          			<span class='first'>��ҳ</span>
					<span class='previous'>��ҳ</span>
					<span class='number'>
						<strong>1</strong>
						<a href='main_265_2.html' title='������2ҳ'>2</a>
						<a href='main_265_3.html' title='������3ҳ'>3</a>
						<a href='main_265_4.html' title='������4ҳ'>4</a>
					</span>
					<a href='main_265_2.html' class='next' title='������ҳ'>��ҳ</a>
					<a href='main_265_4.html' class='last' title='�������ҳ'>βҳ</a>
				</p>
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

