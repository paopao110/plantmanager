/**
 * 
 */
$(function(){
	$(".login_nei input").focus(function(){
		var tabindex = $(this).attr("tabindex");
		$(".loginError").hide();
		$(".loginEmpty").hide();
		if(tabindex==0){
			$(".input-panel-p").removeClass('input-focus');
			$(".input-panel-n").addClass("input-focus");
		}else if(tabindex==1){
			$(".input-panel-n").removeClass('input-focus');
			$(".input-panel-p").addClass("input-focus");
		}else{
			$(".input-panel-p").removeClass('input-focus');
			$(".input-panel-n").removeClass('input-focus');
		}
	});

	$(".submit-btn").click(function(){
		var accountname = $(".input-panel-n input").val();
		var password = $(".input-panel-p input").val();
		var checkflag = $(".remember-panel input[type='checkbox']").is(":checked");
		$.cookie("accountname",accountname);
		if(checkflag==true){
			$.cookie("password",password);
			$.cookie("remember",true);
		}else{
			$.cookie("password",null);
			$.cookie("remember",false);
		}
		login(accountname,password);
	});
	var rememberflag = $.cookie("remember");
	$(".input-panel-n input").val($.cookie("accountname"));
	if(rememberflag=="true"){
		$(".input-panel-p input").val($.cookie("password"))
		$("[name = rememberMe]:checkbox").attr("checked", true);
	}else{
		$("[name = rememberMe]:checkbox").attr("checked", false);
	}
	$(document).keydown(function(event) {
		if (event.keyCode == 13) {
			$(".submit-btn").click();
		}
	}); 
})

function login(accountname,password){
	if(accountname==null||accountname==''||accountname==undefined){
		$(".loginEmpty").show().html("用户名不能为空");
		return;
	}else{
		if(password==null||password==''||password==undefined){
			$(".loginEmpty").show().html("密码不能为空");
			return;
		}
	}
}