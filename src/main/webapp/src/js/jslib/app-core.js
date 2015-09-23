/**
 * 
 */
$(document).ready(function(){
	linkhref(0);
	$(".nav li").click(function(){
		$(this).parent().find('li.seleli').removeClass('seleli');
		$(this).addClass("seleli");
		linkhref($(this).index());
//		console.info($(this).index());
	});
	
});

function linkhref(type){
	$.ajax({
		type:"POST",
		url:"admin/linkplantmanager.html",
		data:{'type':type},
		dataType:'html',
		success : function(obj) {
			$(".mainbody").html(obj);
		},
		async : false
	});
}

function linkSubHerf(type){
	$.ajax({
		type:"POST",
		url:"admin/linkSubBodyPaper.html",
		data:{'type':type},
		dataType:'html',
		success : function(obj) {
			$(".subbody").html(obj);
		},
		async : false
	});
}