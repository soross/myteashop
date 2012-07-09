	var idOfFolderTrees = ['dhtmlgoodies_tree','dhtmlgoodies_tree2'];
	var imageFolder = 'admin/images/';
	var folderImage = 'folder.gif';
	var plusImage = 'nolines_plus.gif';
	var minusImage = 'nolines_minus.gif';
	var initExpandedNodes = '';
	var useAjaxToLoadNodesDynamically = true;
	var contextMenuActive = true;

	var ajaxObjectArray = new Array();
	var treeUlCounter = 0;
	var nodeId = 1;

	function Get_Cookie(name) {
	   var start = document.cookie.indexOf(name+"=");
	   var len = start+name.length+1;
	   if ((!start) && (name != document.cookie.substring(0,name.length))) return null;
	   if (start == -1) return null;
	   var end = document.cookie.indexOf(";",len);
	   if (end == -1) end = document.cookie.length;
	   return unescape(document.cookie.substring(len,end));
	}

	function Set_Cookie(name,value,expires,path,domain,secure) {
		expires = expires * 60*60*24*1000;
		var today = new Date();
		var expires_date = new Date( today.getTime() + (expires) );
	    var cookieString = name + "=" +escape(value) +
	       ( (expires) ? ";expires=" + expires_date.toGMTString() : "") +
	       ( (path) ? ";path=" + path : "") +
	       ( (domain) ? ";domain=" + domain : "") +
	       ( (secure) ? ";secure" : "");
	    document.cookie = cookieString;
	}

	function getNodeDataFromServer(ajaxIndex,ulId,parentId)
	{
		document.getElementById(ulId).innerHTML = ajaxObjectArray[ajaxIndex].response;
		ajaxObjectArray[ajaxIndex] = false;
		parseSubItems(ulId,parentId);
	}


	function parseSubItems(ulId,parentId)
	{

		if(initExpandedNodes){
			var nodes = initExpandedNodes.split(',');
		}
		var branchObj = document.getElementById(ulId);
		var menuItems = branchObj.getElementsByTagName('LI');	// Get an array of all menu items
		for(var no=0;no<menuItems.length;no++){
			var imgs = menuItems[no].getElementsByTagName('IMG');
			if(imgs.length>0)continue;
			nodeId++;
			var subItems = menuItems[no].getElementsByTagName('UL');
			var img = document.createElement('IMG');
			img.src = imageFolder + plusImage;
			img.onclick = showHideNode;
			if(subItems.length==0)img.style.visibility='hidden';else{
				subItems[0].id = 'tree_ul_' + treeUlCounter;
				treeUlCounter++;
			}
			var aTag = menuItems[no].getElementsByTagName('A')[0];
			aTag.onclick = showHideNode;
			if(contextMenuActive)aTag.oncontextmenu = showContextMenu;


			menuItems[no].insertBefore(img,aTag);
			menuItems[no].id = 'dhtmlgoodies_treeNode' + nodeId;
			var folderImg = document.createElement('IMG');
			if(menuItems[no].className){
				folderImg.src = imageFolder + menuItems[no].className;
			}else{
				folderImg.src = imageFolder + folderImage;
			}
			menuItems[no].insertBefore(folderImg,aTag);

			var tmpParentId = menuItems[no].getAttribute('parentId');
			if(!tmpParentId)tmpParentId = menuItems[no].tmpParentId;
			if(tmpParentId && nodes[tmpParentId])showHideNode(false,nodes[no]);
		}
	}


	function showHideNode(e,inputId)
	{
		if(inputId){
			if(!document.getElementById('dhtmlgoodies_treeNode'+inputId))return;
			thisNode = document.getElementById('dhtmlgoodies_treeNode'+inputId).getElementsByTagName('IMG')[0];
		}else {
			thisNode = this;
			if(this.tagName=='A')thisNode = this.parentNode.getElementsByTagName('IMG')[0];

		}
		if(thisNode.style.visibility=='hidden')return;
		var parentNode = thisNode.parentNode;
		inputId = parentNode.id.replace(/[^0-9]/g,'');
		if(thisNode.src.indexOf(plusImage)>=0){
			thisNode.src = thisNode.src.replace(plusImage,minusImage);
			var ul = parentNode.getElementsByTagName('UL')[0];
			ul.style.display='block';
			if(!initExpandedNodes)initExpandedNodes = ',';
			if(initExpandedNodes.indexOf(',' + inputId + ',')<0) initExpandedNodes = initExpandedNodes + inputId + ',';

			if(useAjaxToLoadNodesDynamically){	// Using AJAX/XMLHTTP to get data from the server
				var firstLi = ul.getElementsByTagName('LI')[0];
				var parentId = firstLi.getAttribute('parentId');
				if(!parentId)parentId = firstLi.parentId;
				if(parentId){
					ajaxObjectArray[ajaxObjectArray.length] = new sack();
					var ajaxIndex = ajaxObjectArray.length-1;
					ajaxObjectArray[ajaxIndex].onCompletion = function() { getNodeDataFromServer(ajaxIndex,ul.id,parentId); };	// Specify function that will be executed after file has been found
					ajaxObjectArray[ajaxIndex].runAJAX();		// Execute AJAX function
				}
			}

		}else{
			thisNode.src = thisNode.src.replace(minusImage,plusImage);
			parentNode.getElementsByTagName('UL')[0].style.display='none';
			initExpandedNodes = initExpandedNodes.replace(',' + inputId,'');
		}
		Set_Cookie('dhtmlgoodies_expandedNodes',initExpandedNodes,500);

		return false;
	}


	function initTree()
	{

		for(var treeCounter=0;treeCounter<idOfFolderTrees.length;treeCounter++){
			var dhtmlgoodies_tree = document.getElementById(idOfFolderTrees[treeCounter]);
			var menuItems = dhtmlgoodies_tree.getElementsByTagName('LI');	// Get an array of all menu items
			for(var no=0;no<menuItems.length;no++){
				nodeId++;
				var subItems = menuItems[no].getElementsByTagName('UL');
				var img = document.createElement('IMG');
				img.src = imageFolder + plusImage;
				img.onclick = showHideNode;
				if(subItems.length==0)img.style.visibility='hidden';else{
					subItems[0].id = 'tree_ul_' + treeUlCounter;
					treeUlCounter++;
				}
				var aTag = menuItems[no].getElementsByTagName('A')[0];
				if(contextMenuActive)aTag.oncontextmenu = showContextMenu;
				aTag.onclick = showHideNode;
				menuItems[no].insertBefore(img,aTag);
				if(!menuItems[no].id)menuItems[no].id = 'dhtmlgoodies_treeNode' + nodeId;
				var folderImg = document.createElement('IMG');
				if(menuItems[no].className){
					folderImg.src = imageFolder + menuItems[no].className;
				}else{
					folderImg.src = imageFolder + folderImage;
				}
				menuItems[no].insertBefore(folderImg,aTag);
			}

		}
		initExpandedNodes = Get_Cookie('dhtmlgoodies_expandedNodes');
		if(initExpandedNodes){
			var nodes = initExpandedNodes.split(',');
			for(var no=0;no<nodes.length;no++){
				if(nodes[no])showHideNode(false,nodes[no]);
			}
		}
	}

	window.onload = initTree;