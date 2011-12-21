<?php /* Smarty version 2.6.26, created on 2011-11-18 10:02:11
         compiled from brand.html */ ?>
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

<div id="content" class="columns180720">
	<div id="leftColumn" class="column column180">
		<a id="sectionHeader" href="product.php" style="background:url(<?php if ($this->_tpl_vars['clang'] == 'English'): ?>images/title/company_en.gif<?php else: ?>images/title/company_cn.gif<?php endif; ?>);"><span>Products</span></a>
		<ul id="subNav">
			<li><a href="aboutme.php"><?php echo $this->_tpl_vars['lang_company']['GongSiJianJie']; ?>
</a></li>
			<li><a href="culture.php"><?php echo $this->_tpl_vars['lang_company']['GongSiWenHua']; ?>
</a></li>
			<li><a href="brand.php"><?php echo $this->_tpl_vars['lang_company']['PinPaiQuanShi']; ?>
</a></li>
		</ul>
	</div>


	<div id="editor" class="column column520">

		<!--文章内容Start-->
		<div id="galleryList" class="showinfo">
			<!--返回顶部-->
			<a name="top" id="top"></a>
		    <div id="maintext" class="maintext">
		    	<div style="background:#ececec;"><h1 style="padding:5px 0 5px 5px;"><?php echo $this->_tpl_vars['lang_company']['PinPaiQuanShi']; ?>
</h1></div>

		    	<?php echo $this->_tpl_vars['content']; ?>


				<p>&nbsp;</p></div>
			    <!--文章toolbar-->
			    <div class="toolbar">
			    </div>
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