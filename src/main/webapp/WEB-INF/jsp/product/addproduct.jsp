<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://ckeditor.com" prefix="ck"%>
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
<script src="${ctx}/ckeditor/ckeditor.js"></script>
</head>
<body class="easyui-layout">
	<div region="north" style="height: 31px; overflow: hidden;"
		split="false" border="false">
		<div class="datagrid-toolbar">
			<a id="save" icon="icon-save" href="#" class="easyui-linkbutton"
				plain="true">添加</a> <a id="edit" icon="icon-edit"
				href="${pageContext.request.contextPath }/page_qupai_noticebill.action"
				class="easyui-linkbutton" plain="true">工单操作</a>
		</div>
	</div>
	<div region="center" style="overflow: auto; padding: 5px;"
		border="false">
		<form id="noticebillForm" action="" method="post">
			<table class="table-edit" width="100%" align="center">
				<tr class="title">
					<td colspan="4">产品基本信息</td>
				</tr>
				<tr>
					<td>产品名字:</td>
					<td><input type="text"
						class="easyui-textbox  easyui-validatebox" name="telephone"
						required="true" style="width: 100%" /></td>
				</tr>
				<tr>
					<td>产品分类:</td>
					<td><input id="category" name="category" style="width: 100%" /></td>
				</tr>
				<tr>
					<td>产品价格:</td>
					<td><input type="text" class="easyui-validatebox"
						name="customerName" required="true" style="width: 100%" /></td>
				</tr>
				<tr>
					<td>产品数量:</td>
					<td><input type="text" class="easyui-validatebox"
						name="customerName" required="true" style="width: 100%" /></td>
				</tr>
				<tr>
					<td>图片:</td>
					<td><input type="file" class="easyui-filebox" name="file1"
						style="width: 100%" /></td>
				</tr>
				<tr class="title">
					<td colspan="4">产品描述</td>
				</tr>
				<tr>
					<td><textarea id="content" rows="10" cols="10"
							style="width: 900px; height: 900px;"></textarea> <ck:replace
							replace="content" basePath="ckeditor"></ck:replace></td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		$('#category').combobox({
			url : '${ctx}/json/category.json',
			valueField : 'id',
			textField : 'text'
		});
	</script>
</body>
</html>