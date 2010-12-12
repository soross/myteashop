Ext.onReady(function() {
			Ext.BLANK_IMAGE_URL = '../scripts/resources/images/default/s.gif';
			var tree = new Ext.tree.TreePanel({
						title : '功能菜单',
						width : 200,
						checkModel : 'cascade',
						autoHeight : true,
						renderTo : Ext.getBody(),
						root : new Ext.tree.AsyncTreeNode({
									id : '00',
									text : '导航菜单',
									uiProvider : Ext.ux.TreeCheckNodeUI
								}),
						loader : new Ext.tree.TreeLoader({
									url : 'tree.jsp',
									baseAttrs : {
										uiProvider : Ext.ux.TreeCheckNodeUI
									}
								}),
						buttons : [{
									text : '取值',
									handler : function() {
										var node=tree.getChecked('id');
										console.log(node);
										Ext.Ajax.request({
											url:'treeservice.jsp',
											params:{ids:node}
										})
									}
								}]
					});
			tree.expandAll();
			tree.getEl().center();
		})