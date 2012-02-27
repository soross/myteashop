<?php /* Smarty version 2.6.26, created on 2012-02-27 15:27:13
         compiled from support.htm */ ?>

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div id='body'>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/thickbox_plus.js"></script>
<link rel="stylesheet" type="text/css" href="css/thickbox.css"/>

<div id='banner'><div id='picShow_source'><ul><li><p class='pic'><img src='images/content/typeSet393_2012223211851.jpg'/></p><p class='text'>重视用户体验的可用性设计原则，高效的项目流程管理和质量控制体系，以及对工作持续的爱好与专注，一直在帮助我们成就更多成功案例...</p></li></ul></div></div>
</div>
<!--内容-->
<div class="Hs_Middle">
    <!--左区域-->
    <div class="Page_left" style="margin-top: -20px;">
    	<div class="Page_Text" style="border:0; padding-bottom:0px">
		<div class="Page_Text_Support"><span style="font-size:18px;font-family:'微软雅黑';color:#ff7c00;">技术在线支持</span></div></div>

        <!--接入-->
        	<div class="Access_Item">
            	<div class="Access_Title">邮件接入</div>
                <ul class="Mail">
                	<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['mail']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
                	<li><img src="<?php echo $this->_tpl_vars['mail'][$this->_sections['list']['index']]['comm_value']; ?>
"><a href="mailto:<?php echo $this->_tpl_vars['mail'][$this->_sections['list']['index']]['comm_code']; ?>
"><?php echo $this->_tpl_vars['mail'][$this->_sections['list']['index']]['remark']; ?>
</a></li>
                	<?php endfor; endif; ?>
                	<!--
                    <li><img src="images/List_Icon02.gif"><a href="mailto:huaxin@huaxinservice.com">售后服务</a></li>
                    <li><img src="images/List_Icon02.gif"><a href="mailto:huaxin@huaxinservice.com">客户投诉</a></li>
                     -->
                </ul>
            </div>
            <div class="Access_Item">
            	<div class="Access_Title">网站留言板</div>
                <a target="_blank" href="msg.html" class="Massage"></a>
            </div>
            <div class="Access_Item" style="margin:0">
            	<div class="Access_Title">在线客服</div>
                <ul class="Online">
                	<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['im']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
                	<li ><img src="<?php echo $this->_tpl_vars['im'][$this->_sections['list']['index']]['comm_value']; ?>
"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo $this->_tpl_vars['im'][$this->_sections['list']['index']]['comm_code']; ?>
&site=qq&menu=yes"><?php echo $this->_tpl_vars['im'][$this->_sections['list']['index']]['remark']; ?>
</a></li>
                	<?php endfor; endif; ?>
                	<!--
                    <li ><img src="images/List_Icon03.gif"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=67801239&site=qq&menu=yes">QQ在线客服</a></li>
                    <li><img src="images/List_Icon04.gif"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=67801239&site=qq&menu=yes">Msn在线客服</a></li>
                     -->
                </ul>
            </div>
        <!--接入　结束-->

        <!--常见问题-->
        <div class="Content_support" >
        	<div class="Page_Title" style="margin-top: -20px;"><span style="font-size:16px;font-family:'微软雅黑';color:#ff7c00;">最新留言</span></div>
       		<div class="New">
        	<ul>
        		<li><a href="ShowLogin.html?height=160;width=400" class="thickbox">某地市电力公司机房搬迁案例</a></li>
        		<li><a target="_blank" href="/hxfwal/25/">某上市公司IT核心设备维保</a></li>
        		<li><a target="_blank" href="/hxfwal/26/">某省厅级机关网络集成项目</a></li>
        		<li><a target="_blank" href="/hxfwal/27/">某省厅级信息中心机房整体搬迁</a></li>
					<!--<li style="font-size:10px;"><a href="/hxfwal/">>>更多</a></li> -->
            </ul>
            </div>
        </div>
        <!--常见问题　结束-->
    </div>
    <!--左区域 结束-->
    <!--右区域-->
    <div class="Page_Right">
    	<div class="Phone">4000-480-580</div>
    	<div class="New" style="text-align: left;">
        	<div class="Page_Title"><span style="font-size:18px;font-family:'微软雅黑';color:#ff7c00;">技术文档</span></div>
            <ul>
            	<li><a target="_blank" href="#">aaa</a></li>
            	<li><a target="_blank" href="#">aaa</a></li>
            </ul>
        </div>

    </div>
    <!--右区域 结束-->
</div>
<!--内容 结束-->

    <br class="clearfloat" />
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>


</body>
</html>