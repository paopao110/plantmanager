/**
 * 
 */
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
})
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