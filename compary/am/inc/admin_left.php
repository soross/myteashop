<?php
require_once("../action/global_action.php");
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>网站后台控制面板_left</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=gbk">
		<META content="MSHTML 6.00.6000.16890" name=GENERATOR>
		<LINK href="../css/private.css" type=text/css rel=stylesheet>


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
						<TH onClick="javascript:menu_tree('left_1');" align=middle>≡ 基础操作 ≡</TH>
					</TR>
					<TR id=left_1>
						<TD>
							<TABLE width="100%" style="margin-top:5px">
								<TBODY>
							        <TR>
										<TD>
											<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
									  		<A href="../config/config.php" target=main>配置信息</A>
									  	</TD>
									</TR>
									 <TR>
										<TD>
											<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
									  		<A href="../config/link.php" target=main>添加友链</A>
									  	</TD>
									</TR>
							        <TR>
							        	<TD>
							        		<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
									  		<A onClick="return confirm('提示：您确定要退出系统吗？')" href="../ms.php"  target=_parent>退出后台</A>
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
						<TH onClick="javascript:menu_tree('left_3');" align=middle>≡ 产品管理 ≡</TH>
					</TR>
					<TR id=left_3>
						<TD>
							<TABLE width="100%" style="margin-top:5px">
        						<TBODY>
							        <TR>
										<TD>
											<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
									  		<A href="../product/prodclass.php" target=main>方案分类</A>
									  	</TD>
									</TR>
		        					<TR>
										<TD>
											<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
		  									<A href="../product/prodlist.php" target=main>方案列表</A>
		  								</TD>
									</TR>
	        						<TR>
										<TD>
											<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
		  									<A href="../product/prodadd.php" target=main>添加方案</A>
		  								</TD>
									</TR>
									<TR>
										<TD>
											<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
									  		<A href="../case/caselist.php" target=main>成功案例</A>
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
						<TH onClick="javascript:menu_tree('left_2');" align=middle>≡ 新闻管理 ≡</TH>
					</TR>
					<TR id=left_2>
						<TD>
							<TABLE width="100%" style="margin-top:5px">
        						<TBODY>
							        <TR>
										<TD>
											<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
									  		<A href="../news/newsclass.php" target=main>新闻分类</A>
									  	</TD>
									</TR>
		        					<TR>
										<TD>
											<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
		  									<A href="../news/newslist.php" target=main>新闻列表</A>
		  								</TD>
									</TR>
	        						<TR>
										<TD>
											<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
		  									<A href="../news/newsadd.php" target=main>添加新闻</A>
		  								</TD>
									</TR>
									<TR>
										<TD>
											<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
		  									<A href="../news/gatheraddress.php" target=main>采集地址</A>
		  								</TD>
									</TR>
									<TR>
										<TD>
											<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
		  									<A href="../news/newsgather.php" target=main>新闻采集</A>
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
						<TH onClick="javascript:menu_tree('left_4');" align=middle>≡ 客户维系 ≡</TH>
					</TR>
					<TR id=left_4>
						<TD>
							<TABLE width="100%" style="margin-top:5px">
        						<TBODY>
							        <TR>
										<TD>
											<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
									  		<A href="../cust/custadd.php" target=main>添加客户</A>
									  	</TD>
									</TR>
									<TR>
										<TD>
											<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
									  		<A href="../cust/custcaseadd.php" target=main>添加客案</A>
									  	</TD>
									</TR>
									<TR>
										<TD>
											<IMG src="../images/menu.gif" align=absMiddle border=0>&nbsp;
									  		<A href="../cust/custcaselist.php" target=main>客户案例</A>
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
						<TH align=middle>〓 版本信息 〓</TH>
					</TR>
					<TR>
						<TD align=middle><a href="http://Www.GuoguoNet.Com" target="_blank">果果网络</a><br><a href="http://Www.GuoguoNet.Com" target="_blank">Www.GuoguoNet.Com</a></TD>
					</TR>
					<TR>
						<TD align=middle>AM 1.0</TD>
					</TR>
				</TBODY>
 			</TABLE>
 		</CENTER>
 	</BODY>
 </HTML>
