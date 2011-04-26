<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<HEAD><TITLE>西红柿病虫害管理技巧秋西红柿病虫害管理技巧-农业科技公司 (2)</TITLE>
<META content="text/html; charset=GBK" http-equiv=Content-Type>
<META content=IE=7 http-equiv=X-UA-Compatible>
<META name=keywords content=0>
<META name=description content=0><LINK rel=stylesheet type=text/css href="../css/common.css">


<script language="JavaScript" type="text/javascript">
  var cpage=0;
  function showPageDivByKey(key){
  	cpage = key;
  	var pagedivs = document.getElementsByTagName("DIV");
	for(var i=0;i<pagedivs.length;i++){
		if(pagedivs[i].name=="conPageDiv"){
			pagedivs[i].style.display="none";
  		}
  		if(pagedivs[i].id==("conDivByPage"+key)){
  			pagedivs[i].style.display="block";
  		}
  	}
	changeLiClass();
  }
  function showTopPageDivByKey(){
  	var pagedivs = document.getElementsByTagName("DIV");
  	cpage = cpage-1;
  	if( cpage< 0 ) cpage = 0;
  	var cnt=0;
  	for(var i=0;i<pagedivs.length;i++){
		if(pagedivs[i].name=="conPageDiv"){
			cnt = cnt + 1;
			pagedivs[i].style.display="none";
  		}
  	}
  	if( cpage> cnt-1 ) cpage = cnt-1;
  	for(var i=0;i<pagedivs.length;i++){
  		if(pagedivs[i].id==("conDivByPage"+cpage)){
  			pagedivs[i].style.display="block";
  		}
  	}
  	changeLiClass();
  }
  function showDownPageDivByKey(){
  	var pagedivs = document.getElementsByTagName("DIV");
  	cpage = cpage+1;
  	if( cpage< 0 ) cpage = 0;
  	var cnt=0;
  	for(var i=0;i<pagedivs.length;i++){
		if(pagedivs[i].name=="conPageDiv"){
			cnt = cnt + 1;
			pagedivs[i].style.display="none";
  		}
  	}
  	if( cpage> cnt-1 ) cpage = cnt-1;
  	for(var i=0;i<pagedivs.length;i++){
  		if(pagedivs[i].id==("conDivByPage"+cpage)){
  			pagedivs[i].style.display="block";
  		}
  	}
  	changeLiClass();
  }

  function changeLiClass(){
  	var pageLis = document.getElementsByTagName("LI");
  	for(var j=0;j<pageLis.length;j++){
  		if(pageLis[j].name == "pageLiByKey"){
  			pageLis[j].className = "pagesnow";
  		}
  		if(pageLis[j].id ==("li_p_"+cpage)){
  			pageLis[j].className = "pages";
  		}
  	}
  }
</script>


