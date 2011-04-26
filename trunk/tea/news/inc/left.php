<!--左边导航-->
<DIV style="Z-INDEX: 9; WIDTH: 215px; HEIGHT: 148px; TOP: 0px; LEFT: 10px" id=pdv_19989 class=pdv_class title="" >
	<DIV style="WIDTH: 100%; OVERFLOW: visible" id=spdv_19989 class=pdv_content>
		<DIV style="PADDING-BOTTOM: 0px; BORDER-RIGHT-WIDTH: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: url(&quot;../images/title_nav.jpg&quot;) no-repeat 0px 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; HEIGHT: 100%; BORDER-LEFT-WIDTH: 0px; PADDING-TOP: 0px" class=pdv_border>
			<DIV style="HEIGHT: 100%">
				<DIV style="PADDING-BOTTOM: 0px; BORDER-RIGHT-WIDTH: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: url(&quot;../images/title_nav.jpg&quot;) no-repeat 0px 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; HEIGHT: 37px; BORDER-LEFT-WIDTH: 0px; PADDING-TOP: 0px"></DIV>
				<DIV style="PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px">
					<LINK rel=stylesheet type=text/css href="../css/newsclass_dolphin.css">
					<DIV class=newsclass_dolphin>
						<?php
							require_once("../db/conn.php");
							$sqlclass = "select * from tea_newclass order by id";
							$result = @ mysql_query($sqlclass, $conn) or die(mysql_error());
							while($row=mysql_fetch_array($result)){

						?>
						<A class=newsclass_dolphin href="list.php?classcode=<?php echo $row[classcode];?>" target=_self><?php echo $row[classname];?></A>
						<?php
							}
						?>
					</DIV>
				</DIV>
			</DIV>
		</DIV>
	</DIV>
</DIV>




<DIV style="Z-INDEX: 9; WIDTH: 215px; HEIGHT: 148px; TOP:200px; LEFT: 10px" id=pdv_19989 class=pdv_class title="" >
	<DIV style="WIDTH: 100%; OVERFLOW: visible" id=spdv_19989 class=pdv_content>
		<DIV style="PADDING-BOTTOM: 0px; BORDER-RIGHT-WIDTH: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: url(&quot;../images/title_search.jpg&quot;) no-repeat 0px 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; HEIGHT: 100%; BORDER-LEFT-WIDTH: 0px; PADDING-TOP: 0px" class=pdv_border>
			<DIV style="HEIGHT: 100%">
				<DIV style="PADDING-BOTTOM: 0px; BORDER-RIGHT-WIDTH: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: url(&quot;../images/title_search.jpg&quot;) no-repeat 0px 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; HEIGHT: 37px; BORDER-LEFT-WIDTH: 0px; PADDING-TOP: 0px"></DIV>
				<DIV style="PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px">
					<LINK rel=stylesheet type=text/css href="../css/newsclass_dolphin.css">
					<DIV class=newsclass_dolphin>
						<FORM id=productsearchform method=post action=list.php>
							<table>
								<tr>
									<td>
										<SELECT style="WIDTH: 140px; DISPLAY: block; BACKGROUND: #ffffff; HEIGHT: 23px;color: #669966;" id=classcode name=classcode>
											<OPTION selected value='-1'>请选择分类</OPTION>
											<?php
												$sql="select classname,classcode from tea_newclass order by id";
												$result = @ mysql_query($sql, $conn) or die(mysql_error());
												if(strlen(trim($_POST[classcode]))!=0||strlen(trim($_GET[classcode]))!=0){
													if('-1'!=$_POST[classcode]&&'-1'!=$_GET[classcode]){
														while($row=mysql_fetch_array($result)){
															if($row[classcode] == $_POST[classcode]||$row[classcode] == $_GET[classcode]){
											?>
											<OPTION value=<?php echo $row[classcode]; ?> selected><?php echo $row[classname]; ?></OPTION>
											<?php
															}else{
											?>
											<OPTION value=<?php echo $row[classcode]; ?>><?php echo $row[classname]; ?></OPTION>
											<?php
															}
														}
													}
												}else{
													while($row=mysql_fetch_array($result)){
											?>
											<OPTION value=<?php echo $row[classcode]; ?>><?php echo $row[classname]; ?></OPTION>
											<?php
													}
												}
											?>
										</SELECT>
										<?php
											if(strlen(trim($_POST[newssearchkey]))!=0 || strlen(trim($_GET[newssearchkey]))!=0){
												if('-1'!=$_POST[newssearchkey] && '-1'!=$_GET[newssearchkey]){
										?>
										<INPUT style="WIDTH: 135px;BACKGROUND: #ffffff;HEIGHT: 15px;color: #669966;" id=newssearchkey name=newssearchkey
										value="<?php echo $_POST[newssearchkey].$_GET[newssearchkey];?>" onblur="if(this.value=='')this.value='请输入关键字'" onfocus="if(this.value=='请输入关键字')this.value=''">
										<?php
												}
											}else{
										?>
										<INPUT style="WIDTH: 135px;BACKGROUND: #ffffff;HEIGHT: 15px;color: #669966;" id=newssearchkey name=newssearchkey
										value="请输入关键字" onblur="if(this.value=='')this.value='请输入关键字'" onfocus="if(this.value=='请输入关键字')this.value=''">
										<?php
											}
										?>
									</td>
								</tr>
								<tr>
									<td align="right">
										<INPUT id=submit src="../images/search5.gif" type=image onclick="if(document.getElementById('prodseachkey').value=='请输入关键字')document.getElementById('prodseachkey').value='';">
									</td>
								</tr>
							</table>
						</FORM>
					</DIV>
				</DIV>
			</DIV>
		</DIV>
	</DIV>
