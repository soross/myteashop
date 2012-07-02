<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="STYLESHEET" type="text/css" href="codebase/dhtmlxtree.css">
<title>无标题文档</title>
</head>
<body >
<table >
	<tr>
		<td valign="top"  height="100%" width="195px">
			<div id="treeboxbox_tree"><br>
		 </td>
	 </tr>
 </table>
</body>
<script  src="codebase/dhtmlxcommon.js"></script>
<script  src="codebase/dhtmlxtree.js"></script>
<script>
	tree=new dhtmlXTreeObject("treeboxbox_tree","100%","100%",0);
	tree.setImagePath("codebase/imgs/csh_yellowbooks/");
	tree.loadXML("codebase/menu_1.xml");
	tree.enableDragAndDrop(0);
	tree.setOnClickHandler(tonclick);
	function tonclick(id){
		if(tree.getSelectedItemId()<0){
			tree.openItem(id);
		}else{
			//alert(tree.getSelectedItemId());
			window.parent.dataFrame.location.href="../"+tree.getSelectedItemId();
		}
	}
</script>
</html>