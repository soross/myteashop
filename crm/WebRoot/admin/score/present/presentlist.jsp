<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="jn0904" uri="/jn0904"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>��Ʒ�����б�</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/Calendar.js"></script>
	<style type="text/css">
	<!--
	a{text-decoration: none}     
         text{
           width:100px;
           height:20px;
         }
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
	}
	.STYLE1 {font-size: 12px}
	.STYLE3 {font-size: 14px;}
	.STYLE4 {
		color: #03515d;
		font-size: 12px;
	}
	-->
	</style>

	<script>
		var  highlightcolor='#c1ebff';
		//�˴�clickcolorֻ����winϵͳ��ɫ������ܳɹ�,�����#xxxxxx�Ĵ���Ͳ���,��û�����Ϊʲô:(
		var  clickcolor='#51b2f6';
		function  changeto(){
			source=event.srcElement;
			if  (source.tagName=="TR"||source.tagName=="TABLE")
			return;
			while(source.tagName!="TD")
			source=source.parentElement;
			source=source.parentElement;
			cs  =  source.children;
			//alert(cs.length);
			if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor=highlightcolor;
			}
		}
		
		function  changeback(){
			if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
			return
			if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
			//source.style.backgroundColor=originalcolor
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor="";
			}
		}
		
		function  clickto(){
			source=event.srcElement;
			if  (source.tagName=="TR"||source.tagName=="TABLE")
			return;
			while(source.tagName!="TD")
			source=source.parentElement;
			source=source.parentElement;
			cs  =  source.children;
			//alert(cs.length);
			if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor=clickcolor;
			}
			else
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor="";
			}
		}
	</script>
	
	<script type="text/javascript">
	
	 function checkBox(box){
     var flag=false;
     var chks=document.getElementsByName("child");
     if(box.id=="all" && box.checked){//���ѡ��ȫѡ,�����еĸ�ѡ��ѡ��
        for(var i=0;i<chks.length;i++){
            chks[i].checked=true;
        }
     } 
     
     if(box.id=="all"&&box.checked==false){ //����ûѡ�У�����Ҳ��ѡ
        for(var i=0;i<chks.length;i++){
            chks[i].checked=false;
        }
     }
     
     if(box.id!="all"&&box.checked==true){ //����ѡ��,����ѡ��
        document.getElementById("all").checked=true;
     }
     
     if(box.id!="all"&&box.checked==false){//���඼ûѡ�У����಻ѡ
        for(var i=0;i<chks.length;i++){
            if(chks[i].checked){
              flag=true;
            }
        }
        if(!flag){
          document.getElementById("all").checked=false;
        }     
     }
             
   }
      function delMore(){//ɾ����Ʒ
        var ids="";
        var chks=document.getElementsByName("child");
        for(var i=0;i<chks.length;i++){
         if(chks[i].checked){
             if(ids==""){
               ids="ids="+chks[i].value;
             }else{
               ids+="&ids="+chks[i].value;
             }
         }
       } 
        if(confirm("ȷ��ɾ������Ʒ��?")){
           if(ids==""){
              alert("δѡ���κ���");
              return;
           }else{
            var url="${pageContext.request.contextPath}/admin/present.do?task=deleteMore&"+ids;
            var currentpage="${param.currentpage}";
		    if(currentpage!=null && currentpage!=""){
			  url+="&currentpage="+currentpage;
		    }		
		    var name="${param.name}";
		    if(name!=null && name!=""){
			    url+="&name="+name;
		     }
		     var sadate="${param.sadate}";
		    if(sadate!=null && sadate!=""){
			    url+="&sadate="+sadate;
		     }
		     var endate="${param.endate}";
		    if(endate!=null && endate!=""){
			    url+="&endate="+endate;
		     }
                location.href=url;
            }
          }
      }
      
  
     function toUpdate(presentid){//�޸�
            var url="${pageContext.request.contextPath}/admin/present.do?task=update&presentid="+presentid;
            var currentpage="${param.currentpage}";
		    if(currentpage!=null && currentpage!=""){
			  url+="&currentpage="+currentpage;
		    }		
		    var name="${param.name}";
		    if(name!=null && name!=""){
			    url+="&name="+name;
		     }
		    var sadate="${param.sadate}";
		    if(sadate!=null && sadate!=""){
			    url+="&sadate="+sadate;
		     }
		     var endate="${param.endate}";
		    if(endate!=null && endate!=""){
			    url+="&endate="+endate;
		     }
            location.href=url;
    }
    
