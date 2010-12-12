Ext.onReady(function() {
			Ext.BLANK_IMAGE_URL='../scripts/resources/images/default/s.gif';
			var tree = new Ext.tree.TreePanel({
						title : '树Panel',
						width : 200,
						renderTo : Ext.getBody(),
						autoHeight : true,
						root : new Ext.tree.AsyncTreeNode({
									id : '0',
									text : '我的电脑',
									children : [{
												id : '01',
												text : '系统盘',
												iconCls:'menuroot',
												children : [{
															id : '011',
															text : 'Windows',
															leaf : true,
															iconCls:'main_login'
														}, {
															id : '012',
															text : 'System',
															leaf : true,
															iconCls:'main_help'
														}]
											}, {
												id : '02',
												text : '工具',
												leaf : true,
												iconCls:'menu_role_man'
											}]
								})
					});
			tree.getEl().center();
		})