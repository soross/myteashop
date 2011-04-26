<?php

$pagesize = 8;//一页显示多少条
$currentpage = 1;//当前页
//总页数
function getTotalpage($countresule,$pz) {
	if ($countresule == 0) {
		$totalpage = 1;
	} else {
		$totalpage = ($countresule - 1) / $pz + 1;
	}
	return intval($totalpage);
}
//数据库开始的行数
function getStart($ctpage,$pz){
	return ($ctpage - 1) * $pz;
}


//如果当前页小于1 则默认1
if($currentpage<1)
	$currentpage=1;
//如果当前页大于总页数 则默认最大页数
if($currentpage>getTotalpage($cnt,$pagesize))
	$currentpage = getTotalpage($cnt,$pagesize);


//参数
$classcode = "";
$prodseachkey="";

//封装sql
$prodcount = "select count(*) from tea_prod p";
$prodsql = "select * from tea_prod p";
$wheresql = " where 1=1 ";

//get提交获取产品类型和关键字
extract($_GET);

if(strlen(trim($_GET[cpage]))!=0){
	$currentpage = intval($_GET[cpage]);
}
if(strlen(trim($_GET[classcode]))!=0){
	if('-1'!=$_GET[classcode]){
		$classcode =$_GET[classcode];
		$wheresql = $wheresql."and p.prod_class='".$_GET[classcode]."'";
	}
}


if(strlen(trim($_GET[prodseachkey]))!=0){
	$prodseachkey=$_GET[prodseachkey];
	$wheresql = $wheresql."and (p.save_way like '%".$_GET[prodseachkey].
					 "%' or p.packing like '%".$_GET[prodseachkey].
					 "%' or p.prod_add like '%".$_GET[prodseachkey].
                     "%' or p.prod_desc like '%".$_GET[prodseachkey].
                     "%' or p.prod_name like '%".$_GET[prodseachkey]."%')" ;
}


//post提交获取产品类型和关键字
extract($_POST);

if(strlen(trim($_POST[classcode]))!=0){
	if('-1'!=$_POST[classcode]){
		$classcode = $_POST[classcode];
		$wheresql = $wheresql."and p.prod_class='".$_POST[classcode]."'";
	}
}

if(strlen(trim($_POST[prodseachkey]))!=0){
	$prodseachkey = $_POST[prodseachkey];
	$wheresql = $wheresql."and (p.save_way like '%".$_POST[prodseachkey].
					 "%' or p.packing like '%".$_POST[prodseachkey].
					 "%' or p.prod_add like '%".$_POST[prodseachkey].
                     "%' or p.prod_desc like '%".$_POST[prodseachkey].
                     "%' or p.prod_name like '%".$_POST[prodseachkey]."%')" ;
}


//获取总记录数
$cnt = 0;//总记录数

$prodcount = $prodcount.$wheresql;
$cntresult = @ mysql_query($prodcount, $conn) or die(mysql_error());
while($rowcount=mysql_fetch_array($cntresult)){
	$cnt = $rowcount[0];
}


