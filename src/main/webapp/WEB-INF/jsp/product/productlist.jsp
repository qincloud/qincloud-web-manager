<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="${ctx}/js/jquery-1.8.3.js"></script>
<!-- 导入easyui类库 -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/js/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/js/easyui/ext/portal.css">
<link rel="stylesheet" type="text/css" href="${ctx}/css/default.css">
<script type="text/javascript"
	src="${ctx}/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctx}/js/easyui/easyloader.js"></script>
<script type="text/javascript"
	src="${ctx}/js/easyui/ext/jquery.portal.js"></script>
<script type="text/javascript"
	src="${ctx}/js/easyui/ext/jquery.cookie.js"></script>
<script src="${ctx}/js/easyui/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script type="text/javascript">
	function doAdd() {
		alert("添加...");
	}

	function doView() {
		alert("修改...");
	}

	function doDelete() {
		alert("删除...");
	}

	//工具栏
	var toolbar = [ {
		id : 'button-edit',
		text : '修改',
		iconCls : 'icon-edit',
		handler : doView
	}, {
		id : 'button-add',
		text : '增加',
		iconCls : 'icon-add',
		handler : doAdd
	}, {
		id : 'button-delete',
		text : '删除',
		iconCls : 'icon-cancel',
		handler : doDelete
	}, {
		id : 'button-import',
		text : '导入',
		iconCls : 'icon-redo'
	} ];
	// 定义列
	var columns = [ [ {
		field : 'pid',
		title : '商品id',
		width : 120,
		align : 'center'
	}, {
		field : 'name',
		title : '商品名称',
		width : 120,
		align : 'center'
	}, {
		field : 'catalog',
		title : '分类号码',
		width : 120,
		align : 'center'
	}, {
		field : 'catalog_name',
		title : '分类',
		width : 120,
		align : 'center'
	}, {
		field : 'price',
		title : '价格',
		width : 120,
		align : 'center'
	}, {
		field : 'number',
		title : '数量',
		width : 120,
		align : 'center'
	}, {
		field : 'picture',
		title : '图片地址',
		width : 200,
		align : 'center'
	} ] ];

	$(function() {
		// 先将body隐藏，再显示，不会出现页面刷新效果
		$("body").css({
			visibility : "visible"
		});

		// 收派标准数据表格
		$('#grid').datagrid({
			iconCls : 'icon-forward',
			fit : true,
			border : false,
			rownumbers : true,
			striped : true,
			pageList : [ 30, 50, 100 ],
			pagination : true,
			toolbar : toolbar,
			url : "${ctx}/list/all.action",
			idField : 'id',
			columns : columns,
			onDblClickRow : doDblClickRow
		});

		// 添加、修改区域窗口
		$('#addRegionWindow').window({
			title : '添加修改区域',
			width : 400,
			modal : true,
			shadow : true,
			closed : true,
			height : 400,
			resizable : false
		});

	});

	function doDblClickRow() {
		alert("双击表格数据...");
	}
</script>
</head>
<body class="easyui-layout" style="visibility: hidden;">
	<div region="center" border="false">
		<table id="grid"></table>
	</div>
</body>
</html>