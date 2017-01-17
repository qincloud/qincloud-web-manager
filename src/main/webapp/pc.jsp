<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="${ctx}/js/jquery-1.8.3.js"></script>
<!-- 导入easyui类库 
<link rel="stylesheet" type="text/css"
	href="${ctx}/js/easyui/themes/default/easyui.css">-->
<link rel="stylesheet" type="text/css"
	href="${ctx}/js/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/js/easyui/ext/portal.css">
<link rel="stylesheet" type="text/css" href="${ctx}/css/default.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/js/easyui/themes/ui-pepper-grinder/easyui.css">
<script type="text/javascript"
	src="${ctx}/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${ctx}/js/easyui/ext/jquery.portal.js"></script>
<script type="text/javascript"
	src="${ctx}/js/easyui/ext/jquery.cookie.js"></script>
<!-- 导入ztree类库 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/js/ztree/zTreeStyle.css"
	type="text/css" />
<script
	src="${pageContext.request.contextPath }/js/ztree/jquery.ztree.all-3.5.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath }/js/easyui/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/outOfBounds.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		var setting = {
			data : {
				simpleData : { // 简单数据 
					enable : true
				}
			},
			callback : {
				onClick : onClick
			}
		};
		$.ajax({
			url : 'http://localhost:8888/json/menu.json',
			type : 'POST',
			dataType : 'json',
			success : function(data) {
				//var zNodes = eval("(" + data + ")");
				$.fn.zTree.init($("#treeMenu"), setting, data);
			},
			error : function(msg) {
				alert('菜单加载异常!');
			}
		});

		// 页面加载后 右下角 弹出窗口
		/**************/
		window
				.setTimeout(
						function() {
							$.messager
									.show({
										title : "消息提示",
										msg : '欢迎登录，超级管理员！ <a href="javascript:void" onclick="top.showAbout();">联系管理员</a>',
										timeout : 5000
									});
						}, 3000);
		/*************/
		$("#btnCancel").click(function() {
			$('#editPwdWindow').window('close');
		});
	});

	function onClick(event, treeId, treeNode, clickFlag) {
		// 判断树菜单节点是否含有 page属性
		if (treeNode.page != undefined && treeNode.page != "") {
			if ($("#tabs").tabs('exists', treeNode.name)) {// 判断tab是否存在
				$('#tabs').tabs('select', treeNode.name); // 切换tab
			} else {
				// 开启一个新的tab页面
				var content = '<div style="width:100%;height:100%;overflow:hidden;">'
						+ '<iframe src="'
						+ treeNode.page
						+ '" scrolling="auto" style="width:100%;height:100%;border:0;" ></iframe></div>';

				$('#tabs').tabs('add', {
					title : treeNode.name,
					content : content,
					closable : true
				});
			}
		}
	}
</script>
</head>
<body>
	<div class="easyui-layout" style="width: 100%; height: 100%;">
		<div data-options="region:'north',border:false"
			style="height: 80px; padding: 10px;">
			<!-- 
			<div>
				<img src="${pageContext.request.contextPath }/images/logo.png"
					border="0">
			</div>
			-->
			<div id="sessionInfoDiv"
				style="position: absolute; right: 5px; top: 10px;">
				[<strong>超级管理员</strong>]，欢迎你！
			</div>
			<div style="position: absolute; right: 5px; bottom: 10px;">
				<a href="javascript:void(0);" class="easyui-menubutton"
					data-options="menu:'#layout_north_kzmbMenu',iconCls:'icon-help'">控制面板</a>
			</div>
			<div id="layout_north_kzmbMenu" style="width: 100px; display: none;">
				<div onclick="editPassword();">修改密码</div>
				<div onclick="showAbout();">联系管理员</div>
				<div class="menu-sep"></div>
				<div onclick="logoutFun();">退出系统</div>
			</div>
		</div>
		<div data-options="region:'south',split:true" style="height: 50px;"></div>
		<!-- 
		<div data-options="region:'east',split:true" title="East"
			style="width: 100px;"></div> -->
		<div data-options="region:'west',split:true,title:'菜单导航'"
			style="width: 200px">
			<div class="easyui-accordion" fit="true" border="false">
				<div title="基本功能" data-options="iconCls:'icon-mini-add'"
					style="overflow: auto">
					<ul id="treeMenu" class="ztree"></ul>
				</div>
				<div title="系统管理" data-options="iconCls:'icon-mini-add'"
					style="overflow: auto">
					<ul id="adminMenu" class="ztree"></ul>
				</div>
			</div>
		</div>

		<div data-options="region:'center'">
			<div id="tabs" fit="true" class="easyui-tabs" border="false">
				<div title="消息中心" id="subWarp"
					style="width: 100%; height: 100%; overflow: hidden">
					<iframe src="${ctx}/home.jsp"
						style="width: 100%; height: 100%; border: 0;"></iframe>
					<%--				这里显示公告栏、预警信息和代办事宜--%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>