</script>
</head>
<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="${pageContext.request.contextPath}/admin/images/tab_05.gif">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="${pageContext.request.contextPath}/admin/images/tab_03.gif" width="12" height="30" /></td>
        <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="50%" class="STYLE1">��ǰλ�ã���Ʒ����</td>
                <td width="50%" ></td>
              </tr>
            </table>
           </td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"></td>
                <td width="220"><table width="90%" border="0" cellpadding="0" cellspacing="0">
               
                  <tr>
                   <td class="STYLE1"><div align="center"><input type="checkbox" id="all" onclick="checkBox(this);" /></div></td>
                   <td class="STYLE1">
                    <div align="center">
                        ȫ ѡ
                    </div>
                     </td>   
                    <td class="STYLE1"><div align="center"><img src="${pageContext.request.contextPath}/admin/images/22.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center"><a href="${pageContext.request.contextPath}/admin/score/present/addpresent.jsp">�� ��</a></div></td>
                    <td class="STYLE1"><div align="center"><img src="${pageContext.request.contextPath}/admin/images/11.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center"><a href="javascript:delMore();">ɾ ��</a></div></td>
                    <td class="STYLE1">&nbsp;</td>
                  </tr>
                </table></td>    
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="${pageContext.request.contextPath}/admin/images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td>
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tr>
            <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_12.gif">&nbsp;</td>
            <td align="center" >
             <br>
               <html:form action="/admin/present?task=presentList">
                  <table width="600"  class="STYLE4" cellpadding="0" cellspacing="0" style="vertical-align: middle">
                     <tr>
                       <td align="right">��Ʒ����</td>
                       <td><html:text property="name" style="width:100px; height:20px" ></html:text></td>
                       <td align="right">��Чʱ�䣺</td>
                       <td><html:text property="sadate" readonly="true"
									 onclick="setDay(this);" style="width:100px; height:20px"></html:text></td>
                       <td align="right" width="10">����</td>
                       <td><html:text property="endate" readonly="true"
									 onclick="setDay(this);" style="width:100px; height:20px"></html:text></td>
                       <td><html:submit value="�� ѯ"></html:submit></td>
                      </tr>
                  </table>
               </html:form>
            </td>
            <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_15.gif">&nbsp;</td>
         </tr>
       </table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_12.gif">&nbsp;</td>
        <td>
          <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" >
          <tr>
            <td width="3%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox" value="checkbox" />
            </div></td>
            <td width="12%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">��Ʒ��</span></div></td>
            <td width="14%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">��Ʒ����</span></div></td>
            <td width="14%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">�������</span></div></td>
            <td width="14%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">��Чʱ��</span></div></td>
            <td width="14%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">��������</span></div></td>
          </tr>
          <logic:present name="presentList">
          <logic:empty name="presentList">
              <tr>
                 <td height="20" bgcolor="#FFFFFF" colspan="7" align="center" class="STYLE1"> �����κ���Ʒ��</td>
              </tr>
          </logic:empty>
          <logic:iterate id="present" name="presentList" >
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" id="child" name="child" value="${present.id}" onclick="checkBox(this);"/>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${present.name } </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${present.num }</span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${present.integral }</span></div></td>
            <td bgcolor="#FFFFFF">
            <div align="center">
             <span class="STYLE1">
                <bean:write format="yyyy-MM-dd" property="invalidate" name="present"></bean:write>
                </span>
            </div></td>
            <td bgcolor="#FFFFFF">
              <div align="center">
                 <span class="STYLE1">
                 <img src="${pageContext.request.contextPath}/admin/images/edt.gif" width="16" height="16" />
                    <a href="${pageContext.request.contextPath}/admin/present.do?task=getPresent&id=${present.id }">�� ��</a>
                     <img src="${pageContext.request.contextPath}/admin/images/edt.gif" width="16" height="16" />
                    <a href="javascript:toUpdate('${present.id }');">�� ��</a>
                  </span>
              </div>
            </td>
          </tr>
          </logic:iterate>
          </logic:present>
        </table></td>
        <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="${pageContext.request.contextPath}/admin/images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="${pageContext.request.contextPath}/admin/images/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4"></td>
            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="500" class="STYLE4">    
                    <jn0904:page name="pageUtil"/></td>                                    
                </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="${pageContext.request.contextPath}/admin/images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html:html>
