<?php

$pagesize = 5;//一页显示多少条
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
$newssearchkey="";

//封装sql
$prodcount = "select count(*) from tea_newsinfo n";
$prodsql = "select * from tea_newsinfo n";
$wheresql = " where 1=1 ";

//get提交获取产品类型和关键字
extract($_GET);

if(strlen(trim($_GET[cpage]))!=0){
	$currentpage = intval($_GET[cpage]);
}
if(strlen(trim($_GET[classcode]))!=0){
	if('-1'!=$_GET[classcode]){
		$classcode =$_GET[classcode];
		$wheresql = $wheresql."and n.news_class='".$_GET[classcode]."'";
	}
}


if(strlen(trim($_GET[newssearchkey]))!=0){
	$newssearchkey=$_GET[newssearchkey];
	$wheresql = $wheresql."and (n.author like '%".$_GET[newssearchkey].
                     "%' or n.content like '%".$_GET[newssearchkey].
                     "%' or n.title like '%".$_GET[newssearchkey]."%')" ;
}


//post提交获取产品类型和关键字
extract($_POST);

if(strlen(trim($_POST[classcode]))!=0){
	if('-1'!=$_POST[classcode]){
		$classcode = $_POST[classcode];
		$wheresql = $wheresql."and n.news_class='".$_POST[classcode]."'";
	}
}

if(strlen(trim($_POST[newssearchkey]))!=0){
	$newssearchkey = $_POST[newssearchkey];
	$wheresql = $wheresql."and (n.author like '%".$_POST[newssearchkey].
					 "%' or n.content like '%".$_POST[newssearchkey].
                     "%' or n.title like '%".$_POST[newssearchkey]."%')" ;
}

?>
<DIV id=newsquery>
	<UL id=queryul>
<?php

//获取总记录数
$cnt = 0;//总记录数

$prodcount = $prodcount.$wheresql;
$cntresult = @ mysql_query($prodcount, $conn) or die(mysql_error());
while($rowcount=mysql_fetch_array($cntresult)){
	$cnt = $rowcount[0];
}

if($cnt>0){
	//查询产品的sql
	$prodsql = $prodsql.$wheresql." order by create_date desc limit  ".getStart($currentpage,$pagesize)." , ".$pagesize." ";

	//查询数据库
	$result = @ mysql_query($prodsql, $conn) or die(mysql_error());
	while($row=mysql_fetch_array($result)){
?>

		<LI class=title>
			<DIV class=title>
				<A href="info.php?id=<?php echo $row[id]; ?>&classcode=<?php echo $row[news_class];?>&cpage=<?php echo $_GET[cpage];?>" target=_self><?php echo $row[title]; ?></A>
			</DIV>
			<DIV class=time><?php echo substr($row[create_date],0,10);?></DIV>
		</LI>

<?php
	}
}else{
?>
		<LI class=title>
			<DIV class=title>
				<A target=_self style="color:red;text-decoration:none;">Sorry,相关信息整理中...</A>
			</DIV>
			<DIV class=time></DIV>
		</LI>

<?php
}
?>
	</UL>
</DIV>

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
					<A href="list.php?cpage=1&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>">首页</A>
				</LI>
				<LI class=pbutton><a href="list.php?cpage=<?php echo $currentpage-1;?>&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>">上一页</a></LI>
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
				<LI class=pbutton><A href="list.php?cpage=<?php echo $i;?>&amp;classcode=<?php if($classcode!="-1")echo $classcode; ?>&amp;newssearchkey=<?php echo $newssearchkey; ?>&amp;cnt=<?php echo $cnt; ?>"><?php echo $i;?></A></LI>
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
				<LI class=pbutton><A href="list.php?cpage=<?php echo $i;?>&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>"><?php echo $i;?></A></LI>
				<?php
								}
							}
				?>
				<LI class=pbutton><A href="list.php?cpage=6&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>">...</A></LI>
				<?php
						}else if ($currentpage> getTotalpage($cnt,$pagesize)-3){//...n-4,n-3,n-2,n-1,n
				?>
				<LI class=pbutton><A href="list.php?cpage=<?php echo getTotalpage($cnt,$pagesize)-5;?>&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>">...</A></LI>
				<?php
							for($i=getTotalpage($cnt,$pagesize)-4 ; $i<getTotalpage($cnt,$pagesize)+1 ;$i++){
								if($currentpage == $i){
				?>
				<LI class=pagesnow><?php echo $i;?></LI>
				<?php
								}else{
				?>
				<LI class=pbutton><A href="list.php?cpage=<?php echo $i;?>&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>"><?php echo $i;?></A></LI>
				<?php
								}
							}
						}else{//...n-2,n-1,n,n+1,n+2...
				?>
				<LI class=pbutton><A href="list.php?cpage=<?php echo $currentpage-3;?>&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>">...</A></LI>
				<LI class=pbutton><A href="list.php?cpage=<?php echo $currentpage-2;?>&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>"><?php echo $currentpage-2;?></A></LI>
				<LI class=pbutton><A href="list.php?cpage=<?php echo $currentpage-1;?>&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>"><?php echo $currentpage-1;?></A></LI>
				<LI class=pagesnow><A href="list.php?cpage=<?php echo $currentpage;?>&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>"><?php echo $currentpage;?></A></LI>
				<LI class=pbutton><A href="list.php?cpage=<?php echo $currentpage+1;?>&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>"><?php echo $currentpage+1;?></A></LI>
				<LI class=pbutton><A href="list.php?cpage=<?php echo $currentpage+2;?>&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>"><?php echo $currentpage+2;?></A></LI>
				<LI class=pbutton><A href="list.php?cpage=<?php echo $currentpage+3;?>&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>">...</A></LI>
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
				<LI class=pbutton><a href="list.php?cpage=<?php echo $currentpage+1;?>&amp;classcode=<?php if($classcode!="-1")echo $classcode; ?>&amp;newssearchkey=<?php echo $newssearchkey; ?>&amp;cnt=<?php echo $cnt; ?>">下一页</a></LI>
				<?php
					}
				?>
				<LI class=opt>
					<SELECT onchange="if(-1!=this.value)location.href='list.php?cpage='+this.value+'&amp;classcode=<?php if($classcode!="-1")echo $classcode; ?>&amp;newssearchkey=<?php echo $newssearchkey; ?>&amp;cnt=<?php echo $cnt; ?>'">
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
					<A href="list.php?cpage=<?php echo getTotalpage($cnt,$pagesize);?>&amp;classcode=<?php if($classcode!="-1")echo $classcode; ?>&amp;newssearchkey=<?php echo $newssearchkey; ?>&amp;cnt=<?php echo $cnt; ?>">尾页</A>
				</LI>
				<?php
					}
				?>
			</UL>
		</DIV>
	</DIV>
</DIV><!--end page-->

