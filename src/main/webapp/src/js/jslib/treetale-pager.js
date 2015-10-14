/**
 * 
 */
var toolbar = [{
            text:'添加',
            iconCls:'icon-add',
            handler:function(){append();}
        },{
            text:'编辑',
            iconCls:'icon-edit',
            handler:function(){edit();}
        },'-',{
            text:'保存',
            iconCls:'icon-save',
            handler:function(){save();}
        },{
            text:'取消',
            iconCls:'icon-cancel',
            handler:function(){cancel();}
        }];
(function($) {
	function pagerFilter(data) {
		if ($.isArray(data)) { // is array  
			data = {
				total : data.length,
				rows : data
			}
		}
		var dg = $(this);
		var state = dg.data('treegrid');
		var opts = dg.treegrid('options');
		var pager = dg.treegrid('getPager');
		pager.pagination({
			onSelectPage : function(pageNum, pageSize) {
				opts.pageNumber = pageNum;
				opts.pageSize = pageSize;
				pager.pagination('refresh', {
					pageNumber : pageNum,
					pageSize : pageSize
				});
				dg.treegrid('loadData', state.allRows);
			}
		});
		opts.pageNumber = pager.pagination('options').pageNumber || 1;
		if (!state.allRows) {
			state.allRows = data.rows;
		}
		var topRows = [];
		var childRows = [];
		$.map(state.allRows, function(row) {
			row._parentId ? childRows.push(row) : topRows.push(row);
		});
		data.total = topRows.length;
		var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
		var end = start + parseInt(opts.pageSize);
		data.rows = $.extend(true, [], topRows.slice(start, end).concat(
				childRows));
		return data;
	}

	var appendMethod = $.fn.treegrid.methods.append;
	var removeMethod = $.fn.treegrid.methods.remove;
	var loadDataMethod = $.fn.treegrid.methods.loadData;
	$.extend($.fn.treegrid.methods, {
		clientPaging : function(jq) {
			return jq.each(function() {
				var state = $(this).data('treegrid');
				var opts = state.options;
				opts.loadFilter = pagerFilter;
				var onBeforeLoad = opts.onBeforeLoad;
				opts.onBeforeLoad = function(row, param) {
					state.allRows = null;
					return onBeforeLoad.call(this, row, param);
				}
				$(this).treegrid('loadData', state.data);
				if (opts.url) {
					$(this).treegrid('reload');
				}
			});
		},
		loadData : function(jq, data) {
			jq.each(function() {
				$(this).data('treegrid').allRows = null;
			});
			return loadDataMethod.call($.fn.treegrid.methods, jq, data);
		},
		append : function(jq, param) {
			return jq.each(function() {
				var state = $(this).data('treegrid');
				if (state.options.loadFilter == pagerFilter) {
					$.map(param.data, function(row) {
						row._parentId = row._parentId || param.parent;
						state.allRows.push(row);
					});
					$(this).treegrid('loadData', state.allRows);
				} else {
					appendMethod.call($.fn.treegrid.methods, $(this), param);
				}
			})
		},
		remove : function(jq, id) {
			return jq.each(function() {
				if ($(this).treegrid('find', id)) {
					removeMethod.call($.fn.treegrid.methods, $(this), id);
				}
				var state = $(this).data('treegrid');
				if (state.options.loadFilter == pagerFilter) {
					for (var i = 0; i < state.allRows.length; i++) {
						if (state.allRows[i][state.options.idField] == id) {
							state.allRows.splice(i, 1);
							break;
						}
					}
					$(this).treegrid('loadData', state.allRows);
				}
			})
		},
		getAllRows : function(jq) {
			return jq.data('treegrid').allRows;
		}
	});

})(jQuery);

$(function() {
	$('#tg').treegrid().treegrid('clientPaging');  
})

var editingId;
function edit() {
	if (editingId != undefined) {
		$('#tg').treegrid('select', editingId);
		return;
	}
	var row = $('#tg').treegrid('getSelected');
	if (row) {
		editingId = row.id
		$('#tg').treegrid('beginEdit', editingId);
	}
}
function save() {
	if (editingId != undefined) {
		var t = $('#tg');
		t.treegrid('endEdit', editingId);
		editingId = undefined;
		var persons = 0;
		var row = $('#tg').treegrid('getSelected');
		if(row!=null){
			$.ajax({
				type:"POST",
				data:{"id":row.id,"categoryid":row.categoryid,"categoryname":row.categoryname,
					"categorylevel":row.categorylevel},
				url:"updatePlantCategoryInfo",
				success : function(obj) {
					if(obj){
						console.log(obj);
					}else{
						
					}
				},
				async : false
			});
		}
	}
}
function cancel() {
	if (editingId != undefined) {
		$('#tg').treegrid('cancelEdit', editingId);
		editingId = undefined;
	}
}

