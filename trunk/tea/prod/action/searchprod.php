<?php

$pagesize = 8;//һҳ��ʾ������
$currentpage = 1;//��ǰҳ
//��ҳ��
function getTotalpage($countresule,$pz) {
	if ($countresule == 0) {
		$totalpage = 1;
	} else {
		$totalpage = ($countresule - 1) / $pz + 1;
	}
	return intval($totalpage);
}
//���ݿ⿪ʼ������
function getStart($ctpage,$pz){
	return ($ctpage - 1) * $pz;
}


//�����ǰҳС��1 ��Ĭ��1
if($currentpage<1)
	$currentpage=1;
//�����ǰҳ������ҳ�� ��Ĭ�����ҳ��
if($currentpage>getTotalpage($cnt,$pagesize))
	$currentpage = getTotalpage($cnt,$pagesize);


//����
$classcode = "";
$prodseachkey="";

//��װsql
$prodcount = "select count(*) from tea_prod p";
$prodsql = "select * from tea_prod p";
$wheresql = " where 1=1 ";

//get�ύ��ȡ��Ʒ���ͺ͹ؼ���
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


//post�ύ��ȡ��Ʒ���ͺ͹ؼ���
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


//��ȡ�ܼ�¼��
$cnt = 0;//�ܼ�¼��

$prodcount = $prodcount.$wheresql;
$cntresult = @ mysql_query($prodcount, $conn) or die(mysql_error());
while($rowcount=mysql_fetch_array($cntresult)){
	$cnt = $rowcount[0];
}


if($cnt>0){
	//��ѯ��Ʒ��sql
	$prodsql = $prodsql.$wheresql." order by create_date limit  ".getStart($currentpage,$pagesize)." , ".$pagesize." ";

	//��ѯ���ݿ�
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
					<tr><td><A href="prodinfo.php?id=<?php echo $row[id];?>&classcode=<?php echo $classcode;?>&cpage=<?php echo $_GET[cpage];?>&prodseachkey=<?php echo $_POST[prodseachkey].$_GET[prodseachkey];?>" style="TEXT-DECORATION: line-through;">�г��ۣ���<?php echo $row[src_price];?>.00</a><br></td></tr>
					<tr><td><A href="prodinfo.php?id=<?php echo $row[id];?>&classcode=<?php echo $classcode;?>&cpage=<?php echo $_GET[cpage];?>&prodseachkey=<?php echo $_POST[prodseachkey].$_GET[prodseachkey];?>" style="color:red;TEXT-DECORATION:none;">�ػݼۣ���<?php echo $row[new_price];?>.00</a></td></tr>
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
					<tr><td><A class=prodtitle href="prod.php" style="color:red;TEXT-DECORATION:none;" target=_self>������ز�Ʒ����...</A><br></td></tr>
					<tr><td><A style="TEXT-DECORATION: line-through;">Sorry,���޲�Ʒ...</a><br></td></tr>
					<tr><td><A style="color:red;TEXT-DECORATION:none;">Sorry,���޲�Ʒ...</a></td></tr>
				</table>
			</DIV>
		</DIV>
<?php
}
?>

<DIV id=showpages>
	<DIV id=pagesinfo>��<?php echo $cnt;?>�� ÿҳ<?php echo $pagesize;?>�� ҳ�Σ�<?php echo $currentpage;?>/<?php echo getTotalpage($cnt,$pagesize);?></DIV>
		<DIV id=pages>
			<UL>
				<?php
					if($currentpage==1){
				?>
				<LI class=pagesnow>��ҳ</LI>
				<LI class=pagesnow>��һҳ</LI>
				<?php
					}else{
				?>
				<LI class=pbutton>
					<A href="prod.php?cpage=1&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>">��ҳ</A>
				</LI>
				<LI class=pbutton><a href="prod.php?cpage=<?php echo $currentpage-1;?>&classcode=<?php echo $classcode; ?>&prodseachkey=<?php echo $prodseachkey; ?>&cnt=<?php echo $cnt; ?>">��һҳ</a></LI>
				<?php
					}
					//�����ҳ��С��6 ȫ����ʾ
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
					}else{ //�����ҳ������5ҳ ����ʾ��ǰҳ��ǰ2ҳ�ͺ�2ҳ
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
				<LI class=pagesnow>��һҳ</LI>
				<?php
					}else{
				?>
				<LI class=pbutton><a href="prod.php?cpage=<?php echo $currentpage+1;?>&amp;classcode=<?php echo $classcode; ?>&amp;prodseachkey=<?php echo $prodseachkey; ?>&amp;cnt=<?php echo $cnt; ?>">��һҳ</a></LI>
				<?php
					}
				?>
				<LI class=opt>
					<SELECT onchange="if(-1!=this.value)location.href='prod.php?cpage='+this.value+'&amp;classcode=<?php echo $classcode; ?>&amp;prodseachkey=<?php echo $prodseachkey; ?>&amp;cnt=<?php echo $cnt; ?>'">
						<?php
							for($i=1; $i<getTotalpage($cnt,$pagesize)+1 ;$i++){
								if($currentpage == $i){
						?>
						<OPTION selected value="-1">��<?php echo $i;?>ҳ</OPTION>
						<?php
								}else{
						?>
						<OPTION value="<?php echo $i;?>">��<?php echo $i;?>ҳ</OPTION>
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
					βҳ
				</LI>
				<?php
					}else{
				?>
				<LI class=pbutton>
					<A href="prod.php?cpage=<?php echo getTotalpage($cnt,$pagesize);?>&amp;classcode=<?php echo $classcode; ?>&amp;prodseachkey=<?php echo $prodseachkey; ?>&amp;cnt=<?php echo $cnt; ?>">βҳ</A>
				</LI>
				<?php
					}
				?>
			</UL>
		</DIV>
	</DIV>
</DIV><!--end page-->

