<?php
	session_start();
	if(!$_SESSION["userid"]) header("Location:index.php");
	include("header.inc.php");
	include("dbconnect.inc.php");
	include("functions.inc.php");
	$id = $_SESSION["userid"];
	$sql = "select * from users where id={$id}";
	$res = mysql_query($sql);
	$row = mysql_fetch_array($res);
	$reg_time = $row["reg_time"];
	$photo = $row["photo"];
	if($photo == "") {
		$photo = "logo.jpg";
	}
	if( isset($_POST["submit"]) and !empty( $_POST["submit"])){
		$paramters = check_form($_POST["domain"]);
		date_default_timezone_set("Asia/Hong_Kong");
		$paramters["reg_time"] = date("Y-m-d H:i:s");
		extract($paramters);
		$sql = "insert into domains ";
		$sql .= " values(null,";
		$sql .= " '{$domain_name}',";
		$sql .= $_SESSION["userid"].",";
		$sql .= " '{$reg_time}', ";
		$sql .= " '{$owner}', ";
		$sql .= " '{$owner_ln}', ";
		$sql .= " '{$owner_fn}', ";
		$sql .= " '{$owner_country}', ";
		$sql .= " '{$owner_province}', ";
		$sql .= " '{$owner_city}' ,";
		$sql .= " '{$owner_street}' ,";
		$sql .= " '{$owner_zip}' ,";
		$owner_tel = $owner_telC."|".$owner_telA."|".$owner_telN."|".$owner_telE;
		$sql .= " '$owner_tel',";
		$owner_fax = $owner_faxC."|".$owner_faxA."|".$owner_faxN."|".$owner_faxE;
		$sql .= " '$owner_fax',";
		$sql .= " '{$owner_email}',";
		$sql .= " '{$period}')";
		//echo $sql;	
		$res = mysql_query($sql);
		if(!$res) {
			die("数据库出错，请返回重试。");
		}else{
			echo "<script>alert('注册成功 ');window.location('account.php');</script>";
		}
	}
?>
 <script language="javascript" src="./js/validate.js"></script>
 <table id="content">
  <tr>
   <td id="sidebar-left"><div class="block block-user" id="block-user-1">
  <h2 class="title"><?php echo $_SESSION["username"]; ?></h2>
 <div class="content">
<ul class="menu">
<li class="leaf"><a href="account.php" class="active">我的帐户</a></li>
<?php if( $_SESSION["userid"] == 1 and $_SESSION["username"] == "admin"){?>
<li class="leaf"><a href="admin.php" >用户列表</a></li>
<?php }?>
<li class="leaf"><a href="logout.php">注销登录</a></li>

</ul>
</div>
</div>
</td>
   <td id="main">
	<div class="breadcrumb"><a href="./">主页</a> &raquo; <a href="./">注册域名</a></div>
	<form onsubmit="return checkForm()" id="f1" name="f1" method="post" action="#">
	<input type="hidden" value="<?php echo $_GET["d"];?>" name="domain[domain_name]" />
	<table border="0" align="center">
    <tbody><tr>
      <td width="150">要注册的域名：</td>
      <td><?php echo $_GET["d"]?></td>
    </tr>
    <tr height="25">
      <td>价格：</td>
      <td><span style="color:red;">45/1年&nbsp;&nbsp;195/3年<br>325/5年&nbsp;&nbsp;650/10年</span></td>
    </tr>
    <tr height="25">
      <td>选择注册年限：</td>
      <td><select name="domain[period]">
        <option selected="selected" value="1">1年</option>
        <option value="3">3年</option>
        <option value="5">5年</option>
        <option value="10">10年</option>
      </select>      </td>
    </tr>
    <tr height="25">
      <td colspan="2"><hr size="1" color="#084B8E">
        域名联系人信息（<span class="redText">每项必填且资料必须真实有效，请填写英文或拼音</span>）</td>
    </tr>
	<tr><td colspan="2"></td></tr>
	<tr height="25">
      <td>域名所有者：</td>
      <td><input type="text" maxlength="128" size="30" class="d_owner" name="domain[owner]"></td>
    </tr>		
    <tr height="25">
      <td>联系人：</td>
      <td><input type="text" maxlength="20" size="8" class="d_owner_ln" name="domain[owner_ln]">
      (姓)
		<input type="text" maxlength="20" size="15" class="d_owner_fn" name="domain[owner_fn]">
		(名)</td>
    </tr>
    <tr height="25">
      <td>国家代码：</td>
      <td><select id="d_owner_country" class="d_owner_country" name="domain[owner_country]">
        <option selected="" value="CN">中国 CHINA</option>
