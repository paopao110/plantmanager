<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="src/css/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="src/css/themes/default/icon.css">
<link rel="stylesheet" type="text/css" href="src/css/themes/default/demo.css">
<script type="text/javascript" src="src/js/jslib/treetale-pager.js"></script>

<div class="rig_lm01">
	<div class="title">
		<img src="images/listicon.jpg" class="icon" style="padding-top: 13px;">
		<h2>植物分类信息</h2>
		<span class="red_numb">2</span>
	</div>
	<div class="detail">
		<table id="tg" title="植物分类信息" style="width:100%;height:500px"
            data-options="
                iconCls: 'icon-ok',
                rownumbers: true,
                animate: true,
                collapsible: true,
                fitColumns: true,
                toolbar:toolbar,
                onContextMenu: onContextMenu,
                url: 'getAllPlantCategory',
                method: 'get',
                idField: 'id',
                treeField: 'categoryid',
                pagination: true,
                pageSize: 10,
                pageList: [5,10,15,20]">
	        <thead>
	            <tr>
	                <th data-options="field:'categoryid',width:80,editor:'text'">分类编号</th>
	                <th data-options="field:'categoryname',width:60,editor:'text'">类别名称</th>
	                <!-- <th data-options="field:'categorylevel',width:80,editor:'numberbox'">分类等级</th> -->
	                <th data-options="field:'categorylevel',width:80">分类等级</th>
	                <!-- <th data-options="field:'categoryremark',width:80,editor:'text'">备注</th> -->
	                <th data-options="field:'categoryremark',width:80">备注</th>
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
	</div>
</div>