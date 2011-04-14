<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-cn" lang="zh-cn">

<HEAD><TITLE>留言</TITLE>
<META content="text/html; charset=gbk" http-equiv=Content-Type>
<META content=zh-cn http-equiv=Content-Language>
<LINK rel=stylesheet type=text/css href="/web/css/ifeeds_template[1].css" rev=stylesheet media=screen>
<script language="JavaScript">
document.oncontextmenu=new Function("event.returnValue=false;");
document.onselectstart=new Function("event.returnValue=false;");
</script>

</HEAD>
<BODY class="ifeeds_body">
	<DIV class=ifeeds style="font-size:12px;font-family:Tahoma,Helvetica,Arial">
		<DIV class=feeds_style_1>
			<DIV class="list list_hover">
				<DIV class="ifeeds_list bor2 ifeeds_list_active">
					<DIV class=ifeeds_list_extend>
						<DIV class=feeds_tp_5>
							<DIV class=feeds_tp_operate>
								<A class=c_tx>最近留言</A>
							</DIV>
							<?php
								require_once("../db/conn.php");
								$sql="select * from message order by create_date desc limit 0,10";
								$result = @ mysql_query($sql, $conn) or die(mysql_error());
								while($row=mysql_fetch_array($result)){
							?>
							<DIV class=feeds_comment>
								<DIV class="comment_arrow c_bg2">◆</DIV>
								<DIV class="feeds_comment_list bg2">
									<DIV class=feeds_comment_cont>
										<DIV>
											<A class="comment_nickname c_tx">
												昵称：&nbsp;<b><?php echo $row[username]?></b>
											</A>
										</DIV>
										<DIV><A class="comment_nickname c_tx">主题：</A>&nbsp;<?php echo $row[title]?></DIV>
										<DIV><A class="comment_nickname c_tx">Email：</A>&nbsp;<?php echo $row[email]?></DIV>
										<DIV><A class="comment_nickname c_tx">内容：</A>&nbsp;<?php echo $row[content]?></DIV>
										<DIV>
											<A class=c_tx>留言时间：</A>
											<SPAN class="feeds_time c_tx3"><?php echo $row[create_date]?> </SPAN>
											<br>&nbsp;
										</DIV>
									</DIV>
								</DIV>
							</DIV>
							<?php
								}
							?>
						</DIV>
					</DIV>
				</DIV>
			</DIV>
		</DIV>
	</DIV>
</BODY>
</html>
