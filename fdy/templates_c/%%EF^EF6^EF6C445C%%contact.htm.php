<?php /* Smarty version 2.6.26, created on 2012-02-26 05:20:52
         compiled from contact.htm */ ?>

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php echo '

    <div id="body">
      <div id=\'banner\'><div id=\'picShow_source\'><ul><li><p class=\'pic\'><img src=\'images/content/typeSet212_2010217163051.jpg\'/></p><p class=\'text\'>רע@�Ӳ�и������������֪�����������������󲢷����£�����ʼ�������ĽǶȹ�ע�û����������裬ƾ��רҵ��������Ŀ����������ϵ��������δ�룬������ҵ���רҵ����Ϊ���ƶ�ר������...��������ǵ�̬�ȣ�רע@�Ӳ�и����</p></li></ul></div></div>
      <div id="menu">

<ul>
	<li id="menu_home"><a href="/index.html">��վ��ҳ</a></li>
	<li id=\'menu_212\'><a href=\'#\' class=\'menulink\'>��Ŀ����</a>
		<ul>
			<li id=\'module235\'><a href=\'about.html\'>����Ե���</a></li>
			<li id=\'module236\'><a href=\'superiority.html\'>����Ե����</a></li>
			<li id=\'module237\'><a href=\'partner.html\'>�������</a></li>
			<li id=\'module260\'><a href=\'contact.html\'>��ϵ��ʽ</a></li>
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
        <div id="position"><a href='about.html'>���ڷ���Ե</a> &gt; ��ϵ����</div>
        <div id="title">�������</div>
        <div id="content">
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/map.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
			<div id="contactTag" class="Page_Text" style="margin-bottom:15px;">
			<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['contactList']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
				<b style=" font-size:14px;">&nbsp;&nbsp;&nbsp;<?php echo $this->_tpl_vars['contactList'][$this->_sections['list']['index']]['comm_type']; ?>
</b>
				<div class="Content_DIV" style="margin-bottom:15px;">
				<?php echo $this->_tpl_vars['contactList'][$this->_sections['list']['index']]['comm_value']; ?>

				</div>
			<?php endfor; endif; ?>

			</div>

        </div>
      </div>

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