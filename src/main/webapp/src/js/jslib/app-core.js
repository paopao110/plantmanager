/**
 * 
 */
$(document).ready(function(){
	var menuid = $.cookie("menuid");
	if(menuid==undefined || menuid ==null){
		menuid=0;
	}
	linkhref(menuid);
	$(".nav li").each(function() {
		if($(this).index()==menuid){
			$(this).parent().find('li.seleli').removeClass('seleli');
			$(this).addClass("seleli");
		}
	});
	$(".nav li").click(function(){
		$(this).parent().find('li.seleli').removeClass('seleli');
		$(this).addClass("seleli");
		var menuchangeid=$(this).index();
		linkhref(menuchangeid);
		$.cookie("menuid",menuchangeid,{ expires: 1 });
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