if($cnt>0){
	//查询产品的sql
	$prodsql = $prodsql.$wheresql." order by create_date limit  ".getStart($currentpage,$pagesize)." , ".$pagesize." ";

	//查询数据库
	$result = @ mysql_query($prodsql, $conn) or die(mysql_error());
	while($row=mysql_fetch_array($result)){
	?>
		<DIV class="productquery_dolphin normal" onmouseover="this.className = 'productquery_dolphin hover';" onmouseout="this.className = 'productquery_dolphin normal';">
			<DIV style="WIDTH: 138px; HEIGHT: 105px" class=fang>
				<DIV style="WIDTH: 138px; HEIGHT: 105px" class=picFit>
					<A href="prodinfo.php?id=<?php echo $row[id];?>&classcode=<?php echo $classcode;?>&cpage=<?php echo $_GET[cpage];?>&prodseachkey=<?php echo $_POST[prodseachkey].$_GET[prodseachkey];?>" target=_self>
						<IMG style="HEIGHT: 105px" border=0 src="images/prodphoto/<?php echo $row[image_path];?>">
					</A>
				</DIV>
			</DIV>
			<DIV class=title>
				<table algin="center">
					<tr><td><A class=prodtitle href="prodinfo.php?id=<?php echo $row[id];?>&classcode=<?php echo $classcode;?>&cpage=<?php echo $_GET[cpage];?>&prodseachkey=<?php echo $_POST[prodseachkey].$_GET[prodseachkey];?>" target=_self><?php echo $row[prod_name];?></A><br></td></tr>
					<tr><td><A href="prodinfo.php?id=<?php echo $row[id];?>&classcode=<?php echo $classcode;?>&cpage=<?php echo $_GET[cpage];?>&prodseachkey=<?php echo $_POST[prodseachkey].$_GET[prodseachkey];?>" style="TEXT-DECORATION: line-through;">市场价：￥<?php echo $row[src_price];?>.00</a><br></td></tr>
					<tr><td><A href="prodinfo.php?id=<?php echo $row[id];?>&classcode=<?php echo $classcode;?>&cpage=<?php echo $_GET[cpage];?>&prodseachkey=<?php echo $_POST[prodseachkey].$_GET[prodseachkey];?>" style="color:red;TEXT-DECORATION:none;">特惠价：￥<?php echo $row[new_price];?>.00</a></td></tr>
				</table>
			</DIV>
		</DIV>
	<?php
	}
}else{
?>
		<DIV class="productquery_dolphin normal">
			<DIV style="WIDTH: 138px; HEIGHT: 105px" class=fang>
				<DIV style="WIDTH: 138px; HEIGHT: 105px" class=picFit>
					<A target=_self>
						<IMG style="HEIGHT: 105px" border=0 src="images/prodphoto/no_prod.png">
					</A>
				</DIV>
			</DIV>
			<DIV class=title>
				<table algin="center">
					<tr><td><A class=prodtitle href="prod.php" style="color:red;TEXT-DECORATION:none;" target=_self>点击返回产品中心...</A><br></td></tr>
					<tr><td><A style="TEXT-DECORATION: line-through;">Sorry,查无产品...</a><br></td></tr>
					<tr><td><A style="color:red;TEXT-DECORATION:none;">Sorry,查无产品...</a></td></tr>
				</table>
			</DIV>
		</DIV>
<?php
}
?>

