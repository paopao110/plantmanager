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
$(function() {
	var pager = $('#tg').datagrid().datagrid('getPager'); // get the pager of
															// datagrid
	pager.pagination({
		buttons : [  {
			iconCls : 'icon-add',
			handler : function() {
				append();
			}
		}, {
			iconCls : 'icon-edit',
			handler : function() {
				edit();
			}
		}, {
			iconCls : 'icon-save',
			handler : function() {
				save();
			}
		}, {
			iconCls : 'icon-cancel',
			handler : function() {
				cancel();
			}
		} ]
	});
});
(function($){
            function pagerFilter(data){
                if ($.isArray(data)){    // is array  
                    data = {  
                        total: data.length,  
                        rows: data  
                    }  
                }
                var dg = $(this);  
                var state = dg.data('treegrid');
                var opts = dg.treegrid('options');  
                var pager = dg.treegrid('getPager');  
                pager.pagination({  
                    onSelectPage:function(pageNum, pageSize){  
                        opts.pageNumber = pageNum;  
                        opts.pageSize = pageSize;  
                        pager.pagination('refresh',{  
                            pageNumber:pageNum,  
                            pageSize:pageSize  
                        });  
                        dg.treegrid('loadData',state.allRows);  
                    }  
                });  
                opts.pageNumber = pager.pagination('options').pageNumber || 1;
                if (!state.allRows){
                    state.allRows = data.rows;
                }
                var topRows = [];
                var childRows = [];
                $.map(state.allRows, function(row){
                    row._parentId ? childRows.push(row) : topRows.push(row);
                });
                data.total = topRows.length;
                var start = (opts.pageNumber-1)*parseInt(opts.pageSize);  
                var end = start + parseInt(opts.pageSize);  
                data.rows = $.extend(true,[],topRows.slice(start, end).concat(childRows));
                return data;
            }
 
            var appendMethod = $.fn.treegrid.methods.append;
            var removeMethod = $.fn.treegrid.methods.remove;
            var loadDataMethod = $.fn.treegrid.methods.loadData;
            $.extend($.fn.treegrid.methods, {
                clientPaging: function(jq){
                    return jq.each(function(){
                        var state = $(this).data('treegrid');
                        var opts = state.options;
                        opts.loadFilter = pagerFilter;
                        var onBeforeLoad = opts.onBeforeLoad;
                        opts.onBeforeLoad = function(row,param){
                            state.allRows = null;
                            return onBeforeLoad.call(this, row, param);
                        }
                        $(this).treegrid('loadData', state.data);
                        if (opts.url){
                            $(this).treegrid('reload');
                        }
                    });
                },
                loadData: function(jq, data){
                    jq.each(function(){
                        $(this).data('treegrid').allRows = null;
                    });
                    return loadDataMethod.call($.fn.treegrid.methods, jq, data);
                },
                append: function(jq, param){
                    return jq.each(function(){
                        var state = $(this).data('treegrid');
                        if (state.options.loadFilter == pagerFilter){
                            $.map(param.data, function(row){
                                row._parentId = row._parentId || param.parent;
                                state.allRows.push(row);
                            });
                            $(this).treegrid('loadData', state.allRows);
                        } else {
                            appendMethod.call($.fn.treegrid.methods, $(this), param);
                        }
                    })
                },
                remove: function(jq, id){
                    return jq.each(function(){
                        if ($(this).treegrid('find', id)){
                            removeMethod.call($.fn.treegrid.methods, $(this), id);
                        }
                        var state = $(this).data('treegrid');
                        if (state.options.loadFilter == pagerFilter){
                            for(var i=0; i<state.allRows.length; i++){
                                if (state.allRows[i][state.options.idField] == id){
                                    state.allRows.splice(i,1);
                                    break;
                                }
                            }
                            $(this).treegrid('loadData', state.allRows);
                        }
                    })
                },
                getAllRows: function(jq){
                    return jq.data('treegrid').allRows;
                }
            });
 
        })(jQuery);
function formatProgress(value) {
	if (value) {
		var s = '<div style="width:100%;border:1px solid #ccc">'
				+ '<div style="width:' + value
				+ '%;background:#cc0000;color:#fff">' + value + '%' + '</div>'
		'</div>';
		return s;
	} else {
		return '';
	}
}
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
		var rows = t.treegrid('getChildren');
		for (var i = 0; i < rows.length; i++) {
			var p = parseInt(rows[i].persons);
			if (!isNaN(p)) {
				persons += p;
			}
		}
		//var frow = t.treegrid('getFooterRows')[0];
		//frow.persons = persons;
		t.treegrid('reloadFooter');
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
var idIndex = 100;
function append(){
	idIndex++;
	var d1 = new Date();
	var d2 = new Date();
	d2.setMonth(d2.getMonth()+1);
	var node = $('#tg').treegrid('getSelected');
	$('#tg').treegrid('append',{
		parent: node.id,
		data: [{
			id: idIndex,
			name: 'New Task'+idIndex,
			persons: parseInt(Math.random()*10),
			grade: parseInt(Math.random()*10)
			/*,
			begin: $.fn.datebox.defaults.formatter(d1),
			end: $.fn.datebox.defaults.formatter(d2),
			progress: parseInt(Math.random()*100)*/
		}]
	})
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
	}
}
function expand(){
	var node = $('#tg').treegrid('getSelected');
	if (node){
		$('#tg').treegrid('expand', node.id);
	}
}