Ext.onReady(function(){
	Ext.BLANK_IMAGE_URL='../scripts/resources/images/default/s.gif';
	var tree = new Ext.tree.TreePanel({
		title:'功能菜单',
		width:200,
		autoHeight:true,
		renderTo:Ext.getBody(),
		enableDrag:true,
		enableDrop:true,
		root:new Ext.tree.AsyncTreeNode({
			id:'00',
			text:'导航菜单',
			checked:true
		}),
		loader:new Ext.tree.TreeLoader({
			url:'tree.jsp'
		})
	});
	tree.expandAll();
	tree.getEl().center();
})