</HEAD>
<BODY style="BACKGROUND: url(&quot;../images/bg[1].png&quot;) repeat-x">
	<?php require_once("../inc/top.html");?>

	<DIV style="MARGIN: 0px auto; WIDTH: 1002px; BACKGROUND: url(&quot;../images/cbg[1].jpg&quot;); HEIGHT: 650px" id=content>
		<!-- 文章一级分类 -->
		<?php require_once("inc/left.php");?>

		<!-- 文章正文 -->
		<DIV style="Z-INDEX: 13; WIDTH: 655px; HEIGHT: 100%; TOP: 76px; LEFT: 274px" id=pdv_20006 class=pdv_class title=文章正文>
			<DIV style="WIDTH: 100%; OVERFLOW: visible" id=spdv_20006 class=pdv_content>
				<DIV style="BORDER-BOTTOM: 0px solid; BORDER-LEFT: 0px solid; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: none transparent scroll repeat 0% 0%; HEIGHT: 100%; BORDER-TOP: 0px solid; BORDER-RIGHT: 0px solid; PADDING-TOP: 0px" class=pdv_border>
					<DIV style="MARGIN: 1px; DISPLAY: none; BACKGROUND: none transparent scroll repeat 0% 0%; HEIGHT: 25px">
						<DIV style="LINE-HEIGHT: 25px; FLOAT: left; MARGIN-LEFT: 12px; FONT-WEIGHT: bold">文章正文 </DIV>
						<DIV style="DISPLAY: none; FLOAT: right; MARGIN-RIGHT: 10px">
							<A style="LINE-HEIGHT: 25px" href="http://demo.2799.cn/1290584523/news/html/-1">更多</A>
						</DIV>
					</DIV>
					<DIV style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px">
						<LINK rel=stylesheet type=text/css href="../css/newscontent.css">
						<DIV id=newscontent>

							<?php
								$newsinfoid = "";
								if(strlen(trim($_GET[id]))!=0 ){
									$newsinfoid = $_GET[id];
								}
								if(strlen(trim($_POST[id]))!=0){
									$newsinfoid = $_POST[id];
								}
								if($newsinfoid ==""){
									echo "<script>location.href='list.php'</script>";
									exit();
								}
								$newsinfosql = "select * from tea_newsinfo where id='".$newsinfoid."'";
								$newsinforesule =  @ mysql_query($newsinfosql, $conn) or die(mysql_error());
								while($newsinforow=mysql_fetch_array($newsinforesule)){
							?>

							<DIV class=newstitle><?php echo $newsinforow[title]?></DIV>
							<DIV class=info>作者：<?php echo $newsinforow[author]?> &nbsp;&nbsp; 发布于：<?php echo $newsinforow[create_date]?> &nbsp;&nbsp; 文字：【<A href="">大</A>】【<A href="">中</A>】【<A href="">小</A>】</DIV>

								<?php
									if($newsinforow[summary]>0){
								?>
								<DIV style="DISPLAY: block" id=memo class=memo>
									<SPAN style="COLOR: #ff6600">摘要：$newsinforow[summary]</SPAN>
								</DIV>
								<?php
									}
									if(0==substr_count($newsinforow[content],  '<!#PAGE#!>')){
								?>
								<DIV id=con class=con>
								<?php
									echo $newsinforow[content];
								?>
								</DIV>
								<?php
									}else{
										$newsinfoarray=explode('<!#PAGE#!>',$newsinforow[content]);
										$cntarray=count($newsinfoarray);
										for($p=0;$p<$cntarray;$p++){
								?>
								<DIV id=conDivByPage<?php echo $p; ?> class=con name="conPageDiv"
								<?php
											if($p!=0){
												$a=0;
								?>
								style="DISPLAY: none;"
								<?php
											}
								?>
								>
								<?php echo $newsinfoarray[$p];?>
								</DIV>
								<?php
										}
								?>
								<DIV style="DISPLAY: block" id=contentpages oldblock="block">
									<UL></UL>
										<?php require_once("action/contentpage.php")?>
									<UL></UL>
								</DIV>
								<?php
									}
									$newsfilesql = "select * from tea_newsfile where newsid='".$newsinfoid."'";
									$newsfileresule =  @ mysql_query($newsfilesql, $conn) or die(mysql_error());
									while($newsfilerow=mysql_fetch_array($newsfileresule)){
								?>
								<DIV class=bzone>
									<DIV style="DISPLAY: block" class=down>附件下载：
										<SPAN id=downlink><A href="action/downfile.php?fileid=<?php echo $newsfilerow[id];?>&filepath=<?php echo $newsfilerow[filepath];?>&filename=<?php echo $newsfilerow[filename];?>"><?php echo $newsfilerow[filename]?></A></SPAN> (已下载<?php echo $newsfilerow[down_count]?>次)
									</DIV>
									<DIV style="DISPLAY: none" class=tags>标签：<?php echo $newsfilerow[tag]?></DIV>
								</DIV>
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
	</DIV>
	<?php require_once("../inc/bottom.html");?>
	<DIV id=bodyex></DIV>
</BODY>

</html>
