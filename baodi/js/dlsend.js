// 发布代理_

var strdl = '';
strdl += '<div style="margin:5px;text-align:left;">';
strdl += '<table width="100%" border="0" cellpadding="1" cellspacing="0">';
strdl += ' <tr>';
strdl += ' <td width="110" height="24" valign="bottom"><font class="subject">代理/经销区域</font></td>';
strdl += ' <td valign="bottom" colspan="3">';
strdl += ' 省　份&nbsp;<select name=province>';
strdl += ' <option value="">请选择</option>';
strdl += ' <option value="北京">北京</option>';
strdl += '<option value="上海">上海</option> ';
strdl += ' <option value="天津">天津</option>';
strdl += ' <option value="重庆">重庆</option>';
strdl += ' <option value="广东">广东</option>';
strdl += ' <option value="福建">福建</option>';
strdl += '<option value="浙江">浙江</option> ';
strdl += '<option value="江苏">江苏</option> ';
strdl += '  <option value="山东">山东</option>';
strdl += ' <option value="四川">四川</option> ';
strdl += '  <option value="湖南">湖南</option>';
strdl += ' <option value="湖北">湖北</option>';
strdl += ' <option value="陕西">陕西</option>';
strdl += ' <option value="河南">河南</option>';
strdl += ' <option value="安徽">安徽</option>';
strdl += ' <option value="河北">河北</option>';
strdl += ' <option value="辽宁">辽宁</option>';
strdl += ' <option value="吉林">吉林</option>';
strdl += ' <option value="江西">江西</option>';
strdl += ' <option value="广西">广西</option>';
strdl += ' <option value="山西">山西</option>';
strdl += ' <option value="甘肃">甘肃</option>';
strdl += '<option value="贵州">贵州</option> ';
strdl += ' <option value="新疆">新疆</option>';
strdl += ' <option value="云南">云南</option>';
strdl += ' <option value="宁夏">宁夏</option>';
strdl += ' <option value="海南">海南</option>';
strdl += ' <option value="青海">青海</option>';
strdl += '  <option value="西藏">西藏</option>';
strdl += ' <option value="黑龙江">黑龙江</option>';
strdl += ' <option value="内蒙古">内蒙古</option>';
strdl += ' <option value="港澳台">港澳台</option>';
strdl += ' <option value="海外">海外</option> ';
strdl += ' <option value="其它">其它</option> ';
strdl += ' </select>&nbsp;&nbsp;&nbsp;城　市&nbsp;<input name="city" type="text" id="city" size="16" maxlength="20">　<font color="red">必填</font></td></tr>';

strdl += '<tr> ';
strdl += ' <td><font class="subject">代理/经销渠道</font></td><td valign="bottom"  colspan="3"><input type="checkbox" name="channels" value="美容院">美容院&nbsp;<input type="checkbox" name="channels" value="加盟店">加盟店&nbsp;<input type="checkbox" name="channels" value="连锁药店">连锁药店&nbsp;<input type="checkbox" name="channels" value="批发物流">批发物流&nbsp;<input type="checkbox" name="channels" value="零售终端 ">零售终端<font color="red">　必填</font>&nbsp;&nbsp;&nbsp;<input name="channels" type="text" size="10" maxlength="6"><font color="#999999">（如还有其他渠道，请填写）</font></td></tr>';

