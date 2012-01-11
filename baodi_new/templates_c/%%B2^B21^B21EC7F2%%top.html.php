<?php /* Smarty version 2.6.26, created on 2011-12-23 08:56:07
         compiled from inc/top.html */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
 	<title>宝迪 纯天然有机植物精油</title>
	<meta name="KEYWORDS" content="young living news stories, young living headlines" />
	<meta name="Description" content="Read current and archived Young Living news stories." />

	<link rel="stylesheet" type="text/css" href="css/global.css">
	<link rel="stylesheet" type="text/css" href="css/sub.css">
	<link rel="stylesheet" type="text/css" href="css/tables.css">
	<script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/AC_RunActiveContent.js"></script>
</head>
<body>
<div id="wrapper">

	<div id="header">
		<a id="logo" href="#"><span>11111</span></a>
		<!--mainNav -->
		<ul id="mainNav">
			<?php $this->assign('tmp', 0); ?>
			<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['menuRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
				<?php if ($this->_tpl_vars['menuRows'][$this->_sections['list']['index']]['pid'] == 0): ?>
				<li id="main<?php echo $this->_tpl_vars['tmp']; ?>
" class="first"><a id="mainLink<?php echo $this->_tpl_vars['tmp']; ?>
" href="<?php echo $this->_tpl_vars['menuRows'][$this->_sections['list']['index']]['url']; ?>
" onmouseover="dd(<?php echo $this->_tpl_vars['tmp']; ?>
);" onmouseout="timer();"><?php echo $this->_tpl_vars['menuRows'][$this->_sections['list']['index']]['menu_name']; ?>
</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<div id="sub<?php echo $this->_tpl_vars['tmp']; ?>
" class="sub" onmouseout="timer();" onmouseover="clearTimer();">
						<ul >
							<?php unset($this->_sections['lt']);
$this->_sections['lt']['name'] = 'lt';
$this->_sections['lt']['loop'] = is_array($_loop=$this->_tpl_vars['menuRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<?php if ($this->_tpl_vars['menuRows'][$this->_sections['lt']['index']]['pid'] == $this->_tpl_vars['menuRows'][$this->_sections['list']['index']]['id']): ?>
								<li ><a href="<?php echo $this->_tpl_vars['menuRows'][$this->_sections['lt']['index']]['url']; ?>
"><?php echo $this->_tpl_vars['menuRows'][$this->_sections['lt']['index']]['menu_name']; ?>
</a></li>
								<?php endif; ?>
							<?php endfor; endif; ?>
							<?php if ($this->_tpl_vars['collegeID'] == $this->_tpl_vars['menuRows'][$this->_sections['list']['index']]['id']): ?>
								<?php unset($this->_sections['cl']);
$this->_sections['cl']['name'] = 'cl';
$this->_sections['cl']['loop'] = is_array($_loop=$this->_tpl_vars['collegeRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['cl']['show'] = true;
$this->_sections['cl']['max'] = $this->_sections['cl']['loop'];
$this->_sections['cl']['step'] = 1;
$this->_sections['cl']['start'] = $this->_sections['cl']['step'] > 0 ? 0 : $this->_sections['cl']['loop']-1;
if ($this->_sections['cl']['show']) {
    $this->_sections['cl']['total'] = $this->_sections['cl']['loop'];
    if ($this->_sections['cl']['total'] == 0)
        $this->_sections['cl']['show'] = false;
} else
    $this->_sections['cl']['total'] = 0;
if ($this->_sections['cl']['show']):

            for ($this->_sections['cl']['index'] = $this->_sections['cl']['start'], $this->_sections['cl']['iteration'] = 1;
                 $this->_sections['cl']['iteration'] <= $this->_sections['cl']['total'];
                 $this->_sections['cl']['index'] += $this->_sections['cl']['step'], $this->_sections['cl']['iteration']++):
$this->_sections['cl']['rownum'] = $this->_sections['cl']['iteration'];
$this->_sections['cl']['index_prev'] = $this->_sections['cl']['index'] - $this->_sections['cl']['step'];
$this->_sections['cl']['index_next'] = $this->_sections['cl']['index'] + $this->_sections['cl']['step'];
$this->_sections['cl']['first']      = ($this->_sections['cl']['iteration'] == 1);
$this->_sections['cl']['last']       = ($this->_sections['cl']['iteration'] == $this->_sections['cl']['total']);
?>
								<li ><a href="<?php echo $this->_tpl_vars['collegeRows'][$this->_sections['cl']['index']]['link_url']; ?>
"><?php echo $this->_tpl_vars['collegeRows'][$this->_sections['cl']['index']]['menu_name']; ?>
</a></li>
								<?php endfor; endif; ?>
							<?php endif; ?>
						</ul>
						<div class="subBottom"></div>
					</div>
				</li>
				<?php $this->assign('tmp', $this->_tpl_vars['tmp']+1); ?>
				<?php endif; ?>
			<?php endfor; endif; ?>
		</ul>
		<!--mainNav end -->

		<!-- Join Social Media BEGIN -->
		<div id="joinSocialMedia"></div>
		<!-- Join Social Media END -->

		<span id="selectText"><?php echo $this->_tpl_vars['lang']['YuYanXuanZhe']; ?>
</span>
		<a id="languageSelect" onmouseout="timer();" href="javascript:toggle('languageList');"><?php echo $this->_tpl_vars['clang']; ?>
</a>
		<div id="languageList" onmouseout="timer();" onmouseover="clearTimer();">
			<ul>
				<li><a href="changeLang.php?lang=zh_cn"><?php echo $this->_tpl_vars['lang']['ZhongWen']; ?>
</a></li>
				<li class="selected"><a href="changeLang.php?lang=en"><?php echo $this->_tpl_vars['lang']['YingYu']; ?>
</a></li>
			</ul>
			<div class="languageListBottom"></div>
		</div>
		<div id="topRightNav">
			<a id="memberSignup" onClick="window.parent.location.href='index.php'"><?php echo $this->_tpl_vars['lang']['WangZhanZhuYe']; ?>
</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;


			<a id="liveHelp" href="#"><?php echo $this->_tpl_vars['lang']['SheWeiZhuYe']; ?>
</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;

			<a id="distributorsOnly" href="changeLang.php"><?php echo $this->_tpl_vars['lang']['JiaRuShouChang']; ?>
</a>

			<div id="liveHelpListTop"></div>
		</div>
		<form name="searchForm" action="search.php" method="POST">
			<input id="searchField" onclick="c('searchField')" name="searchField" type="text" value="<?php echo $this->_tpl_vars['lang']['SouSuo']; ?>
" onkeypress="if (event.keyCode==13 && isValidSearch('search','<?php if ($this->_tpl_vars['clang'] == 'English'): ?>Please enter a valid search term that is at least 3 characters long.<?php else: ?>请输入3个字符.<?php endif; ?>')) <?php echo '{ document.searchForm.submit();return false;}"/>
			<div id="goOn">&nbsp;</div>'; ?>

			<a id="go" onclick="if (isValidSearch('search','<?php if ($this->_tpl_vars['clang'] == 'English'): ?>Please enter a valid search term that is at least 3 characters long.<?php else: ?>请输入3个字符.<?php endif; ?>')) document.searchForm.submit();" ><span>go</span></a>
		</form>

	</div>
	<!--header end -->

	<div id="homeMainImage"></div>
	<div id="homeSwf" style="z-index:20;">
	<?php if ($this->_tpl_vars['clang'] == 'English'): ?>
		<script type="text/javascript">
		AC_FL_RunContent('codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0','width','900','height','300','src','flv/baodi','quality','high','pluginspage','http://www.macromedia.com/go/getflashplayer','movie','flv/baodi','wmode','opaque' ); //end AC code
      </script>
      <noscript>
      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="900" height="300">
        <param name="movie" value="flv/baodi.swf" />
        <param name="quality" value="high" />
        <param name="wmode" value="opaque" />
        <embed src="flv/baodi.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="900" height="300"></embed>
      </object>
      </noscript>

      <!--
		<noscript>
	   <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="900" height="300">
        <param name="movie" value="flv/baodi.swf" />
        <param name="quality" value="high" />
		<param name="wmode" value="opaque" />
		<embed src="flv/baodi.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="900" height="300"></embed>
        </object>
        </noscript>
       -->
      <?php else: ?>
      <script type="text/javascript">
      AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0','width','900','height','300','src','flv/baodi_ch','quality','high','pluginspage','http://www.macromedia.com/go/getflashplayer','movie','flv/baodi_ch','wmode','opaque' ); //end AC code
      </script>
      <noscript>
      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="900" height="300">
        <param name="movie" value="flv/baodi_ch.swf" />
        <param name="quality" value="high" />
		<param name="wmode" value="opaque" />
		<embed src="flv/baodi_ch.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="900" height="300"></embed>
        </object>
        </noscript>
	<?php endif; ?>
	</div>
