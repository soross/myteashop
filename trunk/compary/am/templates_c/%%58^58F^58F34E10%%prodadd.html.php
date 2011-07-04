<?php /* Smarty version 2.6.26, created on 2011-06-28 16:55:33
         compiled from product/prodadd.html */ ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>后台管理</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=GBK">
		<LINK href="../css/private.css" type=text/css rel=stylesheet>
		<script src="../js/preview.js"></script>
	</HEAD>
	<BODY>
		<TABLE class=navi cellSpacing=1 align=center border=0>
			<TBODY>
				<TR>
					<TH>
						后台 >> 产品管理 >> 新增产品
					</TH>
				</TR>
			</TBODY>
		</TABLE>
		<BR>
		<form id="addProd" action="action/post.php" method="post"
				onsubmit="return false;" enctype="multipart/form-data">
			<table border=0 cellspacing=1 class=form>
				<tr>
					<th colspan="3">
						新增产品
					</th>
				</tr>
				<tr>
					<td width="150px" align=center>
						产品名称
					</td>
					<td>
						<input type="text" name="prod_name" size="30" maxlength=50 />&nbsp;<font style="color: red;">*</font>
					</td>
				</tr>
				<tr>
					<td align=center>
						产品类别
					</td>
					<td >
						<select name="prod_class">
							<option value="10">
								请选择产品类型
							</option>
							<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=($this->_tpl_vars['prodClassList'])) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
							<option value="<?php echo $this->_tpl_vars['prodClassList'][$this->_sections['list']['index']]['id']; ?>
">
								<?php echo $this->_tpl_vars['prodClassList'][$this->_sections['list']['index']]['class_name']; ?>

							</option>
							<?php endfor; endif; ?>
						</select>
						<font style="color: red;">*</font>
					</td>
				</tr>
				<tr>
					<td width="150px" align=center>
						是否发布Demo
					</td>
					<td>
						<input type="radio" name="prod_url" value="0" checked />未发布
			  			<input type="radio" name="prod_url" value="1" />已发布&nbsp;<font style="color:red;">*</font>
					</td>
				</tr>
				<tr>
					<td align=center>
						产品图片
					</td>
					<td>
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td width="300px">
									<?php echo '
									<input id="upload_img" name="upfile" type="file"
										style="border: 1 solid #9a9999; font-size: 9pt; background-color: #ffffff;"
										  onChange="if(this.value!=\'\'){previewImg.src=this.value;}else{previewImg.src=\'../../product/images/nopic.jpg\';}">
									<br>
									允许上传的文件类型为:
									<br>
									jpg|jpeg|png|pjpeg|gif|bmp|x-png|swf
									'; ?>

									&nbsp;<font style="color: red;">*</font>
								</td>
								<td>
									<img id="previewImg" name="previewImg" src="../../product/images/nopic.jpg"
										style="cursor: hand;" onClick="window.open(this.src);" width="150"
										height="120" alt="点击查看大图" />
								</td>
							</tr>
						</table>

					</td>
				</tr>
				<tr style="height:200px;">
					<td align=center>
						产品简介
					</td>
					<td>
						<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/editor.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
					</td>
				</tr>
				<tr>
					<td width="150px" align=center>
						成功案例网址
					</td>
					<td>
						<input type="text" name="prod_link" size="30" />
					</td>
				</tr>
				<tr>
					<td width="150px" align=center>
						案例公司名称
					</td>
					<td>
						<input type="text" name="compary" size="30" />
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>
						<!--
						<input type="button" name="button" value="取得内容" onclick="javascript:alert(KE.util.getData('content1'));" />
					    <input type="button" name="button" value="取得纯文本" onclick="javascript:alert(KE.util.getPureData('content1'));" />
					    <input type="submit" name="button" value="提交内容" />
						 -->
						<input type="button" name="goback" style="height: 30px;"
							value="取消返回" onclick="window.history.back()">&nbsp;
						<input type="button" name="add_prod" style="height:30px;"
							value="新增产品" onclick="this.form.prodDesc.value=KE.util.getData('content1');this.form.submit();">
						<input type="hidden" name="task" value="addProduct">
						<input type="hidden" name="prodDesc">
					</td>
				</tr>
			</table>
		</form>
		<br>
	</BODY>
</HTML>