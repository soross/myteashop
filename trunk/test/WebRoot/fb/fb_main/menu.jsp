<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'menu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<LINK href="<%=basePath%>css/fb_main/admin.css" type="text/css" rel="stylesheet">
<SCRIPT language=javascript>
	function expand(el)
	{
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
  </head>
  
  <body>
    <TABLE height="100%" cellSpacing=0 cellPadding=0 width=170 
background="<%=basePath%>image/fb_main/menu_bg.jpg" border=0>
  <TR>
    <TD vAlign=top align=middle>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        
        <TR>
          <TD height=10></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background="<%=basePath%>image/fb_main/menu_bt.jpg"><A 
            class=menuParent onclick=expand(1) 
            href="javascript:void(0);">��������</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child1 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>��˾���</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>��������</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�������</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�������</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath%>image/fb_main/menu_bt.jpg><A 
            class=menuParent onclick=expand(2) 
            href="javascript:void(0);">��������</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child2 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>��˾����</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�������</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�������</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath%>image/fb_main/menu_bt.jpg><A 
            class=menuParent onclick=expand(3) 
            href="javascript:void(0);">��Ʒ����</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child3 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>��Ʒչʾ</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>���²�Ʒ</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�������</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�������</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath%>image/fb_main/menu_bt.jpg><A 
            class=menuParent onclick=expand(4) 
            href="javascript:void(0);">�ͻ�����</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child4 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�ͻ�����</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�������</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�������</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background="<%=basePath%>image/fb_main/menu_bt.jpg"><A 
            class=menuParent onclick=expand(5) 
            href="javascript:void(0);">���䰸��</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child5 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�������</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�������</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background="<%=basePath%>image/fb_main/menu_bt.jpg"><A 
            class=menuParent onclick=expand(6) 
            href="javascript:void(0);">�߼�����</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child6 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>������</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>����ͳ��</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�ʼ���������</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>��ϵ����</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�û�����</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>��Ƹְλ</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>ӦƸ��Ա</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>���Բ�</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>��Ʒ����</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>���ӹ���</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�ļ�����</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>��Ϣת��</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath%>image/fb_main/menu_bt.jpg><A 
            class=menuParent onclick=expand(7) 
            href="javascript:void(0);">ϵͳ����</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child7 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>��������</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>��ʽ����</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>��Ŀ����</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>���ܹ���</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�˵�����</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>��ҳ����</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>����Ա�б�</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath%>image/fb_main/menu_bt.jpg><A 
            class=menuParent onclick=expand(0) 
            href="javascript:void(0);">���˹���</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child0 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>�޸Ŀ���</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            onclick="if (confirm('ȷ��Ҫ�˳���')) return true; else return false;" 
            href="http://www.865171.cn" 
            target=_top>�˳�ϵͳ</A></TD></TR></TABLE></TD>
    <TD width=1 bgColor=#d1e6f7></TD></TR></TABLE>
  </body>
</html>
