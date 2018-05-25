<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LycheeStore Management Portal</title>
<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/gray/easyui.css" />
<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/icon.css" />
<link rel="stylesheet" type="text/css" href="css/e3.css" />
<link rel="stylesheet" type="text/css" href="css/default.css" />
<script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/jquery-easyui-1.4.1/locale/easyui-lang-en.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<style type="text/css">
	.content {
		padding: 10px 10px 10px 10px;
	}
</style>
</head>
<body class="easyui-layout">
    <!-- 头部标题 -->
	<div data-options="region:'north',border:false" style="height:60px; padding:5px; background:#F3F3F3"> 
		<span class="northTitle">LycheeStore Management Portal</span>
	    <span class="loginInfo">User：admin&nbsp;&nbsp;Name：Admin&nbsp;&nbsp;Role：System Administrator</span>
	</div>
    <div data-options="region:'west',title:'Menu',split:true" style="width:200px;">
    	<ul id="menu" class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
         	<li>
         		<span>Inventory Management</span>
         		<ul>
	         		<li data-options="attributes:{'url':'item-add'}">Add items</li>
	         		<li data-options="attributes:{'url':'item-list'}">List items</li>
	         	</ul>
         	</li>
         	<li>
         		<span>Site Content Management</span>
         		<ul>
	         		<li data-options="attributes:{'url':'content-category'}">Content categories</li>
	         		<li data-options="attributes:{'url':'content'}">Content</li>
	         	</ul>
         	</li>
         	<li>
         		<span>Indexer Management</span>
         		<ul>
	         		<li data-options="attributes:{'url':'index-item'}">Solr indexer</li>
	         	</ul>
         	</li>
         </ul>
    </div>
    <div data-options="region:'center',title:''">
    	<div id="tabs" class="easyui-tabs">
		    <div title="Home" style="padding:20px;">
		    <span>Welcome to Management Portal! Please click the child node to manage items and categories. Then use index management to upload your changed to repository in on click!</span>
		        	
		    </div>
		</div>
    </div>
    <!-- 页脚信息 -->
	<div data-options="region:'south',border:false" style="height:20px; background:#F3F3F3; padding:2px; vertical-align:middle;">
		<span id="sysVersion">System version：v1.0</span>
	    <span id="nowTime"></span>
	</div>
<script type="text/javascript">
$(function(){
	$('#menu').tree({
		onClick: function(node){
			if($('#menu').tree("isLeaf",node.target)){
				var tabs = $("#tabs");
				var tab = tabs.tabs("getTab",node.text);
				if(tab){
					tabs.tabs("select",node.text);
				}else{
					tabs.tabs('add',{
					    title:node.text,
					    href: node.attributes.url,
					    closable:true,
					    bodyCls:"content"
					});
				}
			}
		}
	});
});
setInterval("document.getElementById('nowTime').innerHTML=new Date().toLocaleString();",1000);
</script>
</body>
</html>