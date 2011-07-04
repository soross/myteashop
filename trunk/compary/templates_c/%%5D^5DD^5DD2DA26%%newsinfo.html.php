<?php /* Smarty version 2.6.26, created on 2011-06-29 01:49:28
         compiled from news/newsinfo.html */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div id='content' style='width:1002px;height:445px;background:none transparent scroll repeat 0% 0%;margin:0px auto'>


<!-- 文章一级分类 -->

<div id='pdv_15087' class='pdv_class'  title='栏目导航' style='width:207px;height:135px;top:0px;left:0px; z-index:9'>
<div id='spdv_15087' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">
<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_lmdh.gif) no-repeat">
	<div style="float:left;width:120px;height:38px;font:12px/46px simsun;color:#464646;padding-top:4px;padding-left:38px;">栏目导航</div>
	<div style="float:right;width:20px;height:48px;background:url(../images/title_lmdh.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:0px;">

<link href="../css/newsclass_dolphin.css" rel="stylesheet" type="text/css" />
<div class="newsclass_dolphin">

<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['newsClassRow']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
	  <a href="newslist.php?classcode=<?php echo $this->_tpl_vars['newsClassRow'][$this->_sections['list']['index']]['id']; ?>
" target="_self" class="newsclass_dolphin"><?php echo $this->_tpl_vars['newsClassRow'][$this->_sections['list']['index']]['class_name']; ?>
</a>
<?php endfor; endif; ?>

</div>

</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_lmdh.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_lmdh.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>



<!-- 文章搜索表单 -->

<div id='pdv_15088' class='pdv_class'  title='新闻搜索' style='width:207px;height:162px;top:145px;left:0px; z-index:10'>
<div id='spdv_15088' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">
<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_link.gif) no-repeat">
	<div style="float:left;width:120px;height:38px;font:12px/46px simsun;color:#464646;padding-top:4px;padding-left:38px;">新闻搜索</div>
	<div style="float:right;width:20px;height:48px;background:url(../images/title_link.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:0px;">
<link href="../css/news_search_dolphin.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="../js/searchform.js"></script>
<SCRIPT language="javascript" src="../js/selectBox.js"></SCRIPT>
<div class="newssearchformzone">
<form id="newssearchform" method="get" action="newslist.php">
  <div class="newssearchform">
    <select name="catid" id="catid" class="box" style="display:none; background:#ffffff; width:147px; height:19px;">
      <option value="0" >请选择分类</option>

<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['newsClassRow']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
	  <option value='<?php echo $this->_tpl_vars['newsClassRow'][$this->_sections['list']['index']]['id']; ?>
'><?php echo $this->_tpl_vars['newsClassRow'][$this->_sections['list']['index']]['class_name']; ?>
</option>
<?php endfor; endif; ?>
    </select>
	<script>
	makeSelectBox('catid','../');
	</script>
  </div>

    <div class="newssearchform">
    <input name="key" type="text" id="newssearchform_key" value="" style="width:145px;" class="inputtext">
  </div>
  <div class="newssearchform2">
  <input name="imageField" id="button" type="image" src="../images/search5.gif" >
  </div>
</form>
</div>

</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_link.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_link.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>

<!-- 当前位置提示条 -->

<div id='pdv_15301' class='pdv_class'  title='当前位置' style='width:763px;height:47px;top:0px;left:239px; z-index:14'>
<div id='spdv_15301' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/title_address.gif) no-repeat">
	<a href="../../" style="font:12px/20px simsun;cursor:hand;"><div style="float:right;width:11px;height:44px;background:url(../images/title_address.gif) -889px 0px no-repeat;padding-top:6px;"></div></a>

<link href="../css/nav.css" rel="stylesheet" type="text/css" />
<div id="nav">
<?php echo $this->_tpl_vars['address']; ?>


</div>

</div>

</div>
</div>

<!-- 文章正文 -->

<div id='pdv_15103' class='pdv_class'  title='文章正文' style='width:740px;height:214px;top:77px;left:244px; z-index:14'>
<div id='spdv_15103' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		文章正文
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-1" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">

<link href="../css/newscontent.css" rel="stylesheet" type="text/css" />
<script type=text/javascript src="../js/newscontent.js"></script>
<div id="newscontent">
	<div class="newstitle"><?php echo $this->_tpl_vars['newsinfo']['title']; ?>
</div>

	<div class="info">来源：<?php echo $this->_tpl_vars['newsinfo']['src']; ?>
 &nbsp;&nbsp;作者：<?php echo $this->_tpl_vars['newsinfo']['author']; ?>
 &nbsp;&nbsp; 发布于：<?php echo $this->_tpl_vars['newsinfo']['create_date']; ?>
 &nbsp;&nbsp; 文字：【<a  href="javascript:fontZoom(16)">大</a>】【<a  href="javascript:fontZoom(14)">中</a>】【<a   href="javascript:fontZoom(12)">小</a>】</div>
	<div id="memo" class="memo" style="display:none"><span style="color:#ff6600">摘要：</span></div>
	<div id="con" class="con">
	<?php echo $this->_tpl_vars['newsinfo']['content']; ?>

	<br>
	<br>
	<p>
	版权申明：本站文章均来自网络，如有侵权，请联系我们，我们收到后将立即删除，谢谢！<br>
	特别注意：本站所有转载文章言论不代表本站观点，本站所提供的摄影照片，插画，设计作品，如需使用，请与原作者联系，版权归原作者所有！
	</p>
	</div>
	<!--
	<div id="contentpages">
	</div>
	<div class="bzone">
		<div class="down" style="display:none">附件下载：<span id="downlink"></span> (已下载0次) <span id="downcentnotice"></span><input type="hidden" id="downcent" value=""></div>
		<input type="hidden" id="newsid" value="405">
		<div class="tags" style="display:none">标签：</div>
		<div id="banzhu" class="banzhu"></div>
	</div>
	 -->
</div>
<?php echo '
<script>
//$(function(){
//$().contentPages(\'405\');
//});
</script>
'; ?>

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