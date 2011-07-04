<?php /* Smarty version 2.6.26, created on 2011-06-26 08:24:28
         compiled from prod/prodorder.html */ ?>
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


<!-- 全站留言表单 -->

<div id='pdv_15329' class='pdv_class'  title='' style='width:700px;height:500px;top:77px;left:290px; z-index:13'>
<div id='spdv_15329' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">

		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-1" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">

<link href="../css/feedbackform.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="../js/feedback.js"></script>
<div  id="notice" class="noticediv" style="width:75%"></div>
<form id="submitform" method="post" action="" name="gform">
<table width="100%" border="0" cellspacing="0" cellpadding="3" >

<tr>
      <td width="80" align="right">您的姓名：</td>
      <td>
        <input type="text" id="cust_name" name="cust_name" maxlength="30" class="input" style="width:399px" />
        <font style='color:red'>*</font> <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>

<tr>
      <td width="80" align="right">联系电话：</td>
      <td>
        <input type="text" id="tel" name="tel" maxlength="30" class="input" style="width:399px" />
        <font style='color:red'>*</font> <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>

<tr>
      <td width="80" align="right">联系地址：</td>
      <td>
        <input type="text" id="address" name="address" maxlength="100" class="input" style="width:399px" />
        <font style='color:red'>*</font> <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>

<tr>
      <td width="80" align="right">电子邮件：</td>
      <td>
        <input type="text" id="email" name="email" maxlength="50" class="input" style="width:399px" />
        <font style='color:red'>*</font> <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>

<tr>
      <td width="80" align="right">公司名称：</td>
      <td>
        <input type="text" id="company" name="company" maxlength="50" class="input" style="width:399px" />
         <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>

<tr>
      <td width="80" align="right">产品名称：</td>
      <td>
        <input type="text" id="products_name" name="products_name" maxlength="50" class="input" style="width:399px" />
        <font style='color:red'>*</font> <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>
<!--
<tr>
      <td width="80" align="right">订购数量：</td>
      <td>
        <input type="text" name="products_num" maxlength="10" class="input" style="width:399px" />
        <font style='color:red'>*</font> <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>
 -->
    <tr>
      <td width="80" align="right">详细要求：</td>
      <td>
        <textarea id="content_req" name="content"  rows="10" class="textarea" style="width:399px" ></textarea>
        <font style='color:red'>*</font>
        <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>


    <tr>
      <td width="80" align="right">验 证 码：</td>
      <td><div style="height:28px;white-space:nowrap;float:left;margin-right:1px">
<input type="text" id="imgCode" name="imgCode" style="width:39px"  class="input" maxlength="4"/>
</div>
<div style="height:28px;white-space:nowrap;float:left">
<img id="codeimg" src="../random/imgcode.php" width="60" height="20" style="border:1px #dddddd solid">
</div>
<span id="getImgCode" style="cursor:pointer;margin-left:10px;line-height:20px">看不清？更换一张</span>
</td>
    </tr>
	<tr>
      <td width="80" align="right"></td>
      <td>
	  </td>
    </tr>
    <tr>
      <td width="80" align="right">&nbsp;</td>
      <td height="30">
        <input type="submit" name="Submit" value="提交" class="submit">
        <input type='hidden' name='act' value='formsend'>
	  </td>
    </tr>
  </table>
</form>


</div>
</div>

</div>
</div>

<!-- 当前位置提示条 -->

<div id='pdv_15328' class='pdv_class'  title='当前位置' style='width:763px;height:47px;top:0px;left:239px; z-index:14'>
<div id='spdv_15328' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
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