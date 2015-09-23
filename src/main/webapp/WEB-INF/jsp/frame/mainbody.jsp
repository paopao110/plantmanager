<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
$(document).ready(function(){
	$(".rig_nav").on("click",'li',function(){
		$(this).parent().find('li.rig_seleli').removeClass('rig_seleli');
		$(this).addClass("rig_seleli");
		//console.log($(".rig_seleli a").attr("data-url"));
		linkSubHerf($(".rig_seleli a").attr("data-url"));
	});
	
	var type = $("#pagertype").val();
	if(type==null||type==undefined||type=="1"){
		linkSubHerf("11");
	}else{
		if(type=="2"){
			//done
		}
	}
	
});
</script>
<div class="currmenu">
	<ul class="rig_nav">
		<!-- <li class="rig_seleli"><a href="#">当前</a><span> x </span></li> -->
		<c:if test="${type=='1'}">
			<li class="rig_seleli"><a href="#" data-url="11">植物分类</a></li>
			<li><a href="#" data-url="12">植物信息</a></li>
		</c:if>
		<c:if test="${type=='2'}">
			<li class="rig_seleli"><a href="#" data-url="21">图片校验</a></li>
			<li><a href="#" data-url="22">图片编辑</a></li>
		</c:if>
	</ul>
</div>
<input type="hidden" value="${type}" id="pagertype"/>
<div class="adtip">
	<div class="tip">
		<p class="goom">早上好，小雅！${type}</p>
		<p>
			您目前有<span>15</span>条待办，<span>1</span>条考勤异常，<span>2</span>条通知！
		</p>
	</div>
	<div class="adv">
		<p>公司统一公告在这边展示</p>
		<span> x </span>
	</div>
</div>
<div class="subbody"></div>