<option value="AF">AFGHANISTAN</option>
<option value="AL">ALBANIA</option>
<option value="BW">BOTSWANA</option>
<option value="DZ">ALGERIA</option>
<option value="AS">AMERICAN SAMOA</option>
<option value="AD">ANDORRA</option>
<option value="AO">ANGOLA</option>
<option value="AI">ANGUILLA</option>
<option value="AQ">ANTARCTICA</option>
<option value="AG">ANTIGUA AND BARBUDA</option>
<option value="AR">ARGENTINA</option>
<option value="AM">ARMENIA</option>
<option value="AW">ARUBA</option>
<option value="AU">AUSTRALIA</option>
<option value="AT">AUSTRI</option>
<option value="AZ">AZERBAIJAN</option>
<option value="BS">BAHAMAS</option>
<option value="BH">BAHRAIN</option>
<option value="BD">BANGLADESH</option>
<option value="BB">BARBADOS</option>
<option value="BY">BELARUS</option>
<option value="BE">BELGIUM</option>
<option value="BZ">BELIZE</option>
<option value="BJ">BENIN</option>
<option value="BM">BERMUDA</option>
<option value="BT">BHUTAN</option>
<option value="BO">BOLIVIA</option>
<option value="BA">BOSNIA AND HERZEGOVINA</option>
<option value="BV">BOUVET ISLAND</option>
<option value="BR">BRAZIL</option>
<option value="IO">BRITISH INDIAN OCEAN TERRITORY</option>
<option value="BN">BRUNEI DARUSSALAM</option>
<option value="BG">BULGARIA</option>
<option value="BF">BURKINA FASO</option>
<option value="BI">BURUNDI</option>
<option value="KH">CAMBODIA</option>
<option value="CM">CAMEROON</option>
<option value="CA">CANADA</option>
<option value="CV">CAPE VERDE</option>
<option value="KY">CAYMAN ISLANDS</option>
<option value="CF">CENTRAL AFRICAN REPUBLIC</option>
<option value="TD">CHAD</option>
<option value="CL">CHILE</option>
<option value="CX">CHRISTMAS ISLAND</option>
<option value="CC">COCOS (KEELING) ISLANDS</option>
<option value="CO">COLOMBIA</option>
<option value="KM">COMOROS</option>
<option value="CG">CONGO</option>
<option value="CD">CONGO, THE DEMOCRATIC REPUBLIC OF THE</option>
<option value="CK">COOK ISLANDS</option>
<option value="CR">COSTA RICA</option>
<option value="CI">C?TE D' IVOIRE</option>
<option value="HR">CROATIA</option>
<option value="CU">CUBA</option>
<option value="CY">CYPRUS</option>
<option value="CZ">CZECH REPUBLIC</option>
<option value="DK">DENMARK</option>
<option value="DJ">DJIBOUTI</option>
<option value="DM">DOMINICA</option>
<option value="DO">DOMINICAN REPUBLIC</option>
<option value="TP">EAST TIMOR</option>
<option value="EC">ECUADOR</option>
<option value="EG">EGYPT</option>
<option value="SV">EL SALVADOR</option>
<option value="GQ">EQUATORIAL GUINEA</option>
<option value="ER">ERITREA</option>
<option value="EE">ESTONIA</option>
<option value="ET">ETHIOPIA</option>
<option value="FK">FALKLAND ISLANDS (MALVINAS)</option>
<option value="FO">FAROE ISLANDS</option>
<option value="FJ">FIJI</option>
<option value="FI">FINLAND</option>
<option value="FR">FRANCE</option>
<option value="GF">FRENCH GUIANA</option>
<option value="PF">FRENCH POLYNESIA</option>
<option value="TF">FRENCH SOUTHERN TERRITORIES</option>
<option value="GA">GABON</option>
<option value="GM">GAMBIA</option>
<option value="GE">GEORGIA</option>
<option value="DE">GERMANY</option>
<option value="GH">GHANA</option>
<option value="GI">GIBRALTAR</option>
<option value="GR">GREECE</option>
<option value="GL">GREENLAND</option>
<option value="GD">GRENADA</option>
<option value="GP">GUADELOUPE</option>
<option value="GU">GUAM</option>
<option value="GT">GUATEMALA</option>
<option value="GN">GUINEA</option>
<option value="GW">GUINEA-BISSAU</option>
<option value="GY">GUYANA</option>
<option value="HT">HAITI</option>
<option value="HM">HEARD ISLAND AND MCDONALD ISLANDS</option>
<option value="VA">HOLY SEE (VATICAN CITY STATE)</option>
<option value="HN">HONDURAS</option>
<option value="HK">HONG KONG</option>
<option value="HU">HUNGARY</option>
<option value="IS">ICELAND</option>
<option value="IN">INDIA</option>
<option value="ID">INDONESIA</option>
<option value="IR">IRAN, ISLAMIC REPUBLIC OF</option>
<option value="IQ">IRAQ</option>
<option value="IE">IRELAND</option>
<option value="IL">ISRAEL</option>
<option value="IT">ITALY</option>
<option value="JM">JAMAICA</option>
<option value="JP">JAPAN</option>
<option value="JO">JORDAN</option>
<option value="KZ">KAZAKSTAN</option>
<option value="KE">KENYA</option>
<option value="KI">KIRIBATI</option>
<option value="KP">KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF</option>
<option value="KR">KOREA, REPUBLIC OF</option>
<option value="KW">KUWAIT</option>
<option value="KG">KYRGYZSTAN</option>
<option value="LA">LAO PEOPLE'S DEMOCRATIC REPUBLIC</option>
<option value="LV">LATVIA</option>
<option value="LB">LEBANON</option>
<option value="LS">LESOTHO</option>
<option value="LR">LIBERIA</option>
<option value="LY">LIBYAN ARAB JAMAHIRIYA</option>
<option value="LI">LIECHTENSTEIN</option>
<option value="LT">LITHUANIA</option>
<option value="LU">LUXEMBOURG</option>
<option value="MO">MACAU</option>
<option value="MK">MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF</option>
<option value="MG">MADAGASCAR</option>
<option value="MW">MALAWI</option>
<option value="MY">MALAYSIA</option>
<option value="MV">MALDIVES</option>
<option value="ML">MALI</option>
<option value="MT">MALTA</option>
<option value="MH">MARSHALL ISLANDS</option>
<option value="MQ">MARTINIQUE</option>
<option value="MR">MAURITANIA</option>
<option value="MU">MAURITIUS</option>
<option value="YT">MAYOTTE</option>
<option value="MX">MEXICO</option>
<option value="FM">MICRONESIA, FEDERATED STATES OF</option>
<option value="MD">MOLDOVA, REPUBLIC OF</option>
<option value="MC">MONACO</option>
<option value="MN">MONGOLIA</option>
<option value="MS">MONTSERRAT</option>
<option value="MA">MOROCCO</option>
<option value="MZ">MOZAMBIQUE</option>
<option value="MM">MYANMAR</option>
<option value="NA">NAMIBIA</option>
<option value="NR">NAURU</option>
<option value="NP">NEPAL</option>
<option value="NL">NETHERLANDS</option>
<option value="AN">NETHERLANDS ANTILLES</option>
<option value="NC">NEW CALEDONIA</option>
<option value="NZ">NEW ZEALAND</option>
<option value="NI">NICARAGUA</option>
<option value="NE">NIGER</option>
<option value="NG">NIGERIA</option>
<option value="NU">NIUE</option>
<option value="NF">NORFOLK ISLAND</option>
<option value="MP">NORTHERN MARIANA ISLANDS</option>
<option value="NO">NORWAY</option>
<option value="OM">OMAN</option>
<option value="PK">PAKISTAN</option>
<option value="PW">PALAU</option>
<option value="PS">PALESTINIAN TERRITORY, OCCUPIED</option>
<option value="PA">PANAMA</option>
<option value="PG">PAPUA NEW GUINEA</option>
<option value="PY">PARAGUAY</option>
<option value="PE">PERU</option>
<option value="PH">PHILIPPINES</option>
<option value="PN">PITCAIRN</option>
<option value="PL">POLAND</option>
<option value="PT">PORTUGAL</option>
<option value="PR">PUERTO RICO</option>
<option value="QA">QATAR</option>
<option value="RE">RéUNION</option>
<option value="RO">ROMANIA</option>
<option value="RU">RUSSIAN FEDERATION</option>
<option value="RW">RWANDA</option>
<option value="SH">SAINT HELENA</option>
<option value="KN">SAINT KITTS AND NEVIS</option>
<option value="LC">SAINT LUCIA</option>
<option value="PM">SAINT PIERRE AND MIQUELON</option>
<option value="VC">SAINT VINCENT AND THE GRENADINES</option>
<option value="WS">SAMOA</option>
<option value="SM">SAN MARINO</option>
<option value="ST">SAO TOME AND PRINCIPE</option>
<option value="SA">SAUDI ARABIA</option>
<option value="SN">SENEGAL</option>
<option value="SC">SEYCHELLES</option>
<option value="SL">SIERRA LEONE</option>
<option value="SG">SINGAPORE</option>
<option value="SK">SLOVAKIA</option>
<option value="SI">SLOVENIA</option>
<option value="SB">SOLOMON ISLANDS</option>
<option value="SO">SOMALIA</option>
<option value="ZA">SOUTH AFRICA</option>
<option value="GS">SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS</option>
<option value="ES">SPAIN</option>
<option value="LK">SRI LANKA</option>
<option value="SD">SUDAN</option>
<option value="SR">SURINAME</option>
<option value="SJ">SVALBARD AND JAN MAYEN</option>
<option value="SZ">SWAZILAND</option>
<option value="SE">SWEDEN</option>
<option value="CH">SWITZERLAND</option>
<option value="SY">SYRIAN ARAB REPUBLIC</option>
<option value="TW">CHINAESE TAIBEI</option>
<option value="TJ">TAJIKISTAN</option>
<option value="TZ">TANZANIA, UNITED REPUBLIC OF</option>
<option value="TH">THAILAND</option>
<option value="TG">TOGO</option>
<option value="TK">TOKELAU</option>
<option value="TO">TONGA</option>
<option value="TT">TRINIDAD AND TOBAGO</option>
<option value="TN">TUNISIA</option>
<option value="TR">TURKEY</option>
<option value="TM">TURKMENISTAN</option>
<option value="TC">TURKS AND CAICOS ISLANDS</option>
<option value="TV">TUVALU</option>
<option value="UG">UGANDA</option>
<option value="UA">UKRAINE</option>
<option value="AE">UNITED ARAB EMIRATES</option>
<option value="GB">UNITED KINGDOM</option>
<option value="US">UNITED STATES</option>
<option value="UM">UNITED STATES MINOR OUTLYING ISLANDS</option>
<option value="UY">URUGUAY</option>
<option value="UZ">UZBEKISTAN</option>
<option value="VU">VANUATU</option>
<option value="VE">VENEZUELA</option>
<option value="VN">VIET NAM</option>
<option value="VG">VIRGIN ISLANDS, BRITISH</option>
<option value="VI">VIRGIN ISLANDS, U.S.</option>
<option value="WF">WALLIS AND FUTUNA</option>
<option value="EH">WESTERN SAHARA</option>
<option value="YE">YEMEN</option>
<option value="YU">YUGOSLAVIA</option>
<option value="ZM">ZAMBIA</option>
<option value="ZW">ZIMBABWE</option></select></td>
    </tr>
    <tr height="25">
      <td>省份：</td>
      <td><input type="text" maxlength="15" size="15" class="d_owner_province" name="domain[owner_province]"></td>
    </tr>
    <tr height="25">
      <td>城市：</td>
      <td><input type="text" maxlength="15" size="15" class="d_owner_city" name="domain[owner_city]"></td>
    </tr>
    <tr height="25">
      <td>街道地址：</td>
      <td><input type="text" maxlength="128" size="30" class="d_owner_street" name="domain[owner_street]"></td>
    </tr>
    <tr height="25">
      <td>邮编：</td>
      <td><input type="text" maxlength="6" size="15" class="d_owner_zip" name="domain[owner_zip]"></td>
    </tr>
    <tr height="40">
      <td>电话号码：</td>
      <td><input type="text" maxlength="3" value="86" size="4" class="d_owner_telC" name="domain[owner_telC]"> - 
        <input type="text" maxlength="5" size="5" class="d_owner_telA" name="domain[owner_telA]"> - 
        <input type="text" maxlength="11" size="14" class="d_owner_telN" name="domain[owner_telN]"> - 
		<input type="text" maxlength="4" size="4" class="d_owner_telE" name="domain[owner_telE]"> <br>
		<span class="redText">举例：86-025-88888888-8000，或86-13188888888</span></td>
    </tr>
    <tr height="40">
      <td>传真：</td>
      <td><input type="text" maxlength="3" value="86" size="4" class="d_owner_faxC" name="domain[owner_faxC]"> -
	  <input type="text" maxlength="5" size="5" class="d_owner_faxA" name="domain[owner_faxA]"> -
	  <input type="text" maxlength="11" size="14" class="d_owner_faxN" name="domain[owner_faxN]"> -
	<input type="text" maxlength="4" size="4" class="d_owner_faxE" name="domain[owner_faxE]"><br>
	<span class="redText">举例：86-025-88888888-8000，或86-13188888888</span></td>
    </tr>
	<tr height="40">
      <td>电子邮箱：</td>
      <td><input type="text" class="d_owner_email" value="<?php echo $_SESSION["mail"];?>" maxlength="30" size="30" name="domain[owner_email]"></td>
    </tr>
	<tr>
      <td colspan="2">
	  	  </td>
    </tr>
      <td align="center" colspan="3"><br><input type="submit" name="submit" value=" 提 交 "><br></td>
      </tr>
   </tbody></table>
   </form>
   </td>
  </tr>
 </table>
 <br />
 <br />
 <br />
 </body>
</html>
