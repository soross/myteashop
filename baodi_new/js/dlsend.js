// 发布代理_

var strdl = '';
 strdl += '<div style="margin:5px;text-align:left;">';
 strdl += '<table width="100%" border="0" cellpadding="1" cellspacing="0">';
 strdl += '<tr>';
 strdl += '<td width="110" ><font class="subject" color="#49A810" >代理/经销区域</font></td>';
 strdl += '<td  colspan="3"><font color="#49A810">省　份</font>&nbsp;<select name="jlqysf"  onchange="checkjlqysf();">';
 strdl += '<option value="">请选择</option>';
 strdl += '<option value="北京">北京</option>';
 strdl += '<option value="上海">上海</option>';
 strdl += '<option value="天津">天津</option>';
 strdl += '<option value="重庆">重庆</option>';
 strdl += '<option value="广东">广东</option>';
 strdl += '<option value="福建">福建</option>';
 strdl += '<option value="浙江">浙江</option>';
 strdl += '<option value="江苏">江苏</option>';
 strdl += '<option value="山东">山东</option>';
 strdl += '<option value="四川">四川</option>';
 strdl += '<option value="湖南">湖南</option>';
 strdl += '<option value="湖北">湖北</option>';
 strdl += '<option value="陕西">陕西</option>';
 strdl += '<option value="河南">河南</option>';
 strdl += '<option value="安徽">安徽</option>';
 strdl += '<option value="河北">河北</option>';
 strdl += '<option value="辽宁">辽宁</option>';
 strdl += '<option value="吉林">吉林</option>';
 strdl += '<option value="江西">江西</option>';
 strdl += '<option value="广西">广西</option>';
 strdl += '<option value="山西">山西</option>';
 strdl += '<option value="甘肃">甘肃</option>';
 strdl += '<option value="贵州">贵州</option>';
 strdl += '<option value="新疆">新疆</option>';
 strdl += '<option value="云南">云南</option>';
 strdl += '<option value="宁夏">宁夏</option>';
 strdl += '<option value="海南">海南</option>';
 strdl += '<option value="青海">青海</option>';
 strdl += '<option value="西藏">西藏</option>';
 strdl += '<option value="黑龙江">黑龙江</option>';
 strdl += '<option value="内蒙古">内蒙古</option>';
 strdl += '<option value="港澳台">港澳台</option>';
 strdl += '<option value="海外">海外</option>';
 strdl += '<option value="其它">其它</option>';
 strdl += '</select>&nbsp;<font color="#49A810">城　市</font>&nbsp;<input name="jlqycs" type="text" id="jlqycs" size="6" maxlength="20" onblur="checkjlqycs()">&nbsp;<font color="#49A810">区</font>&nbsp;<input name="jlqyqu" type="text" id="jlqyqu" size="6" maxlength="20" onblur="checkjlqyqu()"><font color="red">必填</font></td>';
 strdl += '</tr>';

 strdl += '<tr> ';
 strdl += '<td><font class="subject">代理/经销渠道</font></td>';
 strdl += '<td   colspan="3"><input type="radio" id="yxqd" name="yxqd" value="代理商"><font color="#49A810">代理商</font>&nbsp;<input type="radio" name="yxqd"  value="美容店"><font color="#49A810">美容店</font><font color="red">　必填</font>&nbsp;&nbsp;&nbsp;<input name="yxqds" type="text" size="0" maxlength="6"><font color="#999999">（如还有其他渠道，请填写）</font></td>';
 strdl += '</tr>';

 strdl += '<tr>';
 strdl += '<td><font class="subject">单位/个人名称</font></td>';
 strdl += '<td colspan="3"> <input  name="dwgrmz" type="text" size="30" maxlength="50" onblur="checkdwgrmz()"><font color="red">必填</font>';

 strdl += ' <tr>';
strdl += '  <td><font class="subject">身&nbsp;&nbsp;&nbsp;&nbsp;份</font></td>';
 strdl += '<td  colspan="3"><input name="sf" type="radio" value="个人"  checked>个人 <input name="sf" type="radio" value="公司">公司</td>';
strdl += ' </tr>';

 strdl += '<tr><td><font class="subject">联 系 人</font></td>';
 strdl += '<td  colspan="3"> <input  name="lxr" type="text"  size="30" maxlength="30" onblur="checklxr();"><font color="red">必填</font></td></tr>';

strdl += '<tr>';
strdl += '<td><font class="subject">联系电话/手机</font></td><td   colspan="3"> <input  name="lxdh" type="text" size="30" maxlength="30" onblur="checklxdh()">';
strdl += '<font color="red">必填</font><font color="#999999">(请认真填写，以便我们能及时与您联系)</font></td></tr>';
strdl += ' <tr>';
strdl += '  <td><font class="subject">联系地址</font></td>';
 strdl += '<td  colspan="3"><input  name="lxdz" type="text" id="lxdz"  size="30" maxlength="40" ></td>';
strdl += ' </tr>';
strdl += ' <tr>';
strdl += ' <td><font class="subject">联系Q Q</font></td>';
strdl += '  <td  colspan="3"> <input name="lxqq" type="text" id="lxqq" size="30" maxlength="21" ></td>';
strdl += '</tr>';
strdl += ' <tr>';
 strdl += '<td><font class="subject">电子邮箱</font></td>';
strdl += '  <td  colspan="3"><input name="dzyx" type="text" size="30" maxlength="30" ></td>';
strdl += ' </tr>';





strdl += '<tr> ';
 strdl += '<td valign="top"><font class="subject">留言内容</font></td>';
strdl += ' <td><table width="100%" border="0" cellspacing="0" cellpadding="0">';
strdl += ' <tr><td><textarea name="lynr" cols="50" rows="7" id="textarea"></textarea></td></tr></table>';
strdl += ' </td></tr>';

strdl += ' <tr><td valign="top">&nbsp;</td>';
strdl += ' <td height="46"  colspan="3"><input name="B1" type="submit" id="B1"  style="color:#ffffff;font-size: 14px;padding:3px;FONT-WEIGHT: bold;BACKGROUND: url(images/fenhon.gif) " value="→ 发送留言">&nbsp;&nbsp;&nbsp;<font color=#888888>发送留言后，我们会在第一时间与您联系</font>';
strdl += ' <input type="hidden" id="task" name="task" value="adddlly">';
strdl += '</td></tr>';


strdl += '</table>';
strdl += '</div>';



try{document.getElementById('strdl').innerHTML = strdl;}
catch(e){};