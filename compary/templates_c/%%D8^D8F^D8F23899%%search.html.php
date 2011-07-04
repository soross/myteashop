<?php /* Smarty version 2.6.26, created on 2011-06-25 14:42:21
         compiled from search/search.html */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div id='content' style='width:1002px;height:1599px;background:none transparent scroll repeat 0% 0%;margin:0px auto'>


<!-- 网页标题(菜单) -->

<div id='pdv_15313' class='pdv_class'  title='栏目导航' style='width:207px;height:187px;top:0px;left:0px; z-index:9'>
<div id='spdv_15313' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">
<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_lmdh.gif) no-repeat">
	<div style="float:left;width:120px;height:38px;font:12px/46px simsun;color:#464646;padding-top:4px;padding-left:38px;">栏目导航</div>
	<div style="float:right;width:20px;height:48px;background:url(../images/title_lmdh.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:0px;">

<link href="../css/pagetitlemenu_dolphin.css" rel="stylesheet" type="text/css" />
<div class="titlemenu_dolphin" >



<a href="company.php" target="_self" class="titlemenu_dolphin">关于我们</a>

<!--
<a href="culture.php" target="_self" class="titlemenu_dolphin">企业文化</a>


<a href="honor.php" target="_self" class="titlemenu_dolphin">公司荣誉</a>
 -->

<a href="flow.php" target="_self" class="titlemenu_dolphin">合作流程</a>

</div>

</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_lmdh.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_lmdh.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>

<!-- HTML编辑区 -->

<div id='pdv_15303' class='pdv_class'  title='联系我们' style='width:207px;height:218px;top:197px;left:0px; z-index:10'>
<div id='spdv_15303' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">
<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_link.gif) no-repeat">
	<div style="float:left;width:120px;height:38px;font:12px/46px simsun;color:#464646;padding-top:4px;padding-left:38px;">联系我们</div>
	<div style="float:right;width:20px;height:48px;background:url(../images/title_link.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:0px;">
<div style="MARGIN-TOP: 15px; PADDING-BOTTOM: 20px; MARGIN-LEFT: 25px; COLOR: #333; LINE-HEIGHT: 150%">
<?php echo $this->_tpl_vars['contactInfo']; ?>

</div>
</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_link.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_link.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>


<!-- 全站搜索结果 -->

<div id='pdv_15314' class='pdv_class'  title='全站搜索' style='width:740px;height:1522px;top:77px;left:244px; z-index:11'>
<div id='spdv_15314' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		全站搜索
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-1" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">

<link href="../css/search.css" rel="stylesheet" type="text/css" />

<div id="search">
<ul id="queryul">

<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['searchList']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
	<div class="title" ><a href="<?php echo $this->_tpl_vars['searchList'][$this->_sections['list']['index']]['filename']; ?>
" target="_self" ><?php echo $this->_tpl_vars['searchList'][$this->_sections['list']['index']]['title']; ?>
</a></div>
	<div class="memo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $this->_tpl_vars['searchList'][$this->_sections['list']['index']]['keyword']; ?>
</div>
	<div class="showlink"><?php echo $this->_tpl_vars['searchList'][$this->_sections['list']['index']]['filename']; ?>
&nbsp;[时间：<?php echo $this->_tpl_vars['searchList'][$this->_sections['list']['index']]['dtime']; ?>
]&nbsp;[访问：<?php echo $this->_tpl_vars['searchList'][$this->_sections['list']['index']]['cnt']; ?>
 次]</div>

</li>
<?php endfor; endif; ?>
</ul>
</div>

<div id="showpages">
	  <div id="pagesinfo">共搜索到2条 每页20条 页次：1/1</div>
	  <div id="pages"><ul><li class="pbutton"><a href=/1273472146/search/index.php?page=1&amp;catid=&amp;myord=uptime&amp;myshownums=&amp;key=%E5%A4%8D%E5%90%88>首页</a></li><li class="pbutton">上一页</li><li class="pagesnow">1</li><li class="pbutton">下一页</li><li class="opt"><select onChange="window.location=this.options[this.selectedIndex].value"><option value="/1273472146/search/index.php?page=1&amp;catid=&amp;myord=uptime&amp;myshownums=&amp;key=%E5%A4%8D%E5%90%88" selected>第1页</option></select></li><li class="pbutton"><a href=/1273472146/search/index.php?page=1&amp;catid=&amp;myord=uptime&amp;myshownums=&amp;key=%E5%A4%8D%E5%90%88>尾页</a></li></ul></div>
</div>


</div>
</div>

</div>
</div>


<!-- 当前位置提示条 -->

<div id='pdv_15315' class='pdv_class'  title='当前位置' style='width:763px;height:47px;top:0px;left:239px; z-index:12'>
<div id='spdv_15315' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/title_address.gif) no-repeat">
	<a href="../" style="font:12px/20px simsun;cursor:hand;"><div style="float:right;width:11px;height:44px;background:url(../images/title_address.gif) -889px 0px no-repeat;padding-top:6px;"></div></a>

<link href="../css/nav.css" rel="stylesheet" type="text/css" />
<div id="nav">
<?php echo $this->_tpl_vars['address']; ?>


</div>

</div>

</div>
</div>
</div>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>