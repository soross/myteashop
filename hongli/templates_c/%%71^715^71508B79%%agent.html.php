<?php /* Smarty version 2.6.26, created on 2011-12-09 12:02:10
         compiled from agent.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'stripslashes', 'agent.html', 38, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>


<!-- w位置
<div id="bcwrapper">
	<div id="breadcrumbs">
		<a href="/">首页</a> >
		<a href="#">产品中心</a> >
		<a href="#">Essential Nutrition</a> >
		<strong>Antioxidants</strong>
	</div>

	<div id="addthis">
	</div>
	<div class=clear></div>
</div>
 -->
<link rel="stylesheet" type="text/css" href="css/dl.css">
<script type="text/javascript" src="js/dlzxly.js"></script>
<div id="content" class="columns180720">
	<div id="leftColumn" class="column column180">
		<a id="sectionHeader" href="product.php" style="background:url(<?php if ($this->_tpl_vars['clang'] == 'English'): ?>images/title/agent_en.gif<?php else: ?>images/title/agent_cn.gif<?php endif; ?>);"><span>Products</span></a>
		<ul id="subNav">
			<li><a href="agent.php"><?php echo $this->_tpl_vars['lang_company']['JiaMengDaiLi']; ?>
</a></li>
		</ul>
	</div>


	<div id="editor" class="column column520">

		<!--文章内容Start-->
		<div id="galleryList" class="showinfo">
			<!--返回顶部-->
			<a name="top" id="top"></a>
		    <div id="maintext" class="maintext">
		    	<div style="background:#ececec;"><h1 style="padding:5px 0 5px 5px;"><?php echo $this->_tpl_vars['lang_company']['JiaMengDaiLi']; ?>
</h1></div>

		    	<?php echo ((is_array($_tmp=$this->_tpl_vars['content'])) ? $this->_run_mod_handler('stripslashes', true, $_tmp) : stripslashes($_tmp)); ?>


				<p>&nbsp;</p></div>
			    <!--文章toolbar-->
			    <div class="toolbar">
			    </div>
			    <?php if ($this->_tpl_vars['clang'] != 'English'): ?>
			     <div>
			    	<div id="offerdetail_bord">
						<h5><font color="#49A810" >我想代理、加盟此品牌 (发送在线留言)</font></h5>
						<div class="henry-content-bg" style="padding:5px 0px;">
							<a name="sendly" rel="nofollow"></a><font color="#49A810" >对宝迪产品感兴趣，发送在线留言</font>(<font color="#FF0000">*</font>必填)
							<form method="POST" action="adddlly.php" onsubmit="return ongqinfo();"  name="gqinfo">
								<div id="strdl"></div>
							</form>
						</div>
					</div>
					<div id=space5></div>
					<br>
					<div style="padding:2px;font-size:12px"></div>
					<SCRIPT src="js/dlsend.js"></SCRIPT>
			    </div>
			    <?php endif; ?>
			    <!--上下篇文章-->
			    <div class="context"></div>
		</div>
		<!--文章内容End-->

	</div>
	<!-- end #content -->
</div>



<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>