function onContextMenu(e,row){
	e.preventDefault();
	if(row==null){
		return;
	}
	$(this).treegrid('select', row.id);
	$('#mm').menu('show',{
		left: e.pageX,
		top: e.pageY
	});
}

function append(){
	var index = -1;
	$.ajax({
		type:"POST",
		url:"getLastOrderId",
		success : function(obj) {
			index = obj;
		},
		async : false
	});
	var node = $('#tg').treegrid('getSelected');
	if(node!=null&&index!=-1){
		console.log(node);
		$('#tg').treegrid('append',{
			parent: node.id,
			data: [{
				id: index,
				categoryid: '分类编号'+index,
				categoryname: '类别名称'+parseInt(Math.random()*10),
				categorylevel: node.categorylevel+1,
				categoryremark: returnremark(node.categorylevel+1)
			}]
		})
		$.ajax({
			type:"POST",
			url:"insertPlantCategoryInfo",
			data:{"categoryid":'分类编号'+index,"categoryname":'类别名称'+parseInt(Math.random()*10),
				"categorylevel":node.categorylevel+1,"id":node.id},
			success : function(obj) {
				console.log(obj);
			},
			async : false
		});
	}else if(node==null){
		$('#tg').treegrid('append',{
			parent: 0,
			data: [{
				id: index,
				categoryid: '分类编号'+index,
				categoryname: '类别名称'+parseInt(Math.random()*10),
				categorylevel: 0,
				categoryremark: returnremark(0)
			}]
		})
		$.ajax({
			type:"POST",
			url:"insertPlantCategoryInfo",
			data:{"categoryid":'分类编号'+index,"categoryname":'类别名称'+parseInt(Math.random()*10),
				"categorylevel":0,"id":0},
			success : function(obj) {
				console.log(obj);
			},
			async : false
		});
	}
}

function returnremark(categorylevel){
	if(categorylevel==undefined){
		categorylevel=0;
	}
	switch(categorylevel){
		case 0:return "顶级分类";
		case 1:return "一级分类";
		case 2:return "二级分类";
		case 3:return "三级分类";
		case 4:return "四级分类";
		case 5:return "五级分类";
		case 6:return "六级分类";
		case 7:return "七级分类";
		case 8:return "八级分类";
		case 9:return "九级分类";
		default:
			return "未知分类";
	}
}

function removeIt(){
	var node = $('#tg').treegrid('getSelected');
	if (node){
		$('#tg').treegrid('remove', node.id);
	}
}
function collapse(){
	var node = $('#tg').treegrid('getSelected');
	if (node){
		$('#tg').treegrid('collapse', node.id);
		$.ajax({
			type:"POST",
			data:{"id":node.id,"state":"closed"},
			url:"updatePlantCategoryInfo",
			success : function(obj) {
				if(obj){
					console.log(obj);
				}else{
					
				}
			},
			async : false
		});
	}
}
function expand(){
	var node = $('#tg').treegrid('getSelected');
	if (node){
		$('#tg').treegrid('expand', node.id);
		$.ajax({
			type:"POST",
			data:{"id":node.id,"state":null},
			url:"updatePlantCategoryInfo",
			success : function(obj) {
				if(obj){
					console.log(obj);
				}else{
					
				}
			},
			async : false
		});
	}
}
function uploadSubCategory(){
	var node = $('#tg').treegrid('getSelected');
//	alert(node.id);
	$.ajaxFileUpload({  
        url:'uploadSubCategoryFile',  
        secureuri:false,  
        fileElementId:'uploadfile',//file标签的id  
        dataType: 'json',//返回数据的类型  
        type : 'post',
        data:{id:node.id,categoryid:node.categoryid,categorylevel:node.categorylevel},//一同上传的数据  
        success: function (data, status) {  
            //把图片替换  
            if(data){
            	$('#dlg').dialog('close');
            }
        },  
        error: function (data, status, e) {  
            alert(e);  
        }  
    });
}