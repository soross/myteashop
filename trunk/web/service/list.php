<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<HEAD>
<TITLE>深圳市金华洲模具钢材有限公司</TITLE>
<META content="text/html; charset=GBK" http-equiv=Content-Type>
<META content=text/css http-equiv=Content-Style-Type>
<META content=text/javascript http-equiv=Content-Script-Type>
<META name=keywords content="深圳市金华洲模具钢材有限公司">
<META name=description content="深圳市金华洲模具钢材有限公司">
<LINK rel=stylesheet type=text/css href="/web/images/screen[1].css">
<LINK rel=stylesheet type=text/css href="/web/css/global[1].css">
<LINK rel=stylesheet type=text/css href="/web/css/Style[2].css">
<LINK rel=stylesheet type=text/css href="/web/css/Pass[1].css">
<script language="JavaScript">
document.oncontextmenu=new Function("event.returnValue=false;");
document.onselectstart=new Function("event.returnValue=false;");
	function showContentDiv(id){
		var d = document.getElementById("contentDiv"+id);
		if(d.style.display=="none"){
			d.style.display="block";
		}else{
			d.style.display="none";
		}
	}
</script>

</HEAD>

<BODY id=toppage sizcache="43" sizset="1">
<DIV id=contentwrap_v14 sizcache="43" sizset="1"><!--[HEADER BLOCK]--> <!-- ============================== Begin "Header navigation" area ============================== -->
<DIV id=headerwrap_v14><!-- ==== header ==== -->
<DIV id=header_v14>
<?php  require_once("../page/head.html"); ?>
<!--/#header_v14 --><!-- ==== /header ==== --><!--[MAIN_MENU BLOCK]--><!-- ==== Global navigation ==== -->
<DIV id=globalnav_v14>
<?php  require_once("../page/link.html"); ?>
<DIV class=clear><IMG alt="" src="/web/images/1px[1].gif" width=1 height=1></DIV>
</DIV>
<!-- /#globalnav_v14 --><!-- ==== /Global navigation ==== --><!--/[MAIN_MENU BLOCK]--></DIV>
<!-- /#headerwrap --><!-- ============================== End "Header navigation" area ============================== --><!--/[HEADER BLOCK]--><!--[[CONTENTS AREA]]--><!-- ============================== Begin "Main area" ============================== -->
<DIV id=mainwrap_v14 class=indexContents sizcache="43" sizset="1"><!-- ==== Page tile ==== -->
<HR>



