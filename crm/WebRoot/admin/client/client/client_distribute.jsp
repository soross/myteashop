<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@include file="/ext/ext.jsp"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib prefix="jn0904" uri="/jn0904"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>�ͻ���������б�</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/win.js"></script>
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
   
    function allot(){//����ͻ�
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
       
         if(ids==""){
              showMsg("δѡ���κ���");
              return;
         }
         
         var manager =document.getElementById("mana").value;
         if(manager==""){
            showMsg("��ѡ��ͻ�����");
            return;
         }
         
         var url="${pageContext.request.contextPath}/admin/client.do?task=distribute&manager="+manager+"&"+ids;
         var currentpage="${param.currentpage}";
		 if(currentpage!=null && currentpage!=""){
			  url+="&currentpage="+currentpage;
		  }		
		 var phone="${param.phone}";
		 if(phone!=null && phone!=""){
			    url+="&phone="+phone;
		   }
		 var safee="${param.safee}";
		 if(safee!=null && safee!=""){
			  url+="&safee="+safee;
		   }
		  var efee="${param.efee}";
		  if(efee!=null && efee!=""){
			    url+="&efee="+efee;
		   }
		 var sascore="${param.sascore}";
		 if(safee!=null && safee!=""){
			  url+="&sascore="+sascore;
		   }
		  var endscore="${param.endscore}";
		  if(endscore!=null && endscore!=""){
			    url+="&endscore="+endscore;
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
                <td width="50%" class="STYLE1">��ǰλ�ã���ͻ��������</td>
                <td width="50%" ></td>
              </tr>
            </table>
           </td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"></td>
                <td width="350">&nbsp;
                </td>    
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
               <html:form action="/admin/client?task=distributeList">
                  <table width="750"  class="STYLE4" cellpadding="0" cellspacing="0" style="vertical-align: middle">
                     <tr>
                       <td align="right">�ֻ����룺</td>
                       <td><html:text property="phone" style="width:100px; height:20px" onkeyup="value=value.replace(/[^\d]/g,'')"></html:text>(ģ������)</td>
                       <td align="right">�����»��ѣ�</td>
                       <td><html:text property="safee" style="width:50px;height:20px" onkeyup="value=value.replace(/[^\d]/g,'')"></html:text></td>
                       <td align="right" width="10">����</td>
                       <td><html:text property="efee" style="width:50px;height:20px" onkeyup="value=value.replace(/[^\d]/g,'')"></html:text></td>
                       <td align="right">�� �֣�</td>
                       <td><html:text property="sascore" style="width:50px;height:20px" onkeyup="value=value.replace(/[^\d]/g,'')"></html:text></td>
                       <td align="right" width="10">����</td>
                       <td><html:text property="endscore" style="width:50px;height:20px" onkeyup="value=value.replace(/[^\d]/g,'')"></html:text></td>
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
               <br>
          <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" >
          <tr>
            <td width="1%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center">
              &nbsp;
            </div></td>
            <td width="6%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">�ֻ�����</span></div></td>
            <td width="3%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">�ͻ���</span></div></td>
            <td width="3%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">֤�����</span></div></td>
            <td width="6%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">֤������</span></div></td>
            <td width="5%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">�����»���</span></div></td>
            <td width="6%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">��ǰʣ�����</span></div></td>
            <td width="3%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">άϵ��</span></div></td>
            <td width="6%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">����ʱ��</span></div></td>
          </tr>
          <logic:present name="clientList">
          <logic:empty name="clientList">
              <tr>
                 <td height="20" bgcolor="#FFFFFF" colspan="9" align="center" class="STYLE1"> �����κ����ݣ�</td>
              </tr>
          </logic:empty>
          <logic:notEmpty name="clientList">
          <logic:iterate id="client" name="clientList" >
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" id="child" name="child" value="${client[0]}" onclick="checkBox(this);"/>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${client[0]}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${client[1]} </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${client[2]}</span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${client[3]}</span></div></td>  
              <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${client[5]}</span></div></td>
              <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${client[6]}</span></div></td>
              <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${client[4]}</span></div></td>
            <td bgcolor="#FFFFFF">
            <div align="center">
             <span class="STYLE1">
                <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${client[8]}"/>
                </span>
            </div></td>
          </tr>
          </logic:iterate>
            <tr>
                 <td  class="STYLE1" bgcolor="#FFFFFF"><div align="center"><input type="checkbox" id="all" onclick="checkBox(this);" /></div></td>
                 <td height="25" bgcolor="#FFFFFF" colspan="8" class="STYLE1"> 
                  <form action="${pageContext.request.contextPath}/admin/client.do">
                  <input type="hidden" name="task" >
                  <table width="100%" border="0" cellpadding="0" cellspacing="0">              
                  <tr>
                   <td width="10%" class="STYLE1" bgcolor="#FFFFFF">
                        [ȫ ѡ]
                     </td>   
                    <td class="STYLE1"> 
                    �ͻ�����:
                    <select id="mana" name="manager" >
                        <option value="">--��ѡ��ͻ�����--</option>
                        <logic:iterate id="manager" name="managers">
                             <option value="${manager}">${manager}</option>
                        </logic:iterate>
                    </select>   
                     <html:button property="" value="�� ��" onclick="allot();">
                      </html:button>
                    </td>
                  </tr>
                </table>
                </form>
                 </td>
              </tr>
          </logic:notEmpty>
          
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