</DIV>






<!-- 当前位置提示条 -->
<DIV style="Z-INDEX: 12; WIDTH: 762px; HEIGHT: 37px; TOP: 0px; LEFT: 230px" id=pdv_19991 class=pdv_class title=当前位置>
	<DIV style="WIDTH: 100%; HEIGHT: 100%; OVERFLOW: hidden" id=spdv_19991 class=pdv_content>
		<DIV style="PADDING-BOTTOM: 0px; BORDER-RIGHT-WIDTH: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: url(&quot;../images/title[3].jpg&quot;) no-repeat 0px 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; HEIGHT: 37px; BORDER-LEFT-WIDTH: 0px; PADDING-TOP: 0px" class=pdv_border>
			<LINK rel=stylesheet type=text/css href="../css/A.css">
			<DIV id=nav>您现在的位置：
				<A href="../index.php">农业科技公司</A>&nbsp;&gt;&nbsp;
				<A href="list.php">新闻中心</A>
				<?php
					$ccode = "";
					if(strlen(trim($_GET[classcode]))!=0 ){
						$ccode = $_GET[classcode];
					}
					if(strlen(trim($_POST[classcode]))!=0){
						$ccode = $_POST[classcode];
					}
					if($ccode!=""){
						$sql="select classname,classcode from tea_newclass where classcode='".$ccode."'";
						$result = @ mysql_query($sql, $conn) or die(mysql_error());
						while($row=mysql_fetch_array($result)){
				?>
				&nbsp;&gt;&nbsp;<A href="list.php?classcode=<?php echo $row[classcode]?>&cpage=<?php echo $_GET[cpage]?>"><?php echo $row[classname];?></A>
				<?php
						}
					}
					$newsid = "";
					if(strlen(trim($_GET[id]))!=0 ){
						$newsid = $_GET[id];
					}
					if(strlen(trim($_POST[id]))!=0){
						$newsid = $_POST[id];
					}
					if($newsid!=""){
						$newssql="select id,title,news_class from tea_newsinfo where id='".$newsid."'";
						$newsresult = @ mysql_query($newssql, $conn) or die(mysql_error());
						while($newsrow=mysql_fetch_array($newsresult)){
				?>
				&nbsp;&gt;&nbsp;<A href="info.php?id=<?php echo $newsrow[id]?>&classcode=<?php echo $newsrow[news_class]?>"><?php echo $newsrow[title];?></A>
				<?php
						}
					}
				?>
			</DIV>
		</DIV>
	</DIV>
</DIV>