strdl += ' <tr>';
strdl += ' <td><font class="subject">单位/个人名称</font></td>';
strdl += ' <td valign="bottom"  colspan="3"> <input  name="zc" type="text" size="30" maxlength="50"><font color="red">　必填</font> 　　　　<font class="subject">身　份</font> <input name="company" type="radio" value="个人"  checked>个人 <input  name="company" type="radio" value="公司">公司';
strdl += '<tr><td><font class="subject">联 系 人</font></td> ';
strdl += '<td valign="bottom" colspan="3"> <input  name="tel" type="text"  size="30" maxlength="30"><font color="red">　必填</font></td></tr> ';
strdl += '<tr> ';
strdl += ' <td><font class="subject">联系电话/手机</font></td><td valign="bottom"  colspan="3"> <input  name="adress" type="text"  size="30" maxlength="30" >';
strdl += '　<font color="red">必填</font>　<font color="#999999">（请认真填写，以便厂商及时与你联系）</font></td></tr>';
strdl += ' <tr>';
strdl += '  <td><font class="subject">联系地址</font></td>';
strdl += ' <td valign="bottom" colspan="3"><input  name="lxaddress" type="text" id="lxaddress"  size="30" maxlength="40" >　 　<font class="subject">联系Q Q</font> <input name="qq" type="text" id="qq" size="15" maxlength="12" onKeyPress="event.returnValue=IsDigit();" >　　　<font class="subject">电子邮箱</font>&nbsp;<input name="email" type="text" size="26" maxlength="30" ></td></tr>';
//strdl += '<tr> ';
//strdl += ' <td valign="top"><font class="subject">留言内容</font></td>';
//strdl += ' <td><table width="100%" border="0" cellspacing="0" cellpadding="0">';
//strdl += ' <tr><td>';
//strdl += ' <textarea name="content" cols="78" rows="5" id="textarea"></textarea><br/><INPUT name=dlcontent  onclick=showdlcontent(1) type=checkbox value=checkbox><SPAN  id=msginfo1>我希望代理该产品，请速联系我；</SPAN> <INPUT      name=dlcontent   onclick=showdlcontent(2) type=checkbox value=checkbox><SPAN id=msginfo2>代理价零售价是多少？</SPAN> <INPUT name=dlcontent onclick=showdlcontent(3) type=checkbox value=checkbox><SPAN id=msginfo3>市场保证金是多少？</SPAN><br><INPUT name=dlcontent   onclick=showdlcontent(4) type=checkbox value=checkbox><SPAN id=msginfo4>有终端网络和销售队伍；</SPAN> <INPUT name=dlcontent   onclick=showdlcontent(5) type=checkbox value=checkbox><SPAN id=msginfo5>请寄给我详细资料；</SPAN> <INPUT name=dlcontent   onclick=showdlcontent(6) type=checkbox value=checkbox><SPAN id=msginfo6>请寄给我样品；</SPAN> <INPUT name=dlcontent  onclick=showdlcontent(7) type=checkbox value=checkbox><SPAN  id=msginfo7>有多年化妆品销售经验；</SPAN></td></tr></table>';
//strdl += ' </td></tr>';

strdl += ' <tr> ';
strdl += '<td height="9"></td><td valign="bottom" colspan="3"></td></tr> ';

strdl += ' <tr><td width="110" height="24" rowspan="2" ><font class="subject">代理商留言</font></td><td rowspan="2"><textarea name="content" cols="35" rows="8" id="textarea"></textarea></td><td width="210" valign="bottom"><img height=25 src="/images/yaoly.gif" width=24 align=absMiddle> <b>留言助手</b></td><td valign="bottom" width="160">&nbsp;</td></tr>';
strdl += '<tr><td><input  name=dlcontent  onclick=showdlcontent(1) type=checkbox value=checkbox><span id=msginfo1>合作政策是什么？</span><br><input name=dlcontent  onclick=showdlcontent(2)  type=checkbox value=checkbox><span id=msginfo2>市场保证金是多少？</span><br><input name=dlcontent  onclick=showdlcontent(3) type=checkbox value=checkbox><span id=msginfo3>请寄给我外包装盒。</span><br><input name=dlcontent  onclick=showdlcontent(4)  type=checkbox value=checkbox><span id=msginfo4>请寄给我合同样本。</span><br><input  name=dlcontent  onclick=showdlcontent(5)  type=checkbox value=checkbox><span id=msginfo5>我希望代理该产品，请速联系我！</span></td>';
strdl += '<td><input  name=dlcontent  onclick=showdlcontent(6)  type=checkbox value=checkbox><span id=msginfo6>退换货政策是什么？</span><br><input  name=dlcontent  onclick=showdlcontent(7)  type=checkbox value=checkbox><span id=msginfo7>请寄给我详细资料。</span><br><input  name=dlcontent  onclick=showdlcontent(8)  type=checkbox value=checkbox><span id=msginfo8>请寄给我样品。</span><br><input  name=dlcontent  onclick=showdlcontent(9)  type=checkbox value=checkbox><span id=msginfo9>代理价零售价是多少？</span><br><input  name=dlcontent  onclick=showdlcontent(10)  type=checkbox value=checkbox><span id=msginfo10>市场保护政策是什么？</span></td></tr>';

strdl += ' <tr><td valign="top">&nbsp;</td>';
strdl += ' <td height="46"  colspan="3"><input name="B1" type="button" id="B1"  onClick="return Check();"  style="color:#ffffff;font-size: 14px;padding:3px;FONT-WEIGHT: bold;BACKGROUND: url(/images/fenhon.gif) " value="→ 发送采购意向留言">&nbsp;&nbsp;&nbsp;<font color=#888888>发送留言后，供货商会在第一时间与你联系的</font>';
strdl += ' ';
strdl += '</td></tr>';
strdl += '</table> ';
strdl += '</div>';
                         
							     
                                  
try{document.getElementById('strdl').innerHTML = strdl;}
catch(e){};