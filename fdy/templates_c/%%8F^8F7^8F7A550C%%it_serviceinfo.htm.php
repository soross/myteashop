<?php /* Smarty version 2.6.26, created on 2012-02-26 05:21:18
         compiled from it_serviceinfo.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'strip_tags', 'it_serviceinfo.htm', 29, false),)), $this); ?>

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>


<!--����-->
<div class="Hs_Middle">
	<!--��ҳ����-->
    <div class="PageBanner"><img width="1010" height="170" src="<?php echo $this->_tpl_vars['solution']['fpicture']; ?>
"></div>
    <!--��ҳ���� ����-->
    <!--������-->
    <div class="Page_left">

    	<div class="Content_DIV">
    		<p><span class="Orange16B"><?php echo $this->_tpl_vars['solution']['name']; ?>
</span><br /></p>
       	    <?php echo $this->_tpl_vars['solution']['desc']; ?>

       	</div>

		<div class="Page_Text"  style="margin-bottom: -20px;">
    		<div class="Page_Title"><span style="font-size:18px;font-family:'΢���ź�';color:#ff7c00;">����IT��������</span></div>
 		 </div>
    		<hr>
			<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['solList']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
			 <div class="Page_Item">
	        	<a href="solution_<?php echo $this->_tpl_vars['solList'][$this->_sections['list']['index']]['id']; ?>
_info.html" class="Page_Item_Img">
	        	<img width="156" height="121" src="<?php echo $this->_tpl_vars['solList'][$this->_sections['list']['index']]['picture']; ?>
"></a>
	            <div class="Page_Item_Text">
	            <a href="solution_<?php echo $this->_tpl_vars['solList'][$this->_sections['list']['index']]['id']; ?>
_info.html"><?php echo $this->_tpl_vars['solList'][$this->_sections['list']['index']]['name']; ?>
</a><br>
	           	<div style="height:92px;overflow: hidden;width:455px;">
	           	<?php echo ((is_array($_tmp=$this->_tpl_vars['solList'][$this->_sections['list']['index']]['desc'])) ? $this->_run_mod_handler('strip_tags', true, $_tmp) : smarty_modifier_strip_tags($_tmp)); ?>

				</div>
				</div>
	        </div>
			<?php endfor; endif; ?>


<!--
    	    <div class="Page_Item">
	        	<a href="/jjfa/3/" class="Page_Item_Img"><img width="156" height="121" src="/uploadfile/201109200109530.gif"></a>
	            <div class="Page_Item_Text">
	            <a href="/jjfa/3/">���ɲ���������</a><br>
	           	<div style="height:92px;overflow: hidden;width:485px;">ϵͳ���ɵı��������Ż����ۺ�ͳ����ƣ�һ�����͵��ۺϼ��������ϵͳ��ϵͳ���ɰ�������������Ӳ��������ϵͳ���������ݿ⼼��������ͨѶ�����ȵļ��ɣ��Լ���ͬ���Ҳ�Ʒѡ�ͣ�����ļ��ɣ�ϵͳ������Ҫ�ﵽ��Ŀ��-�����������ţ������в����ͳɷֺ���һ��󲻵��ܹ���������ȫϵͳ�ǵͳɱ��ġ���Ч�ʵġ������ȳƵġ��������ԺͿ�ά����ϵͳ�����ż����ŶӲ������о�ͨС�ͻ����洢</div>
				</div>
	        </div>
    	    		<div class="Page_Item">
	        	<a href="/jjfa/10/" class="Page_Item_Img"><img width="156" height="121" src="/uploadfile/201109202343070.gif"></a>
	            <div class="Page_Item_Text">
	            <a href="/jjfa/10/">������������������</a><br>
	           	<div style="height:92px;overflow: hidden;width:485px;">�ִ�������ҵ����������ҵ��ģ������׳����ҵΪ��רע���Լ��ĺ���ҵ�񣬶�����ITϵͳ��ȫ����
���������רҵ����Ϣ��������˾��������������������漰��Ϣ�����豸��������ά����ͨ������
�Ĺ����������ĵ���������Ϣϵͳ�Ŀ�����ά�������ݺ����ѻָ�����Ϣ������ѵ�ȡ�
���������ҵ�ĺô������Եģ�������Դ����ҵս�Ժ���ҵ�����б����·��䣬��ITҵ���Ͷ�ʵ�</div>
				</div>
	        </div>
    	    		<div class="Page_Item">
	        	<a href="/jjfa/20/" class="Page_Item_Img"><img width="156" height="121" src="/uploadfile/201109221410030.jpg"></a>
	            <div class="Page_Item_Text">
	            <a href="/jjfa/20/">���簲ȫ�������</a><br>
	           	<div style="height:92px;overflow: hidden;width:485px;">��ҵ����ϵͳ�����ܵ��Ƿ����ʡ�崻������������ع��߻����á�Ӳ�����ϡ����ö�ʧ�ȸ��෱������
����ս���߳ɱ�������������ά�ṹ��Ŀǰ�ܶ���ҵ���ٵ���Ҫ���⡣���ŷ���ӵ�зḻ������ϵͳ��
ά���飬����Ƚ��Ĺ���˼���רҵ�ķ�������ͨ���������Ŀ������ʽ����ͻ��ṩ�ͳɱ�����Ч
�ʡ�������ȵ����簲ȫ���������ȷ���ͻ��������ȶ��Ͱ�ȫ��
���͵�CISCO</div>
				</div>
	        </div> -->

    </div>
    <!--������ ����-->
    <!--������-->
    <div class="Page_Right">
    	<div class="Phone">4000-480-580</div>
        <div class="New">
        	<div class="Page_Title" style="text-align: left;"><span style="font-size:18px;font-family:'΢���ź�';color:#ff7c00;">�������</span></div>
            <ul style="text-align: left;">
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
       			<li><a href="news_<?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['id']; ?>
_info.html"><?php echo ((is_array($_tmp=$this->_tpl_vars['newsList'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('strip_tags', true, $_tmp) : smarty_modifier_strip_tags($_tmp)); ?>
</a></li>
       			<?php endfor; else: ?>
       			<li><a href="#">û���������...</a></li>
       			<?php endif; ?>
            </ul>
        </div>
    </div>
    <!--������ ����-->
</div>
<!--���� ����-->


    <br class="clearfloat" />
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>


</body>
</html>