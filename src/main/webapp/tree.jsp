<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Editable TreeGrid - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="src/css/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="src/css/themes/default/icon.css">
	<link rel="stylesheet" type="text/css" href="src/css/themes/default/demo.css">
	<script type="text/javascript" src="src/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="src/js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="src/js/jslib/treetable.js"></script>
</head>
<body>
	<table id="tg" class="easyui-treegrid" title="Editable TreeGrid" style="width:700px;height:400px"
			data-options="
				iconCls: 'icon-ok',
				rownumbers: true,
				animate: true,
				collapsible: true,
				fitColumns: true,
				pagination:true,
				url: 'treegrid_data2.json',
				method: 'get',
				idField: 'id',
				singleSelect:true,
				treeField: 'name',
				onContextMenu: onContextMenu">
		<thead>
			<tr>
				<th data-options="field:'name',width:180,editor:'text'">分类编号</th>
				<th data-options="field:'persons',width:60,align:'right',editor:'text'">分类名称</th>
				<th data-options="field:'grade',width:60,align:'right',editor:'numberbox'">分类级别</th>
				<!-- 
				<th data-options="field:'begin',width:80,editor:'datebox'">Begin Date</th>
				<th data-options="field:'end',width:80,editor:'datebox'">End Date</th>
				<th data-options="field:'progress',width:120,formatter:formatProgress,editor:'numberbox'">Progress</th>
				 -->
			</tr>
		</thead>
	</table>
	<div id="mm" class="easyui-menu" style="width:120px;">
		<div onclick="append()" data-options="iconCls:'icon-add'">添加</div>
		<div onclick="removeIt()" data-options="iconCls:'icon-remove'">删除</div>
		<div class="menu-sep"></div>
		<div onclick="collapse()">折叠</div>
		<div onclick="expand()">展开</div>
	</div>
</body>
</html>