<?php /* Smarty version 2.6.26, created on 2012-02-26 05:21:18
         compiled from it_serviceinfo.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'strip_tags', 'it_serviceinfo.htm', 29, false),)), $this); ?>

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>


<!--内容-->
<div class="Hs_Middle">
	<!--内页动画-->
    <div class="PageBanner"><img width="1010" height="170" src="<?php echo $this->_tpl_vars['solution']['fpicture']; ?>
"></div>
    <!--内页动画 结束-->
    <!--左区域-->
    <div class="Page_left">

    	<div class="Content_DIV">
    		<p><span class="Orange16B"><?php echo $this->_tpl_vars['solution']['name']; ?>
</span><br /></p>
       	    <?php echo $this->_tpl_vars['solution']['desc']; ?>

       	</div>

		<div class="Page_Text"  style="margin-bottom: -20px;">
    		<div class="Page_Title"><span style="font-size:18px;font-family:'微软雅黑';color:#ff7c00;">其他IT技术服务</span></div>
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
	            <a href="/jjfa/3/">集成部署解决方案</a><br>
	           	<div style="height:92px;overflow: hidden;width:485px;">系统集成的本质是最优化的综合统筹设计，一个大型的综合计算机网络系统，系统集成包括计算机软件、硬件、操作系统技术、数据库技术、网络通讯技术等的集成，以及不同厂家产品选型，搭配的集成，系统集成所要达到的目标-整体性能最优，即所有部件和成分合在一起后不但能工作，而且全系统是低成本的、高效率的、性能匀称的、可扩充性和可维护的系统。华信技术团队不仅具有精通小型机、存储</div>
				</div>
	        </div>
    	    		<div class="Page_Item">
	        	<a href="/jjfa/10/" class="Page_Item_Img"><img width="156" height="121" src="/uploadfile/201109202343070.gif"></a>
	            <div class="Page_Item_Text">
	            <a href="/jjfa/10/">数据中心外包解决方案</a><br>
	           	<div style="height:92px;overflow: hidden;width:485px;">现代大型企业往往由于企业规模的日益壮大，企业为了专注于自己的核心业务，而将其IT系统的全部或
部分外包给专业的信息技术服务公司。常见的数据中心外包涉及信息技术设备的引进和维护、通信网络
的管理、数据中心的运作、信息系统的开发和维护、备份和灾难恢复、信息技术培训等。
外包对于企业的好处是明显的，首先资源在商业战略和企业部门中被重新分配，非IT业务的投资得</div>
				</div>
	        </div>
    	    		<div class="Page_Item">
	        	<a href="/jjfa/20/" class="Page_Item_Img"><img width="156" height="121" src="/uploadfile/201109221410030.jpg"></a>
	            <div class="Page_Item_Text">
	            <a href="/jjfa/20/">网络安全解决方案</a><br>
	           	<div style="height:92px;overflow: hidden;width:485px;">企业网络系统往往受到非法访问、宕机、病毒、负载过高或闲置、硬件故障、配置丢失等各类繁杂问题
的挑战，高成本但低质量的运维结构是目前很多企业面临的主要难题。华信服务拥有丰富的网络系统运
维经验，结合先进的管理思想和专业的服务技术，通过成熟的项目运作方式，向客户提供低成本、高效
率、高满意度的网络安全解决方案，确保客户的网络稳定和安全。
典型的CISCO</div>
				</div>
	        </div> -->

    </div>
    <!--左区域 结束-->
    <!--右区域-->
    <div class="Page_Right">
    	<div class="Phone">4000-480-580</div>
        <div class="New">
        	<div class="Page_Title" style="text-align: left;"><span style="font-size:18px;font-family:'微软雅黑';color:#ff7c00;">相关新闻</span></div>
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
       			<li><a href="#">没有相关新闻...</a></li>
       			<?php endif; ?>
            </ul>
        </div>
    </div>
    <!--右区域 结束-->
</div>
<!--内容 结束-->


    <br class="clearfloat" />
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>


</body>
</html>