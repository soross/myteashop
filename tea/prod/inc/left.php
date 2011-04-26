<!-- 产品分类 + 搜索 begin #ffcc33-->
	<DIV style="Z-INDEX: 5; WIDTH: 215px; HEIGHT: 500px; TOP: 0px; LEFT: 10px" id=pdv_20035 class=pdv_class title=产品系列>
		<DIV style="WIDTH: 100%; OVERFLOW: visible" id=spdv_20035 class=pdv_content>
			<DIV style="PADDING-BOTTOM: 0px; BORDER-RIGHT-WIDTH: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: url(&quot;../images/4217268_title[1].jpg&quot;) no-repeat 0px 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; HEIGHT: 100%; BORDER-LEFT-WIDTH: 0px; PADDING-TOP: 0px" class=pdv_border>
				<DIV style="HEIGHT: 100%">
					<DIV style="PADDING-BOTTOM: 0px; BORDER-RIGHT-WIDTH: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: url(&quot;../images/4217268_title[1].jpg&quot;) no-repeat 0px 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; HEIGHT: 37px; BORDER-LEFT-WIDTH: 0px; PADDING-TOP: 0px"></DIV>
					<DIV style="PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px">
						<LINK rel=stylesheet type=text/css href="../css/productclass_dolphin.css">
						<DIV class=productclass_dolphin>
							<!--<A class=productclass_dolphin href="" target=_self>大田作物</A>-->
							<?php
								require_once("../db/conn.php");
								$sql="select class_name,class_code from tea_prod_class order by id";

								$result = @ mysql_query($sql, $conn) or die(mysql_error());
								while($row=mysql_fetch_array($result)){
							?>
								<A class=productclass_dolphin href="prod.php?classcode=<?php echo $row[class_code]; ?>" target=_self><?php echo $row[class_name]; ?></A>
							<?php
								}
							?>
						</DIV>
					</DIV>
				</DIV>
			</DIV>
		</DIV>
	</DIV>



	<DIV style="Z-INDEX: 9; WIDTH: 215px; HEIGHT: 148px; TOP:395px; LEFT: 10px" id=pdv_19989 class=pdv_class title="" >
		<DIV style="WIDTH: 100%; OVERFLOW: visible" id=spdv_19989 class=pdv_content>
			<DIV style="PADDING-BOTTOM: 0px; BORDER-RIGHT-WIDTH: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: url(&quot;../images/title_prod_search.jpg&quot;) no-repeat 0px 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; HEIGHT: 100%; BORDER-LEFT-WIDTH: 0px; PADDING-TOP: 0px" class=pdv_border>
				<DIV style="HEIGHT: 100%">
					<DIV style="PADDING-BOTTOM: 0px; BORDER-RIGHT-WIDTH: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: url(&quot;../images/title_prod_search.jpg&quot;) no-repeat 0px 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; HEIGHT: 37px; BORDER-LEFT-WIDTH: 0px; PADDING-TOP: 0px"></DIV>
					<DIV style="PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px">
						<LINK rel=stylesheet type=text/css href="../css/newsclass_dolphin.css">
						<DIV class=newsclass_dolphin>
							<FORM id=productsearchform method=post action=prod.php>
								<table>
									<tr>
										<td>
											<SELECT style="WIDTH: 140px; DISPLAY: block; BACKGROUND: #ffffff; HEIGHT: 23px;color: #669966;" id=classcode name=classcode>
												<OPTION selected value='-1'>请选择分类</OPTION>
												<?php
													$sql="select class_name,class_code from tea_prod_class order by id";
													$result = @ mysql_query($sql, $conn) or die(mysql_error());
													if(strlen(trim($_POST[classcode]))!=0||strlen(trim($_GET[classcode]))!=0){
														if('-1'!=$_POST[classcode]&&'-1'!=$_GET[classcode]){
															while($row=mysql_fetch_array($result)){
																if($row[class_code] == $_POST[classcode]||$row[class_code] == $_GET[classcode]){
												?>
												<OPTION value=<?php echo $row[class_code]; ?> selected><?php echo $row[class_name]; ?></OPTION>
												<?php
																}else{
												?>
												<OPTION value=<?php echo $row[class_code]; ?>><?php echo $row[class_name]; ?></OPTION>
												<?php
																}
															}
														}
													}else{
														while($row=mysql_fetch_array($result)){
												?>
												<OPTION value=<?php echo $row[class_code]; ?>><?php echo $row[class_name]; ?></OPTION>
												<?php
														}
													}
												?>

											</SELECT>


											<?php
											if(strlen(trim($_POST[prodseachkey]))!=0 || strlen(trim($_GET[prodseachkey]))!=0){
												if('-1'!=$_POST[prodseachkey] && '-1'!=$_GET[prodseachkey]){
											?>
											<INPUT style="WIDTH: 135px;BACKGROUND: #ffffff;HEIGHT: 15px;color: #669966;" id=prodseachkey name=prodseachkey
											value="<?php echo $_POST[prodseachkey].$_GET[prodseachkey];?>" onblur="if(this.value=='')this.value='请输入关键字'" onfocus="if(this.value=='请输入关键字')this.value=''">
											<?php
													}
												}else{
											?>
											<INPUT style="WIDTH: 135px;BACKGROUND: #ffffff;HEIGHT: 15px;color: #669966;" id=prodseachkey name=prodseachkey
											value="请输入关键字" onblur="if(this.value=='')this.value='请输入关键字'" onfocus="if(this.value=='请输入关键字')this.value=''">
											<?php
												}
											?>

											<!--
											<INPUT style="WIDTH: 135px;BACKGROUND: #ffffff;HEIGHT: 15px;color: #669966;" id=prodseachkey name=prodseachkey
											value="请输入关键字" onblur="this.value='请输入关键字'" onfocus="this.value=''">-->
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

	<!-- 产品分类+ 搜索 end -->










	<DIV style="Z-INDEX: 12; WIDTH: 762px; HEIGHT: 37px; TOP: 0px; LEFT: 230px" id=pdv_20079 class=pdv_class title=当前位置 jQuery1303290804862="9">
		<DIV style="WIDTH: 100%; HEIGHT: 100%; OVERFLOW: hidden" id=spdv_20079 class=pdv_content>
			<DIV style="PADDING-BOTTOM: 0px; BORDER-RIGHT-WIDTH: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: url(&quot;../images/title[3].jpg&quot;) no-repeat 0px 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; HEIGHT: 37px; BORDER-LEFT-WIDTH: 0px; PADDING-TOP: 0px" class=pdv_border jQuery1303290804862="12">
				<LINK rel=stylesheet type=text/css href="../css/A.css">
				<DIV id=nav>您现在的位置：
					<A href="../index.php">农业科技公司</A> &gt;
					<A href="prod.php">产品中心</A>
					<?php
						require_once("../db/conn.php");
						if(strlen(trim($_GET[classcode]))!=0){
							$classcode =$_GET[classcode];
							$sql = "select * from tea_prod_class where class_code = '".$classcode."'";
							$result = @ mysql_query($sql, $conn) or die(mysql_error());
							while($row=mysql_fetch_array($result)){
					?>
					&gt; <A href="prod.php?classcode=<?php echo $row[class_code]; ?>&cpage=<?php echo $_GET[cpage];?>&prodseachkey=<?php echo $_POST[prodseachkey].$_GET[prodseachkey];?>"><?php echo $row[class_name]; ?></A>
					<?php
							}
						}
						if(strlen(trim($_GET[id]))!=0){
							$prodid = $_GET[id];
							$prodsqlbyid = "select * from tea_prod where id = '".$prodid."'";
							$prodresult = @ mysql_query($prodsqlbyid, $conn) or die(mysql_error());
							while($row=mysql_fetch_array($prodresult)){
					?>
					&gt; <A href="prodinfo.php?id=<?php echo $row[id];?>&classcode=<?php echo $classcode;?>"><?php echo $row[prod_name];?></A>
					<?php
							}
						}
					?>
				</DIV>
			</DIV>
		</DIV>
	</DIV>