<DIV id=showpages>
	<DIV id=pagesinfo>共<?php echo $cnt;?>条 每页<?php echo $pagesize;?>条 页次：<?php echo $currentpage;?>/<?php echo getTotalpage($cnt,$pagesize);?></DIV>
		<DIV id=pages>
			<UL>
				<?php
					if($currentpage==1){
				?>
				<LI class=pagesnow>首页</LI>
				<LI class=pagesnow>上一页</LI>
				<?php
					}else{
				?>
				<LI class=pbutton>
					<A href="prod.php?cpage=1&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>">首页</A>
				</LI>
				<LI class=pbutton><a href="prod.php?cpage=<?php echo $currentpage-1;?>&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>">上一页</a></LI>
				<?php
					}
					//如果总页数小于6 全部显示
					if(getTotalpage($cnt,$pagesize)<6){

						for($i=1; $i<getTotalpage($cnt,$pagesize)+1 ;$i++){
							if($currentpage == $i){
				?>
				<LI class=pagesnow><?php echo $i;?></LI>
				<?php
							}else{
				?>
				<LI class=pbutton><A href="prod.php?cpage=<?php echo $i;?>&amp;classcode=<?php echo $classcode; ?>&amp;prodseachkey=<?php echo $prodseachkey; ?>&amp;cnt=<?php echo $cnt; ?>"><?php echo $i;?></A></LI>
				<?php
							}
						}
					}else{ //如果总页数大于5页 则显示当前页的前2页和后2页
						if($currentpage<4){ //12345...
							for($i=1; $i<6 ;$i++){
								if($currentpage == $i){
				?>
				<LI class=pagesnow><?php echo $i;?></LI>
				<?php
								}else{
				?>
				<LI class=pbutton><A href="prod.php?cpage=<?php echo $i;?>&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>"><?php echo $i;?></A></LI>
				<?php
								}
							}
				?>
				<LI class=pbutton><A href="prod.php?cpage=6&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>">...</A></LI>
				<?php
						}else if ($currentpage> getTotalpage($cnt,$pagesize)-3){//...n-4,n-3,n-2,n-1,n
				?>
				<LI class=pbutton><A href="prod.php?cpage=<?php echo getTotalpage($cnt,$pagesize)-5;?>&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>">...</A></LI>
				<?php
							for($i=getTotalpage($cnt,$pagesize)-4 ; $i<getTotalpage($cnt,$pagesize)+1 ;$i++){
								if($currentpage == $i){
				?>
				<LI class=pagesnow><?php echo $i;?></LI>
				<?php
								}else{
				?>
				<LI class=pbutton><A href="prod.php?cpage=<?php echo $i;?>&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>"><?php echo $i;?></A></LI>
				<?php
								}
							}
						}else{//...n-2,n-1,n,n+1,n+2...
				?>
				<LI class=pbutton><A href="prod.php?cpage=<?php echo $currentpage-3;?>&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>">...</A></LI>
				<LI class=pbutton><A href="prod.php?cpage=<?php echo $currentpage-2;?>&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>"><?php echo $currentpage-2;?></A></LI>
				<LI class=pbutton><A href="prod.php?cpage=<?php echo $currentpage-1;?>&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>"><?php echo $currentpage-1;?></A></LI>
				<LI class=pagesnow><A href="prod.php?cpage=<?php echo $currentpage;?>&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>"><?php echo $currentpage;?></A></LI>
				<LI class=pbutton><A href="prod.php?cpage=<?php echo $currentpage+1;?>&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>"><?php echo $currentpage+1;?></A></LI>
				<LI class=pbutton><A href="prod.php?cpage=<?php echo $currentpage+2;?>&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>"><?php echo $currentpage+2;?></A></LI>
				<LI class=pbutton><A href="prod.php?cpage=<?php echo $currentpage+3;?>&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>">...</A></LI>
				<?php
						}
					}
				?>




				<?php
					if($currentpage== getTotalpage($cnt,$pagesize)){
				?>
				<LI class=pagesnow>下一页</LI>
				<?php
					}else{
				?>
				<LI class=pbutton><a href="prod.php?cpage=<?php echo $currentpage+1;?>&amp;classcode=<?php echo $classcode; ?>&amp;prodseachkey=<?php echo $prodseachkey; ?>&amp;cnt=<?php echo $cnt; ?>">下一页</a></LI>
				<?php
					}
				?>
				<LI class=opt>
					<SELECT onchange="if(-1!=this.value)location.href='prod.php?cpage='+this.value+'&amp;classcode=<?php echo $classcode; ?>&amp;prodseachkey=<?php echo $prodseachkey; ?>&amp;cnt=<?php echo $cnt; ?>'">
						<?php
							for($i=1; $i<getTotalpage($cnt,$pagesize)+1 ;$i++){
								if($currentpage == $i){
						?>
						<OPTION selected value="-1">第<?php echo $i;?>页</OPTION>
						<?php
								}else{
						?>
						<OPTION value="<?php echo $i;?>">第<?php echo $i;?>页</OPTION>
						<?php
								}
							}
						?>
					</SELECT>
				</LI>

				<?php
					if($currentpage== getTotalpage($cnt,$pagesize)){
				?>
				<LI class=pagesnow>
					尾页
				</LI>
				<?php
					}else{
				?>
				<LI class=pbutton>
					<A href="prod.php?cpage=<?php echo getTotalpage($cnt,$pagesize);?>&amp;classcode=<?php echo $classcode; ?>&amp;prodseachkey=<?php echo $prodseachkey; ?>&amp;cnt=<?php echo $cnt; ?>">尾页</A>
				</LI>
				<?php
					}
				?>
			</UL>
		</DIV>
	</DIV>
</DIV><!--end page-->

