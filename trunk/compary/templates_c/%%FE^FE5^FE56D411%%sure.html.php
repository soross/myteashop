<?php /* Smarty version 2.6.26, created on 2011-06-25 14:41:58
         compiled from sure/sure.html */ ?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div id='content' style='width:1002px;height:417px;background:none transparent scroll repeat 0% 0%;margin:0px auto'>


<!-- ��ҳ����(�˵�) -->

<div id='pdv_14997' class='pdv_class'  title='��Ŀ����' style='width:207px;height:187px;top:0px;left:0px; z-index:9'>
<div id='spdv_14997' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">
<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_lmdh.gif) no-repeat">
	<div style="float:left;width:120px;height:38px;font:12px/46px simsun;color:#464646;padding-top:4px;padding-left:38px;">��Ŀ����</div>
	<div style="float:right;width:20px;height:48px;background:url(../images/title_lmdh.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:0px;">

<link href="../css/pagetitlemenu_dolphin.css" rel="stylesheet" type="text/css" />
<div class="titlemenu_dolphin" >

<a href="../sure/" target="_self" class="titlemenu_dolphin"><FONT style="color:#FF6600;">��������</FONT></a>

<a href="../job/joblist.php" target="_self" class="titlemenu_dolphin">��ƸӢ��</a>

<a href="../aboutus/link.php" target="_self" class="titlemenu_dolphin">��������</a>

</div>

</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_lmdh.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_lmdh.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>

<!-- HTML�༭�� -->

<div id='pdv_15171' class='pdv_class'  title='��ϵ����' style='width:207px;height:218px;top:197px;left:0px; z-index:10'>
<div id='spdv_15171' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">
<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_link.gif) no-repeat">
	<div style="float:left;width:120px;height:38px;font:12px/46px simsun;color:#464646;padding-top:4px;padding-left:38px;">��ϵ����</div>
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


<!-- HTML�༭�� -->

<div id='pdv_15191' class='pdv_class'  title='��Ա��¼' style='width:763px;height:500px;top:0px;left:239px; z-index:12'>
<div id='spdv_15191' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">

<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_address.gif) no-repeat">
	<link href="../css/nav.css" rel="stylesheet" type="text/css" />
	<div class="nav" style="float:left;height:38px;font:12px/46px simsun;color:#464646;padding-top:4px;padding-left:38px;">
		<?php echo $this->_tpl_vars['address']; ?>

	</div>
	<div style="float:right;width:20px;height:48px;background:url(../images/title_address.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:0px;">
<div style="MARGIN-TOP: 15px; PADDING-BOTTOM: 20px; PADDING-left: 90px; MARGIN-LEFT: 25px; COLOR: #333; LINE-HEIGHT: 150%">
	<link href="../css/login.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="../js/login.js"></script>
	<form id="memberLogin" method="post" action="action/login.php" >
		<?php if ('OK' === $this->_tpl_vars['loginAgain']): ?>
		<div id="notice" class="noticediv2">���볬ʱ,�����µ���!</div>
		<?php else: ?>
		<div id="notice" class="noticediv"></div>
		<?php endif; ?>
		<table width="210px"  border="0" cellspacing="0" cellpadding="3">
		    <tr>
		      <td width="80">��¼�˺�</td>
		      <td style="text-align:left;">
		      	<input type="text" id="username" name="username"  class="input" maxlength="20" style="width:135px">
		      </td>
		    </tr>
		    <tr>
		      <td width="80">��¼����</td>
		      <td>
		      	<input type="password" id="password" name="password" class="input"  style="width:135px" maxlength="20">
		      </td>
		    </tr>
		    <tr>
				<td width="80">�� ֤ ��</td>
				<td>
			      	<table border="0" cellspacing="0" cellpadding="0">
					  <tr>
					    <td>
					    	<input type="text" id="code" name="code" style="width:59px"  class="input" maxlength="4"/>
					    </td>
					    <td>&nbsp;<img id="codeimg" src="../random/imgcode.php" width="70" height="20" style="border:1px #dddddd solid;cursor:pointer"></td>
					  </tr>
					</table>
				</td>
		    </tr>
		    <tr>
				<td width="80">
					<input name="act" type="hidden" id="act" value="login" />
				</td>
				<td>
			      	<input name="imageField" type="image" src="../images/denglu.gif"  border="0"/>
				</td>
		    </tr>
		</table>
	</form>
</div>
</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_link.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_link.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>

</div>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>