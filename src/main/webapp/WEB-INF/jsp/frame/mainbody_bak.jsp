<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
$(document).ready(function(){
	$(".rig_nav").on("click",'li',function(){
		$(this).parent().find('li.rig_seleli').removeClass('rig_seleli');
		$(this).addClass("rig_seleli");
	});
	
});
</script>
	<div class="currmenu">
      <ul class="rig_nav">
        <!-- <li class="rig_seleli"><a href="#">当前</a><span> x </span></li> -->
        <c:if test="${type=='1'}">
        <li class="rig_seleli"><a href="#">植物分类</a></li>
        <li><a href="#">植物信息</a></li>
        </c:if>
        <c:if test="${type=='2'}">
        <li class="rig_seleli"><a href="#">图片校验</a></li>
        <li><a href="#">图片编辑</a></li>
        </c:if>
      </ul>
    </div>
    <div class="adtip">
      <div class="tip">
        <p class="goom">早上好，小雅！${type}</p>
        <p>您目前有<span>15</span>条待办，<span>1</span>条考勤异常，<span>2</span>条通知！</p>
      </div>
      <div class="adv">
        <p>公司统一公告在这边展示</p>
        <span> x </span> </div>
    </div>
    <div class="rig_link">
      <ul>
        <li><a href="#"><img src="images/img_01.jpg" alt="" title=""></a></li>
        <li><a href="#"><img src="images/img_02.jpg" alt="" title=""></a></li>
        <li><a href="#"><img src="images/img_03.jpg" alt="" title=""></a></li>
        <li><a href="#"><img src="images/img_04.jpg" alt="" title=""></a></li>
      </ul>
    </div>
    <div class="rig_lm01">
      <div class="title"><img src="images/listicon.jpg" class="icon" style="padding-top:13px;">
        <h2>通知</h2>
        <span class="red_numb">2</span></div>
      <div class="detail">
        <div class="dat01"> <span class="datti"><span>20</span> <br />
          <span class="jan">jan</span></span> <span class="sqdeta"><img src="images/bs_03.jpg"> 您想王晓磊提交的换班申请已经通过，交换班次时间为2014-02-09  09:00-18:00，请按时上班！</span>
          <p class="linkbut"><a href="#">加入日历</a><a href="#">查看</a><a href="#">知道了</a></p>
        </div>
        <div class="dat02"> <span class="datti"><span>20</span> <br />
          <span class="jan">jan</span></span> <span class="sqdeta"><img src="images/bs_04.jpg"> 您提交的请假申请未审批通过</span>
          <p class="linkbut"><a href="#">查看</a><a href="#">知道了</a></p>
        </div>
      </div>
    </div>
    <div class="rig_lm02">
      <div class="title"><img src="images/listicon.jpg" class="icon" style="padding-top:13px;">
        <h2>绩效打分进度</h2>
      </div>
      <div class="detail">
        <div class="det_inner">
          <div class="jd"><img src="images/jd.jpg" alt="" title=""></div>
          <div class="bs">
            <p><img src="images/bs_01.jpg" alt="" title=""> 已完成打分</p>
            <p><img src="images/bs_02.jpg" alt="" title=""> 未完成打分和异常打分</p>
          </div>
          <div class="scordeti">
            <ul>
              <li>
                <p class="ywc">1120</p>
                <h3>已完成打分人数</h3>
              </li>
              <li>
                <p class="wwc">11</p>
                <h3>未打分人数</h3>
              </li>
              <li>
                <p class="ycd">2</p>
                <h3>异常打分人数</h3>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="rig_lm03">
      <div class="title"><img src="images/listicon.jpg" class="icon" style="padding-top:13px;">
        <h2>待办事项</h2>
      </div>
      <div class="detail">
        <div class="inner03">
          <div id="tabCot_product" class="zhutitab">
            <div class="tabContainer">
              <ul class="tabHead" id="tabCot_product-li-currentBtn-">
                <li class="currentBtn"><a href="javascript:void(0)" title="绩效考核" rel="1">绩效考核</a><span class="grey_numb">12</span></li>
                <li ><a href="javascript:void(0)" title="人事考核" rel="2">人事考核</a><span class="red_numb">2</span></li>
                <li ><a href="javascript:void(0)" title="TAB名称" rel="3">TAB名称</a><span class="red_numb">5</span></li>
              </ul>
              <p class="shent"><span>Show entries: </span>
                <input style="width:30px;" type="text" value="10">
                <img src="images/sz.jpg" class="icon" style=""></p>
              <div class="clear"></div>
            </div>
            <div id="tabCot_product_1" class="tabCot" >
              <table class="tabindex" width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <th width="10%" bgcolor="#f8f8f8" scope="col"><div align="center">照片</div></th>
                  <th width="21%" bgcolor="#f8f8f8" scope="col"><span class="titlab">事项名称</span><span class="xila">&or;</span></th>
                  <th width="22%" bgcolor="#f8f8f8" scope="col"><span class="titlab">创建时间</span><span class="xila">&or;</span></th>
                  <th width="21%" bgcolor="#f8f8f8" scope="col"><span class="titlab">当前处理人</span><span class="xila">&or;</span></th>
                  <th width="7%" bgcolor="#f8f8f8" scope="col"><span class="titlab">状态</span><span class="xila">&or;</span></th>
                  <th width="19%" bgcolor="#f8f8f8" scope="col">操作</th>
                </tr>
                <tr>
                  <td bgcolor="#FFFFFF"><div align="center"><img src="images/tx.jpg"></div></td>
                  <td class="datacol" bgcolor="#FFFFFF">8月份绩效考核打分</td>
                  <td bgcolor="#FFFFFF">Feb 12,2012  12:28</td>
                  <td bgcolor="#FFFFFF">wangqiang-已审批</td>
                  <td class="yccol" bgcolor="#FFFFFF">异常</td>
                  <td class="czcol" bgcolor="#FFFFFF"><a href="#">提醒处理</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">查看</a></td>
                </tr>
                <tr>
                  <td bgcolor="#f8f8f8"><div align="center"><img src="images/tx.jpg"></div></td>
                  <td class="datacol" bgcolor="#f8f8f8">8月份绩效考核打分</td>
                  <td bgcolor="#f8f8f8">Feb 12,2012  12:28</td>
                  <td bgcolor="#f8f8f8">wangqiang-已审批</td>
                  <td class="yccol" bgcolor="#f8f8f8">异常</td>
                  <td class="czcol" bgcolor="#f8f8f8"><a href="#">提醒处理</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">查看</a></td>
                </tr>
                <tr>
                  <td bgcolor="#FFFFFF"><div align="center"><img src="images/tx.jpg"></div></td>
                  <td class="datacol" bgcolor="#FFFFFF">8月份绩效考核打分</td>
                  <td bgcolor="#FFFFFF">Feb 12,2012  12:28</td>
                  <td bgcolor="#FFFFFF">wangqiang-已审批</td>
                  <td class="yccol" bgcolor="#FFFFFF">异常</td>
                  <td class="czcol" bgcolor="#FFFFFF"><a href="#">提醒处理</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">查看</a></td>
                </tr>
                <tr>
                  <td bgcolor="#f8f8f8"><div align="center"><img src="images/tx.jpg"></div></td>
                  <td class="datacol" bgcolor="#f8f8f8">8月份绩效考核打分</td>
                  <td bgcolor="#f8f8f8">Feb 12,2012  12:28</td>
                  <td bgcolor="#f8f8f8">wangqiang-已审批</td>
                  <td class="waitcol" bgcolor="#f8f8f8">等待审批</td>
                  <td class="czcol" bgcolor="#f8f8f8"><a href="#">通过</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">查看</a></td>
                </tr>
                <tr>
                  <td bgcolor="#FFFFFF"><div align="center"><img src="images/tx.jpg"></div></td>
                  <td class="datacol" bgcolor="#FFFFFF">8月份绩效考核打分</td>
                  <td bgcolor="#FFFFFF">Feb 12,2012  12:28</td>
                  <td bgcolor="#FFFFFF">wangqiang-已审批</td>
                  <td class="waitcol" bgcolor="#f8f8f8">等待审批</td>
                  <td class="czcol" bgcolor="#f8f8f8"><a href="#">通过</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">查看</a></td>
                </tr>
                <tr>
                  <td bgcolor="#f8f8f8"><div align="center"><img src="images/tx.jpg"></div></td>
                  <td class="datacol" bgcolor="#f8f8f8">8月份绩效考核打分</td>
                  <td bgcolor="#f8f8f8">Feb 12,2012  12:28</td>
                  <td bgcolor="#f8f8f8">wangqiang-已审批</td>
                  <td class="waitcol" bgcolor="#f8f8f8">等待审批</td>
                  <td class="czcol" bgcolor="#f8f8f8"><a href="#">通过</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">查看</a></td>
                </tr>
                <tr>
                  <td bgcolor="#FFFFFF"><div align="center"><img src="images/tx.jpg"></div></td>
                  <td class="datacol" bgcolor="#FFFFFF">8月份绩效考核打分</td>
                  <td bgcolor="#FFFFFF">Feb 12,2012  12:28</td>
                  <td bgcolor="#FFFFFF">wangqiang-已审批</td>
                  <td class="waitcol" bgcolor="#f8f8f8">等待审批</td>
                  <td class="czcol" bgcolor="#f8f8f8"><a href="#">通过</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">查看</a></td>
                </tr>
                <tr>
                  <td bgcolor="#f8f8f8"><div align="center"><img src="images/tx.jpg"></div></td>
                  <td class="datacol" bgcolor="#f8f8f8">8月份绩效考核打分</td>
                  <td bgcolor="#f8f8f8">Feb 12,2012  12:28</td>
                  <td bgcolor="#f8f8f8">wangqiang-已审批</td>
                  <td class="waitcol" bgcolor="#f8f8f8">等待审批</td>
                  <td class="czcol" bgcolor="#f8f8f8"><a href="#">通过</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">查看</a></td>
                </tr>
                <tr>
                  <td bgcolor="#FFFFFF"><div align="center"><img src="images/tx.jpg"></div></td>
                  <td class="datacol" bgcolor="#FFFFFF">8月份绩效考核打分</td>
                  <td bgcolor="#FFFFFF">Feb 12,2012  12:28</td>
                  <td bgcolor="#FFFFFF">wangqiang-已审批</td>
                  <td class="waitcol" bgcolor="#f8f8f8">等待审批</td>
                  <td class="czcol" bgcolor="#f8f8f8"><a href="#">通过</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">查看</a></td>
                </tr>
              </table>
              <div class="fanye">
                <p class="fytip">Showing 1 to 10 of 12 entries - <a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a> - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></p>
                <div class="yem">
                  <ul>
                    <li><a href="#">First</a></li>
                    <li><a href="#">&lt;</a></li>
                    <li class="sellify"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">&gt;</a></li>
                    <li><a href="#">Last</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div id="tabCot_product_2" class="tabCot"  style="display: none;"> 2222222222 </div>
            <div id="tabCot_product_3" class="tabCot"  style="display: none;"> 3333333333 </div>
          </div>
        </div>
      </div>
    </div>
  </div>