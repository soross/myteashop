<?php /* Smarty version 2.6.26, created on 2011-06-28 14:44:38
         compiled from inc/editor.html */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="content-type" content="text/html; charset=GBK" />
  <title>KindEditor</title>
  <?php echo '
  <style type="text/css" rel="stylesheet">
    form {
    margin: 0;
    }
    .editor {
    margin-top: 5px;
    margin-bottom: 5px;
    }
  </style>
  <script type="text/javascript" charset="gbk" src="../kindeditor/kindeditor.js"></script>
  <script type="text/javascript">
    KE.show({
        id : \'content1\',
		resizeMode : 1,
        cssPath : \'../../kindeditor.css\',
        items : [
        \'source\', \'plainpaste\', \'fontname\', \'fontsize\', \'textcolor\', \'bgcolor\', \'bold\', \'italic\', \'underline\',
        \'removeformat\',\'subscript\' ,\'superscript\', \'justifyleft\', \'justifycenter\', \'justifyright\', \'insertorderedlist\',
        \'insertunorderedlist\',\'table\', \'hr\', \'link\', \'unlink\']
    });
  </script>
  '; ?>

</head>
<body>
  <div class="editor">
    <textarea id="content1" name="content" style="width:700px;height:200px;visibility:hidden;"><?php echo $this->_tpl_vars['info'][4]; ?>
</textarea>
  </div>
	<!--
	<input type="button" name="button" value="取得内容" onclick="javascript:alert(KE.util.getData('content1'));" />
	<input type="button" name="button" value="取得纯文本" onclick="javascript:alert(KE.util.getPureData('content1'));" />
	<input type="submit" name="button" value="提交内容" />
	 -->
</body>
</html>