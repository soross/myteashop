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

<div id='banner'><div id='picShow_source'><ul><li><p class='pic'><img src='images/content/typeSet393_2012223211851.jpg'/></p><p class='text'>�����û�����Ŀ��������ԭ�򣬸�Ч����Ŀ���̹��������������ϵ���Լ��Թ��������İ�����רע��һֱ�ڰ������ǳɾ͸���ɹ�����...</p></li></ul></div></div>
</div>
<!--����-->
<div class="Hs_Middle">
    <!--������-->
    <div class="Page_left" style="margin-top: -20px;">
    	<div class="Page_Text" style="border:0; padding-bottom:0px">
		<div class="Page_Text_Support"><span style="font-size:18px;font-family:'΢���ź�';color:#ff7c00;">��������֧��</span></div></div>

        <!--����-->
        	<div class="Access_Item">
            	<div class="Access_Title">�ʼ�����</div>
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
                    <li><img src="images/List_Icon02.gif"><a href="mailto:huaxin@huaxinservice.com">�ۺ����</a></li>
                    <li><img src="images/List_Icon02.gif"><a href="mailto:huaxin@huaxinservice.com">�ͻ�Ͷ��</a></li>
                     -->
                </ul>
            </div>
            <div class="Access_Item">
            	<div class="Access_Title">��վ���԰�</div>
                <a target="_blank" href="msg.html" class="Massage"></a>
            </div>
            <div class="Access_Item" style="margin:0">
            	<div class="Access_Title">���߿ͷ�</div>
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
                    <li ><img src="images/List_Icon03.gif"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=67801239&site=qq&menu=yes">QQ���߿ͷ�</a></li>
                    <li><img src="images/List_Icon04.gif"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=67801239&site=qq&menu=yes">Msn���߿ͷ�</a></li>
                     -->
                </ul>
            </div>
        <!--���롡����-->

        <!--��������-->
        <div class="Content_support" >
        	<div class="Page_Title" style="margin-top: -20px;"><span style="font-size:16px;font-family:'΢���ź�';color:#ff7c00;">��������</span></div>
       		<div class="New">
        	<ul>
        		<li><a href="ShowLogin.html?height=160;width=400" class="thickbox">ĳ���е�����˾������Ǩ����</a></li>
        		<li><a target="_blank" href="/hxfwal/25/">ĳ���й�˾IT�����豸ά��</a></li>
        		<li><a target="_blank" href="/hxfwal/26/">ĳʡ�����������缯����Ŀ</a></li>
        		<li><a target="_blank" href="/hxfwal/27/">ĳʡ������Ϣ���Ļ��������Ǩ</a></li>
					<!--<li style="font-size:10px;"><a href="/hxfwal/">>>����</a></li> -->
            </ul>
            </div>
        </div>
        <!--�������⡡����-->
    </div>
    <!--������ ����-->
    <!--������-->
    <div class="Page_Right">
    	<div class="Phone">4000-480-580</div>
    	<div class="New" style="text-align: left;">
        	<div class="Page_Title"><span style="font-size:18px;font-family:'΢���ź�';color:#ff7c00;">�����ĵ�</span></div>
            <ul>
            	<li><a target="_blank" href="#">aaa</a></li>
            	<li><a target="_blank" href="#">aaa</a></li>
            </ul>
        </div>

    </div>
    <!--������ ����-->
</div>
<!--���� ����-->

    <br class="clearfloat" />
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>


</body>
</html>