<P class=rmv>Main Contents begins from here.</P>
<!-- /.pagetitle --><!-- ==== /Page tile ==== --><!-- ==== Begin "PR colum area" ==== -->
<DIV id=setionTop class=section sizcache="43" sizset="1">
<DIV id=mainVisual sizcache="43" sizset="1">
<DIV sizcache="43" sizset="0"></DIV>
</DIV>
	<DIV id=sdo_top>
		<DIV id=sdo_top_wrap>
			<!--页头_结束-->
			<DIV id=Wrap>
				<DIV id=Container>
					<DIV class=IndexDo><!--左边菜单部分开始-->
						<DIV class=left_part>
						<DIV class=top>
						<DIV class=btm>
						<DL>
							<DD class=open>
								<H6>客户服务</H6>
						<UL>
						<LI><A href="/web/service/service.php">在线留言</A>
						<LI><A class=current href="/web/service/list.php">留言列表</A>
						<LI><A href="/web/service/flow.php">服务流程</A>
						</LI></UL>
							<!--	<TABLE border=0 cellSpacing=0 cellPadding=8 width="100%">
									<TBODY>
									<TR>
										<TD id=tdflash1 class=f_14_000000></TD>
									</TR>
									</TBODY>
								</TABLE>广告位结束-->
							</DD>
						</DL>
					</DIV>
				</DIV>
			</DIV><!--左边菜单部分结束-->

			<DIV class=cntBox_btm>
				<DIV class=cntBox_right>
					<DIV class=cntBox_left>
						<DIV class=greybg>
							<DIV class=step1Form>
							<DIV style="vertical-align:top;">
									<table widthwidth="200"" cellspacing="0" cellpadding="0">
									 <tr valign="top">
									 <td width="10px">
									 </td>
									 <td>
									 <fieldset style="width: 200; border-style: groove" align="center">
									 <legend style="color: #006699; border: 1 solid #000000" ><b style="font-size:14px;">最后10条留言</b></legend>
										<br>
										<table width="600px">
											<tr style="BACKGROUND-COLOR: #f5f6f7" height="25px";>
												<th align="center" width="40px;">
													序号
												</th>
												<th align="center" width="80px;">
													留言者
												</th>
												<th align="center" width="120px;">
													E-mail
												</th>
												<th align="center" width="120px;">
													时间
												</th>
												<th align="center">
													主题
												</th>
											</tr>
										<?php
										try {
											require_once("../db/conn.php");
											$sql="select * from message order by create_date desc limit 0,10";
											$result = @ mysql_query($sql, $conn) or die(mysql_error());
											while($row=mysql_fetch_array($result)){
											?>
										<tr style="BACKGROUND-COLOR:#99CCFF;cursor:hand;"  height="25px" onclick="showContentDiv(<?php echo $row[id]; ?>)" >
											<td  align="center"><?php echo "23".$row[id]; ?></td>
											<td  align="center"><?php echo $row[username]; ?></td>
											<td  align="center"><?php echo $row[email]; ?></td>
											<td  align="center"><?php echo $row[create_date]; ?></td>
											<td  align="center" style="word-break: break-all;"><?php echo $row[title]; ?></td>
										</tr>
										<tr><td colspan="5">
										<div id="contentDiv<?php echo $row[id]; ?>" width="500px" style="word-break: break-all;display:none;">
											<ul>
												<li><b><a>留言内容:&nbsp;</a></b>
													<?php echo nl2br($row[content]);?>
													<script language="javascript" type="text/javascript" defer="defer">
														javascript:(function(){var D=document; F(D.body); function F(n){var u,r,c,x; if(n.nodeType==3){ u=n.data.search(/\S{10}/); if(u>=0) { r=n.splitText(u+10); n.parentNode.insertBefore(D.createElement("WBR"),r); } }else if(n.tagName!="STYLE" && n.tagName!="SCRIPT"){for (c=0;x=n.childNodes[c];++c){F(x);}} } })();
													</script>
												</li>
											</ul>
										</div>
										</td>
										</tr>

										<?php
										}
										} catch (Exception $e) {
											echo $e;
										} ?>
										</table>








										</td>
									 </tr>
									</table>
								</DIV>
							</DIV>
						</DIV>
					</DIV>
				</DIV>
			</DIV>
			<BR class=clear>
			</DIV>
		</DIV>
	</DIV>




<DIV class="column_5_2 r">
<DIV id=videonews class=box_sg>
<DIV class=box_sg_bot>
<DIV class=contents>
<!-- / .box_sg_top --></DIV>
<!-- / .box_sg_bot --></DIV>
<!-- / #videonews .box_sg --></DIV>
<!-- / .column_5_2 r --></DIV>



<div>
			<br>
			<IFRAME id=bottomIframe height=18 marginHeight=0 src="/web/page/foot.html" frameBorder=0 width="100%" allowTransparency name=bottomIframe marginWidth=0 scrolling=no></IFRAME>
		<div>

 <!-- ================ [Return to Top] ================ -->
<DIV class=btn-pagetop>
<UL class=txt>
	<LI><A href="#toppage">返回顶部</A></LI>
</UL>
</DIV>
<!-- /.btn-pagetop --><!-- ================ /[Return to Top] ================ --></DIV>
<!-- /#mainwrap --><!-- ============================== End "Main area" ============================== --><!--/[[CONTENTS AREA]]--><!--[FOOTER BLOCK]--><!-- ============================== Begin "Footer navigation" area ============================== -->
<DIV id=footerwrap_v14>
<HR>






<P class=rmv>Footer navigation area begins from here.</P>
<DIV id=footer_v14 class=copy>
	<?php require_once("../page/info.html"); ?>
</DIV>
</DIV>
<br>
&nbsp; <!-- /#footerwrap_v14 --><!-- ============================== End "Footer navigation" area ============================== --><!--/[FOOTER BLOCK]--></DIV>
</BODY>
</html>