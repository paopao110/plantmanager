<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Client Side Pagination in TreeGrid - jQuery EasyUI Demo</title>
    <title>Editable TreeGrid - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="src/css/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="src/css/themes/default/icon.css">
	<link rel="stylesheet" type="text/css" href="src/css/themes/default/demo.css">
	<script type="text/javascript" src="src/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="src/js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="src/js/jslib/treetale-pager.js"></script>
</head>
<body>
    <table id="tg" title="Client Side Pagination" style="width:700px;height:250px"
            data-options="
                iconCls: 'icon-ok',
                rownumbers: true,
                animate: true,
                collapsible: true,
                fitColumns: true,
                url: 'treegrid_data2.json',
                method: 'get',
                idField: 'id',
                treeField: 'name',
                pagination: true,
                pageSize: 2,
                pageList: [2,5,10]
            ">
        <thead>
            <tr>
                <th data-options="field:'name',width:180">Task Name</th>
                <th data-options="field:'persons',width:60,align:'right'">Persons</th>
                <th data-options="field:'begin',width:80">Begin Date</th>
                <th data-options="field:'end',width:80">End Date</th>
                <th data-options="field:'progress',width:120,formatter:formatProgress">Progress</th>
            </tr>
        </thead>
    </table>
</body>
</html>