<?php

$pagesize = 5;//һҳ��ʾ������
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
$newssearchkey="";

//��װsql
$prodcount = "select count(*) from tea_newsinfo n";
$prodsql = "select * from tea_newsinfo n";
$wheresql = " where 1=1 ";

//get�ύ��ȡ��Ʒ���ͺ͹ؼ���
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


//post�ύ��ȡ��Ʒ���ͺ͹ؼ���
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

//��ȡ�ܼ�¼��
$cnt = 0;//�ܼ�¼��

$prodcount = $prodcount.$wheresql;
$cntresult = @ mysql_query($prodcount, $conn) or die(mysql_error());
while($rowcount=mysql_fetch_array($cntresult)){
	$cnt = $rowcount[0];
}

if($cnt>0){
	//��ѯ��Ʒ��sql
	$prodsql = $prodsql.$wheresql." order by create_date desc limit  ".getStart($currentpage,$pagesize)." , ".$pagesize." ";

	//��ѯ���ݿ�
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
				<A target=_self style="color:red;text-decoration:none;">Sorry,�����Ϣ������...</A>
			</DIV>
			<DIV class=time></DIV>
		</LI>

<?php
}
?>
	</UL>
</DIV>

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
					<A href="list.php?cpage=1&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>">��ҳ</A>
				</LI>
				<LI class=pbutton><a href="list.php?cpage=<?php echo $currentpage-1;?>&classcode=<?php if($classcode!="-1")echo $classcode; ?>&newssearchkey=<?php echo $newssearchkey; ?>&cnt=<?php echo $cnt; ?>">��һҳ</a></LI>
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
				<LI class=pbutton><A href="list.php?cpage=<?php echo $i;?>&amp;classcode=<?php if($classcode!="-1")echo $classcode; ?>&amp;newssearchkey=<?php echo $newssearchkey; ?>&amp;cnt=<?php echo $cnt; ?>"><?php echo $i;?></A></LI>
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
				<LI class=pagesnow>��һҳ</LI>
				<?php
					}else{
				?>
				<LI class=pbutton><a href="list.php?cpage=<?php echo $currentpage+1;?>&amp;classcode=<?php if($classcode!="-1")echo $classcode; ?>&amp;newssearchkey=<?php echo $newssearchkey; ?>&amp;cnt=<?php echo $cnt; ?>">��һҳ</a></LI>
				<?php
					}
				?>
				<LI class=opt>
					<SELECT onchange="if(-1!=this.value)location.href='list.php?cpage='+this.value+'&amp;classcode=<?php if($classcode!="-1")echo $classcode; ?>&amp;newssearchkey=<?php echo $newssearchkey; ?>&amp;cnt=<?php echo $cnt; ?>'">
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
					<A href="list.php?cpage=<?php echo getTotalpage($cnt,$pagesize);?>&amp;classcode=<?php if($classcode!="-1")echo $classcode; ?>&amp;newssearchkey=<?php echo $newssearchkey; ?>&amp;cnt=<?php echo $cnt; ?>">βҳ</A>
				</LI>
				<?php
					}
				?>
			</UL>
		</DIV>
	</DIV>
</DIV><!--end page-->

