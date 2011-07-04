<?php /* Smarty version 2.6.26, created on 2011-06-25 15:42:50
         compiled from prod/prodinfo.html */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div id='content' style='width:1002px;height:429px;background:none transparent scroll repeat 0% 0%;margin:0px auto'>



<!-- 图片/FLASH -->

<div id='pdv_14951' class='pdv_class'  title='图片' style='width:207px;height:72px;top:354px;left:0px; z-index:10'>
<div id='spdv_14951' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		图片
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-1" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">


<a href="prodorder.php"><img src="../images/1268633326.gif" border="0" width="100%" /></a>

</div>
</div>

</div>
</div>


<!-- 产品分类（列表） -->

<div id='pdv_14950' class='pdv_class'  title='产品分类' style='width:207px;height:343px;top:0px;left:0px; z-index:11'>
<div id='spdv_14950' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">
<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_prod.gif) no-repeat">
		<div style="float:right;width:20px;height:48px;background:url(../images/title_prod.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:12px;">

<link href="../css/productclass_dolphin.css" rel="stylesheet" type="text/css" />
<div class="productclass_dolphin">

<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['prodclass']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
<a href="<?php echo $this->_tpl_vars['prodclass'][$this->_sections['list']['index']]['url']; ?>
" target="_self" class="productclass_dolphin"><?php echo $this->_tpl_vars['prodclass'][$this->_sections['list']['index']]['class_name']; ?>
</a>
<?php endfor; endif; ?>

</div>

</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_prod.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_prod.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>



<!-- 产品详情 -->

<div id='pdv_15156' class='pdv_class'  title='产品详情' style='width:740px;height:363px;top:77px;left:244px; z-index:14'>
<div id='spdv_15156' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		产品详情
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-1" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">

<link href="../css/productcontent.css" rel="stylesheet" type="text/css" />
<script type=text/javascript src="../js/productcontent.js"></script>

<div id="productcontent">
	<div class="productpics">
		<div class="piczone">
			<table align="center" cellpadding="0" cellspacing="0">
			<tr>
			<td align="center">
			<div id="productview">
				<img src="images/<?php echo $this->_tpl_vars['prodinfo']['prod_picture']; ?>
" border="0" id="productloading" class="productpic">
				<!--
				<img src="../images/loading.gif" border="0" id="productloading" class="productloading">
				<input type="hidden" id="imgPath" name="imgPath" value="<?php echo $this->_tpl_vars['prodinfo']['prod_picture']; ?>
">
				-->
			</div>
			</td>
			</tr>
			</table>
		</div>
		<div id="contentpages"></div>
	</div>

	<div class="introzone">
		<div id="prodtitle"><?php echo $this->_tpl_vars['prodinfo']['prod_name']; ?>
</div>
		<div id="prop"><strong>方案编号：</strong>&nbsp;<?php echo $this->_tpl_vars['prodinfo']['prod_code']; ?>
</div>
		<div id="memo" class="memo" style="display:block">
			<strong>合作企业：</strong>
			<?php if ($this->_tpl_vars['prodinfo']['prod_link'] != ""): ?>
				<a href='<?php echo $this->_tpl_vars['prodinfo']['prod_link']; ?>
' target="_block"><?php echo $this->_tpl_vars['prodinfo']['compary']; ?>
</a>
			<?php else: ?>
				企业要求保密或信息录入中...
			<?php endif; ?>
		</div>
		<div id="memo" class="memo" style="display:block">
			<strong>在线地址：</strong>
			<?php if ($this->_tpl_vars['prodinfo']['prod_link'] != ""): ?>
				<a href='<?php echo $this->_tpl_vars['prodinfo']['prod_link']; ?>
' target="_block"><?php echo $this->_tpl_vars['prodinfo']['prod_link']; ?>
</a>
			<?php else: ?>
				无公网地址或信息录入中...
			<?php endif; ?>
		</div>
		<div id="memo" class="memo" style="display:block">
			<strong>首页展示：</strong>
			<?php if ($this->_tpl_vars['prodinfo']['prod_url'] != ""): ?>
				<a href='showIndex.php?url=<?php echo $this->_tpl_vars['prodinfo']['prod_url']; ?>
'><FONT style="color:#FF6600;">点击查看首页</FONT></a>
			<?php else: ?>
				信息录入中...
			<?php endif; ?>
		</div>
	</div>
	<div class="bodyzone">
	<strong>简介：</strong><br><br>
		<?php echo $this->_tpl_vars['prodinfo']['prod_desc']; ?>

	</div>
	<div class="bzone">
	<input type="hidden" id="productid" value="<?php echo $this->_tpl_vars['prodinfo']['id']; ?>
">
	<div id="banzhu" class="banzhu"></div>
	</div>

</div>


</div>
</div>

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
</div>





<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>