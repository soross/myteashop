<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/jn0904" prefix="page"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html locale="true">
<head>
	<html:base />

	<title>播放视频</title>
	<link
		href="${pageContext.request.contextPath}/admin/css/blueplayer.css"
		rel="stylesheet" type="text/css" />
</head>

<body>
	<!--startprint-->
	<table>
		<tr>
			<td align="right">
				<input type="button" value="关闭" onclick="window.close();" />
				&nbsp;
				<input type="button" value="打印" onclick="preview();" />
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%">
					<tr>
						<td>
							医疗证号：
						</td>
						<td>
							姓名：
						</td>
						<td>
							年龄：
						</td>
						<td>
							性别：
						</td>
						<td>
							诊断日期：
						</td>
					</tr>
					<tr>
						<td colspan="5">
							诊断结果：
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<!--视频播放器start-->
				<!--
				<div class="v_player">
					<div class="v_top1"></div>
					<div class="v_top2"></div>
					<div class="v_top3"></div>
					<br class="clear" />
				</div>
				<div class="v_player">
					<div class="v_mid1"></div>
					<div class="v_mid2">
						<div id="playzone">
							<div id="perpic">
								<img src="images/player_adv.png" width="320" height="245" alt="" />
							</div>
							<div id="playerList"></div>
						</div>
						<div class="m_info">
							<div id="mediaTime">
								01:45
							</div>
							<div id="mediaInfo">
								准备就绪
							</div>
							<br class="clear" />
						</div>
					</div>
					<div class="v_mid3"></div>
					<br class="clear" />
				</div>
				<div class="v_line"></div>
				<div class="v_player">
					<div class="left_control"></div>
					<div class="cnt_control">
						<div class="btnPlay">
							<img src="mediaplayer/lightblue/p_play1.gif" id="Play"
								class="pointer" onclick="toPlay()" alt="播放/暂停" width="34"
								height="36" />
						</div>
						<div class="btnStop">
							<img src="mediaplayer/lightblue/p_stop.gif" name="Stop"
								width="23" height="23" class="pointer" id="Stop" alt="停止播放"
								onclick="toStop()" />
						</div>
						<div class="btnInfo">
							<div class="pbar">
								<div class="vloadingleft"></div>
								<div class="v_loading">
									<div class="pzonetop"></div>
									<div onmousedown="mouseDown(0)" id="pZone">
										<img id="pBox" height="10" alt="视频进度调节"
											src="mediaplayer/lightblue/p_vbar.gif" width="10" />
									</div>
								</div>
								<div class="btnSound">
									<img src="mediaplayer/lightblue/p_mute.gif" width="23"
										height="25" class="pointer" id="Mute" alt="声音开/关"
										onclick="toMute()" />
								</div>
								<div class="clear"></div>
							</div>
							<div id="v_info"></div>
						</div>
						<div class="sbar">
							<div class="vzonetop"></div>
							<div onmousedown="mouseDown(1)" id="vZone">
								<img id="vBox" height="10" alt="音量大小调节"
									src="mediaplayer/lightblue/v_box.gif" width="7" />
							</div>
							<div class="fullscreen">
								<img id="Screen" onclick="toScreen()" class="pointer"
									src="mediaplayer/lightblue/p_screen.gif" alt="全屏观看视频"
									width="22" height="23" />
							</div>
						</div>
						<div class="clear"></div>
					</div>
					<div class="right_control"></div>
					<div class="clear"></div>
				</div>

				视频播放器end-->


				<object classid="clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95"
					type="application/x-oleobject" width=500 height=350 align="middle"
					standby="Loading Microsoft?Windows?Media Player components..."
					id="MediaPlayer1">
					<param name="transparentAtStart" value="True">
					<param name="transparentAtStop" value="True">
					<param name="AnimationAtStart" value="Ture">
					<param name="AutoStart" value="True">
					<param name="AutoRewind" value="true">
					<param name="DisplaySize" value="0">
					<param name="AutoSize" value="false">
					<param name="ShowDisplay" value="false">
					<param name="ShowStatusBar" value="ture">
					<param name="ShowControls" value="ture">
					<param name="FileName"
						value="${pageContext.request.contextPath}/admin/media/${path}">
					<param name="Volume" value="0">
					<embed src="" width="500" height="350" autostart="True"
						align="middle" transparentatstart="True" transparentatstop="True"
						animationatstart="Ture" autorewind="true" displaysize="0"
						autosize="false" showdisplay="False" showstatusbar="-1"
						showcontrols="ture"
						filename="${pageContext.request.contextPath}/admin/media/${path}"
						volume="0">
					</embed>
				</object>

			</td>
		</tr>
	</table>
	<!--endprint-->
</body>




<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/admin/js/mediajs/common.js"></script>
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/admin/js/mediajs/MediaPlayer1.0.js"></script>
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/admin/js/mediajs/Player1.0.js"></script>

<script language="javascript">
function preview()
{
bdhtml=window.document.body.innerHTML;
sprnstr="<!--startprint-->";
eprnstr="<!--endprint-->";
prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17);
prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));
window.document.body.innerHTML=prnhtml;
window.print();
}
</script>
</html:html>
