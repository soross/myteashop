<?php /* Smarty version 2.6.26, created on 2011-11-29 07:02:25
         compiled from prodinfo.html */ ?>
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
		<a id="sectionHeader" href="product.php" style="background:url(<?php if ($this->_tpl_vars['clang'] == 'English'): ?>images/title/product_en.gif<?php else: ?>images/title/product_cn.gif<?php endif; ?>);"><span>Products</span></a>
		<ul id="subNav">

			<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['titleRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
			<?php if ($this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['pid'] == 8): ?>
			<li><a href="product.php?typeid=<?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id']; ?>
"><?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['menu_name']; ?>
</a>
				<ul>
				<?php unset($this->_sections['lt']);
$this->_sections['lt']['name'] = 'lt';
$this->_sections['lt']['loop'] = is_array($_loop=$this->_tpl_vars['titleRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['lt']['show'] = true;
$this->_sections['lt']['max'] = $this->_sections['lt']['loop'];
$this->_sections['lt']['step'] = 1;
$this->_sections['lt']['start'] = $this->_sections['lt']['step'] > 0 ? 0 : $this->_sections['lt']['loop']-1;
if ($this->_sections['lt']['show']) {
    $this->_sections['lt']['total'] = $this->_sections['lt']['loop'];
    if ($this->_sections['lt']['total'] == 0)
        $this->_sections['lt']['show'] = false;
} else
    $this->_sections['lt']['total'] = 0;
if ($this->_sections['lt']['show']):

            for ($this->_sections['lt']['index'] = $this->_sections['lt']['start'], $this->_sections['lt']['iteration'] = 1;
                 $this->_sections['lt']['iteration'] <= $this->_sections['lt']['total'];
                 $this->_sections['lt']['index'] += $this->_sections['lt']['step'], $this->_sections['lt']['iteration']++):
$this->_sections['lt']['rownum'] = $this->_sections['lt']['iteration'];
$this->_sections['lt']['index_prev'] = $this->_sections['lt']['index'] - $this->_sections['lt']['step'];
$this->_sections['lt']['index_next'] = $this->_sections['lt']['index'] + $this->_sections['lt']['step'];
$this->_sections['lt']['first']      = ($this->_sections['lt']['iteration'] == 1);
$this->_sections['lt']['last']       = ($this->_sections['lt']['iteration'] == $this->_sections['lt']['total']);
?>
					<?php if ($this->_tpl_vars['titleRows'][$this->_sections['lt']['index']]['pid'] == $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id']): ?>
					<li class="second"><a href="product.php?typeid=<?php echo $this->_tpl_vars['titleRows'][$this->_sections['lt']['index']]['id']; ?>
"><?php echo $this->_tpl_vars['titleRows'][$this->_sections['lt']['index']]['menu_name']; ?>
</a></li>
					<?php endif; ?>
				<?php endfor; endif; ?>
				</ul>

			</li>
			<?php endif; ?>
			<?php endfor; endif; ?>
		</ul>

	</div>


	<div class="column column265 productImageColumn">
					<a href="#" onclick="window.open('viewlarger.php?prodid=<?php echo $this->_tpl_vars['prodinfo']['id']; ?>
','popUp2','status=0,scrollbars=1,width=500,height=440');return false;">
						<img src="<?php echo $this->_tpl_vars['prodinfo']['prod_pic']; ?>
" width="148" height="126" alt="<?php echo $this->_tpl_vars['prodinfo']['prod_name']; ?>
" />
					</a><br/>
					<a class="zoom" href="#" onclick="window.open('viewlarger.php?prodid=<?php echo $this->_tpl_vars['prodinfo']['id']; ?>
','popUp3','status=0,scrollbars=1,width=500,height=440');return false;"><?php echo $this->_tpl_vars['lang_product']['ChaKanDaTu']; ?>
</a>
	</div>
	<div id="editor" class="column column455">
		<?php echo '
		<script type="text/javascript">
			var tabCount=1;
			if(true){
				tabCount++;
			}
			if(true){
				tabCount++;
			}
			function clearTab(){
				for(i=1;i<tabCount+1;i++){
					document.getElementById("productTabContent"+i).style.display="none";
					document.getElementById("productTabLink"+i).style.color="#6A747C";
					document.getElementById("productTabLink"+i).style.backgroundPosition="bottom left";
				}
			}
			function setTab(id){
				clearTab();
				document.getElementById("productTabContent"+id).style.display="block";
				//document.getElementById("productTabs").className="tab"+id+tabCount;
				document.getElementById("productTabLink"+id).style.backgroundPosition="top left";
				document.getElementById("productTabLink"+id).style.color="#fff";

			}
		</script>
		'; ?>

		<div id="productBox">
			<h1><?php echo $this->_tpl_vars['prodinfo']['prod_name']; ?>
</h1>

			<div style="width:456px;padding:0;">
				<div class="horizontalDotRepeat" style="background-position:bottom left">&nbsp;</div>
				<div style="padding:10px 0 20px 10px;background:#FBFCF5;overflow:auto;">
					<div class="column verticalDotRepeat" style="width:240px;height:86px;padding:0;">
						<!-- <?php echo $this->_tpl_vars['lang_product']['BianHao']; ?>
: <strong><?php echo $this->_tpl_vars['prodinfo']['id']; ?>
 </strong><br/><br/>-->
						<?php echo $this->_tpl_vars['lang_product']['CPBH']; ?>
:  <strong><?php echo $this->_tpl_vars['prodinfo']['prod_No']; ?>
</strong><br/><br/>
						<!--  <?php echo $this->_tpl_vars['lang_product']['VIPJiaGe']; ?>
: <strong><?php echo $this->_tpl_vars['prodinfo']['vip_price']; ?>
</strong>-->
						<div style="font-size:9px;margin: 10px 0px 0px;"></div>
						<p class="prodStatus"></p>
					</div>
					<!--
					<div class="column logintoshop" style="width:186px;padding:0 0 0 10px;">
						<a href="#" style="color:#67A621;">To shop, log in to your market site's Virtual Office.</a> <a href="/en_US/distributors/"><img src="/export/sites/youngliving/en_US/Images/miscImages/arrowGreenOnWhite.gif"/></a>
					</div>
					<div class="horizontalDotRepeat" style="width:196px;height:20px;margin:0 0 0 10px;float:left;"></div>

					<div class="column" style="width:186px;padding:0 0 0 10px;">
						<a href="#" target="_blank" style="color:#D4BF86;">New to Young Living? Create your account.</a> <a href="https://www.youngliving.com/signup/" target="_blank"><img src="/export/sites/youngliving/en_US/Images/miscImages/arrowTanOnWhite.gif"/></a>
					</div>
					 -->
				</div>
				<div class="horizontalDotRepeat" style="background-position:top left">&nbsp;</div>
			</div>

			<div id="productTabs">
				<a id="productTabLink1" href="javascript:setTab(1);"><?php echo $this->_tpl_vars['lang_product']['ChanPinJieShao']; ?>
</a>


					<a id="productTabLink2" href="javascript:setTab(2);"><?php echo $this->_tpl_vars['lang_product']['ShiYongFangFa']; ?>
</a>



					<a id="productTabLink3" href="javascript:setTab(3);"><?php echo $this->_tpl_vars['lang_product']['ChengFen']; ?>
</a>

			</div>
			<div id="productBoxTop"></div>
			<div id="productTabContent1" class="productTabContent">
				<p>
				<?php echo $this->_tpl_vars['prodinfo']['prod_desc']; ?>

				</p>
			</div>


				<div id="productTabContent2" class="productTabContent">
					<p><?php echo $this->_tpl_vars['prodinfo']['prod_use']; ?>

					</p>
				</div>

				<div id="productTabContent3" class="productTabContent">
					<p><?php echo $this->_tpl_vars['prodinfo']['ingredients']; ?>

					</p>
				</div>


			<div id="productBoxBottom"></div>

			<p style="margin:5px 10px;font-size:9px;">*<?php echo $this->_tpl_vars['lang_product']['TiShi']; ?>
</p>

		</div>
		<script type="text/javascript">setTab(1);</script>
	</div>

</div>

















<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>