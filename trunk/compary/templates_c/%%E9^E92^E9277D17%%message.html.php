<?php /* Smarty version 2.6.26, created on 2011-06-26 05:19:39
         compiled from aboutus/message.html */ ?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div id='content' style='width:1002px;height:417px;background:none transparent scroll repeat 0% 0%;margin:0px auto'>


<!-- 网页标题(菜单) -->

<div id='pdv_14997' class='pdv_class'  title='栏目导航' style='width:207px;height:187px;top:0px;left:0px; z-index:9'>
<div id='spdv_14997' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">
<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_lmdh.gif) no-repeat">
	<div style="float:left;width:120px;height:38px;font:12px/46px simsun;color:#464646;padding-top:4px;padding-left:38px;">栏目导航</div>
	<div style="float:right;width:20px;height:48px;background:url(../images/title_lmdh.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:0px;">

<link href="../css/pagetitlemenu_dolphin.css" rel="stylesheet" type="text/css" />
<div class="titlemenu_dolphin" >

<a href="../aboutus/contact.php" target="_self" class="titlemenu_dolphin">联系方式</a>


<a href="../aboutus/message.php" target="_self" class="titlemenu_dolphin">客户留言</a>

</div>

</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_lmdh.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_lmdh.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>

<!-- HTML编辑区 -->

<div id='pdv_14987' class='pdv_class'  title='联系我们' style='width:209px;height:218px;top:197px;left:0px; z-index:10'>
<div id='spdv_14987' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">
<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_link.gif) no-repeat">
	<div style="float:left;width:120px;height:38px;font:12px/46px simsun;color:#464646;padding-top:4px;padding-left:38px;">联系我们</div>
	<div style="float:right;width:20px;height:48px;background:url(../images/title_link.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:0px;">
<div style="MARGIN-TOP: 15px; PADDING-BOTTOM: 20px; MARGIN-LEFT: 25px; COLOR: #333; LINE-HEIGHT: 150%"><?php echo $this->_tpl_vars['contactInfo']; ?>
</div>
</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_link.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_link.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>

<!-- 当前位置提示条 -->

<div id='pdv_15253' class='pdv_class'  title='当前位置' style='width:763px;height:47px;top:0px;left:239px; z-index:11'>
<div id='spdv_15253' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/title_address.gif) no-repeat">
	<a href="../../" style="font:12px/20px simsun;cursor:hand;"><div style="float:right;width:11px;height:44px;background:url(../images/title_address.gif) -889px 0px no-repeat;padding-top:6px;"></div></a>

<link href="../css/nav.css" rel="stylesheet" type="text/css" />
<div id="nav">
<?php echo $this->_tpl_vars['address']; ?>


</div>

</div>

</div>
</div>

<!-- 全站留言表单 -->

<div id='pdv_15263' class='pdv_class'  title='' style='width:700px;height:391px;top:77px;left:290px; z-index:14'>
<div id='spdv_15263' class='pdv_content' style='overflow:visible;width:100%;'>
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
<div  id="notice" class="noticediv"></div>
<form id="submitform" method="post" action="" name="gform">
<table width="100%" border="0" cellspacing="0" cellpadding="3" >

<tr>
      <td width="80" align="right">反馈主题：</td>
      <td>
        <input type="text" id="title" name="title" maxlength="50" class="input" style="width:399px" />
        <font style='color:red'>*</font> <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>

    <tr>
      <td width="80" align="right">反馈内容：</td>
      <td>
        <textarea id="content_send" name="content"  rows="10" class="textarea" style="width:399px" ></textarea>
        <font style='color:red'>*</font>
        <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>


<tr>
      <td width="80" align="right">客户名称：</td>
      <td>
        <input type="text" id="company" name="company" maxlength="30" class="input" style="width:399px" />
        <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>

<tr>
      <td width="80" align="right">联 系 人：</td>
      <td>
        <input type="text" id="name" name="name" maxlength="30" class="input" style="width:399px" />
         <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>

<tr>
      <td width="80" align="right">联系电话：</td>
      <td>
        <input type="text" id="tel" name="tel" maxlength="30" class="input" style="width:399px" />
        <font style='color:red'>*</font> <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>

<tr>
      <td width="80" align="right">QQ/MSN：</td>
      <td>
        <input type="text" id="qq" name="qq" maxlength="30" class="input" style="width:399px" />
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
</div>


<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>