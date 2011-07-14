//Ë¢ĞÂÍ¼ĞÎÂë
$(document).ready(function() {

	$("img#codeimg").click(function () {
		$("img#codeimg")[0].src="../random/imgcode.php?"+Math.round(Math.random()*1000000);
	 });

	$("#getImgCode").click(function () {
		$("img#codeimg")[0].src="../random/imgcode.php?"+Math.round(Math.random()*1000000);
	 });
});