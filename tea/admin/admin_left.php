<?php
include_once ('admin_global.php');
$r=$db->Get_user_shell_check($uid, $shell);

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>��վ��̨�������_left</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=gbk">
		<META content="MSHTML 6.00.6000.16890" name=GENERATOR>
		<LINK href="images/private.css" type=text/css rel=stylesheet>


		<SCRIPT language=javascript>
		<!--
			function menu_tree(meval){
				var left_n=eval(meval);
				if (left_n.style.display=="none"){
					eval(meval+".style.display='';");
				} else {
					eval(meval+".style.display='none';");
				}
			}
		-->
		</SCRIPT>
	</HEAD>
	<BODY>
		<CENTER>
			<TABLE class=Menu cellSpacing=0>
				<TBODY>
					<TR>
						<TH onClick="javascript:menu_tree('left_1');" align=middle>�� �������� ��</TH>
					</TR>
					<TR id=left_1>
						<TD>
							<TABLE width="100%">
								<TBODY>
							        <TR>
										<TD>
											<IMG src="images/menu.gif" align=absMiddle border=0>&nbsp;
									  		<A href="admin_main.php" target=main>������Ϣ</A>
									  	</TD>
									</TR>
							        <TR>
							        	<TD>
							        		<IMG src="images/menu.gif" align=absMiddle border=0>&nbsp;
									  		<A onClick="return confirm('��ʾ����ȷ��Ҫ�˳�ϵͳ��')" href="admin_main.php?action=logout"  target=_parent>�˳���̨</A>
									  	</TD>
									</TR>
								</TBODY>
							</TABLE>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE class=Menu cellSpacing=0 style="margin-top:5px">
				<TBODY>
					<TR>
						<TH onClick="javascript:menu_tree('left_2');" align=middle>�� �������� ��</TH>
					</TR>
					<TR id=left_2>
						<TD>
							<TABLE width="100%">
        						<TBODY>
        						<!--
							        <TR>
										<TD>
											<IMG src="images/menu.gif" align=absMiddle border=0>&nbsp;
									  		<A href="admin_news_class.php" target=main>���ŷ���</A>
									  	</TD>
									</TR>
								-->
		        					<TR>
										<TD>
											<IMG src="images/menu.gif" align=absMiddle border=0>&nbsp;
		  									<A href="admin_news_list.php" target=main>�����б�</A>
		  								</TD>
									</TR>
	        						<TR>
										<TD>
											<IMG src="images/menu.gif" align=absMiddle border=0>&nbsp;
		  									<A href="admin_news_add.php" target=main>�������</A>
		  								</TD>
									</TR>
 								</TBODY>
 							</TABLE>
	 					</TD>
	 				</TR>
	 			</TBODY>
	 		</TABLE>
	 		<TABLE class=Menu cellSpacing=0 style="margin-top:5px">
				<TBODY>
					<TR>
						<TH onClick="javascript:menu_tree('left_3');" align=middle>�� ��Ʒ���� ��</TH>
					</TR>
					<TR id=left_3>
						<TD>
							<TABLE width="100%">
        						<TBODY>
							        <TR>
										<TD>
											<IMG src="images/menu.gif" align=absMiddle border=0>&nbsp;
									  		<A href="admin_prod_class.php" target=main>��Ʒ����</A>
									  	</TD>
									</TR>
		        					<TR>
										<TD>
											<IMG src="images/menu.gif" align=absMiddle border=0>&nbsp;
		  									<A href="admin_prod_list.php" target=main>��Ʒ�б�</A>
		  								</TD>
									</TR>
	        						<TR>
										<TD>
											<IMG src="images/menu.gif" align=absMiddle border=0>&nbsp;
		  									<A href="admin_prod_add.php" target=main>��Ӳ�Ʒ</A>
		  								</TD>
									</TR>
 								</TBODY>
 							</TABLE>
	 					</TD>
	 				</TR>
	 			</TBODY>
	 		</TABLE>
			<TABLE class=Menu cellSpacing=0 style="margin-top:5px">
				<TBODY>
					<TR>
						<TH align=middle>�� �汾��Ϣ ��</TH>
					</TR>
					<TR>
						<TD align=middle>AdminTEA 1.0</TD>
					</TR>
				</TBODY>
 			</TABLE>
 		</CENTER>
 	</BODY>
 </HTML>
