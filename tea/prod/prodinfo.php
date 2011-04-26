<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<HEAD><TITLE>三农88-农业科技公司</TITLE>
<META content="text/html; charset=GBK" http-equiv=Content-Type>
<META content=IE=7 http-equiv=X-UA-Compatible>
<META name=keywords content="">
<META name=description content="">
<LINK rel=stylesheet type=text/css href="../css/common.css">



</HEAD>
<BODY style="BACKGROUND: url(&quot;../images/bg[1].png&quot;) repeat-x">

	<?php require_once("../inc/top.html"); ?>

	<DIV style="MARGIN: 0px auto; WIDTH: 1002px; BACKGROUND: url(&quot;../images/cbg[1].jpg&quot;); HEIGHT: 550px" id=content><!-- 产品分类（列表） -->

	<?php require_once("inc/left.php"); ?>


	<!-- 产品详情 -->
	<DIV style="Z-INDEX: 13; WIDTH: 655px; HEIGHT: 339px; TOP: 76px; LEFT: 274px" id=pdv_20086 class=pdv_class title=产品详情>
		<DIV style="WIDTH: 100%; OVERFLOW: visible" id=spdv_20086 class=pdv_content>
			<DIV style="BORDER-BOTTOM: 0px solid; BORDER-LEFT: 0px solid; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: none transparent scroll repeat 0% 0%; HEIGHT: 100%; BORDER-TOP: 0px solid; BORDER-RIGHT: 0px solid; PADDING-TOP: 0px" class=pdv_border>
				<DIV style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px">
					<LINK rel=stylesheet type=text/css href="../css/productcontent.css">
					<DIV id=productcontent>
					<?php
						if(strlen(trim($_GET[id]))!=0){
							$prodid = $_GET[id];
							$prodsqlbyid = "select * from tea_prod where id = '".$prodid."'";
							$prodresult = @ mysql_query($prodsqlbyid, $conn) or die(mysql_error());
							while($row=mysql_fetch_array($prodresult)){
					?>
						<DIV class=productpics>
							<DIV class=piczone>
								<TABLE cellSpacing=0 cellPadding=0 align=center>
									<TBODY>
										<TR>
											<TD align=middle>
												<DIV id=productview>
													<IMG style="DISPLAY: none" id=productloading class=productloading border=0 src="images/loading.gif" oldblock="inline">
													<IMG style="WIDTH: 305px;height:230px;" id=productpic class=productpic src="images/prodphoto/<?php echo $row[image_path]?>">
												</DIV>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</DIV>
						</DIV>
						<DIV class=introzone>
							<DIV id=prodtitle><?php echo $row[prod_name]?></DIV>
							<DIV id=prop style="color:red;">市场价：<span style="TEXT-DECORATION: line-through;">￥<?php echo $row[src_price]?>.00</span></DIV>
							<DIV id=prop style="color:red;">特惠价：￥<?php echo $row[new_price]?>.00</DIV>
							<DIV id=prop>净&nbsp;&nbsp;&nbsp;重：<?php echo $row[suttle]?></DIV>
							<DIV id=prop>包&nbsp;&nbsp;&nbsp;装：<?php echo $row[packing]?></DIV>
							<DIV id=prop>有效期：<?php echo $row[exp]?></DIV>
							<DIV id=prop>原产地：<?php echo $row[prod_add]?></DIV>
						</DIV>
						<DIV class=bodyzone><?php echo $row[prod_desc]?></DIV>
					<?php
							}
						}
					?>
					</DIV>
				</DIV>
			</DIV>
		</DIV>
	</DIV>
</DIV>

<?php require_once("../inc/bottom.html");?>
<DIV id=bodyex></DIV></BODY>

</html>
