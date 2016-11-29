<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>">
	<!-- 下拉框 -->
	<link rel="stylesheet" href="static/ace/css/chosen.css" />
	<!-- jsp文件头和头部 -->
	<%@ include file="../../system/index/top.jsp"%>
	<!-- 日期框 -->
	<link rel="stylesheet" href="static/ace/css/datepicker.css" />
</head>
<body class="no-skin">
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<!-- /section:basics/sidebar -->
	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
					
					<form action="stopmanage/${msg }.do" name="Form" id="Form" method="post" enctype="multipart/form-data">
						<input type="hidden" name="STOPMANAGE_ID" id="STOPMANAGE_ID" value="${pd.STOPMANAGE_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">店主:</td>
								<td><input type="text" name="OWNER" id="OWNER" value="${pd.OWNER}" maxlength="100" placeholder="这里输入店主" title="店主" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">店铺名:</td>
								<td><input type="text" name="STOPNAME" id="STOPNAME" value="${pd.STOPNAME}" maxlength="255" placeholder="这里输入店铺名" title="店铺名" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">描述:</td>
								<td><input type="text" name="INTRODUCTION" id="INTRODUCTION" value="${pd.INTRODUCTION}" maxlength="255" placeholder="这里输入描述" title="描述" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">地址:</td>
								<td><input type="text" name="ADDRESS" id="ADDRESS" value="${pd.ADDRESS}" maxlength="255" placeholder="这里输入地址" title="地址" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">电话:</td>
								<td><input type="text" name="PHONE" id="PHONE" value="${pd.PHONE}" maxlength="20" placeholder="这里输入电话" title="电话" style="width:98%;"/></td>
							</tr>

							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">图标</td>
								<td id="imgcontext">
									<div style="width:98%;padding: 10px;border: 1px solid #ccc;">
										<c:choose>
											<c:when test="${pd.LOGO!=null}">
												<img style="height: 300px;" src="${pageContext.request.contextPath}${pd.LOGO}"/></br></br>
												<span style="padding-left: 20px">
											 	  <input class="btn btn-primary"  type="button" name="newImg" id="newImg" value="重新选择"/>
												</span>
											</c:when>
											<c:otherwise>
												<input type="file" id="image" name="image"/>
											</c:otherwise>
										</c:choose>
									</div>
								</td>
							</tr>

							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">店内图</td>
								<td id="imgcontext2">
									<div style="width:98%;padding: 10px;border: 1px solid #ccc;">
										<c:choose>
											<c:when test="${pd.STOPIMG!=null}">
												<img style="height: 300px;" src="${pageContext.request.contextPath}${pd.STOPIMG}"/></br></br>
												<span style="padding-left: 20px">
											 	  <input class="btn btn-primary"  type="button" name="newImg2" id="newImg2" value="重新选择"/>
												</span>
											</c:when>
											<c:otherwise>
												<input type="file" id="image2" name="image2"/>
											</c:otherwise>
										</c:choose>
									</div>
								</td>
							</tr>
							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
								</td>
							</tr>
						</table>
						</div>
						<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
					</form>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->
</div>
<!-- /.main-container -->


	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		//保存
		function save(){
			if($("#OWNER").val()==""){
				$("#OWNER").tips({
					side:3,
		            msg:'请输入店主',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#OWNER").focus();
			return false;
			}
			if($("#STOPNAME").val()==""){
				$("#STOPNAME").tips({
					side:3,
		            msg:'请输入店铺名',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#STOPNAME").focus();
			return false;
			}
			if($("#INTRODUCTION").val()==""){
				$("#INTRODUCTION").tips({
					side:3,
		            msg:'请输入描述',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#INTRODUCTION").focus();
			return false;
			}
			if($("#ADDRESS").val()==""){
				$("#ADDRESS").tips({
					side:3,
		            msg:'请输入地址',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ADDRESS").focus();
			return false;
			}
			if($("#PHONE").val()==""){
				$("#PHONE").tips({
					side:3,
		            msg:'请输入电话',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PHONE").focus();
			return false;
			}
			if($("#image").val()==""){
				$("#image").tips({
					side:3,
		            msg:'请选择图标',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LOGO").focus();
			return false;
			}
			if($("#image2").val()==""){
				$("#image2").tips({
					side:3,
		            msg:'请选择店内图',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#STOPIMG").focus();
			return false;
			}
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		function fileChange(){
			//检测上传文件的类型
			var videoName = $("#image").val();
			//获取"."所在的位置
			var idx = videoName.lastIndexOf(".");
			if( idx != -1 ){
				//获取文件的后缀名
				var ext = videoName.substr(idx+1).toUpperCase();
				//将后缀名变成小写
				ext = ext.toLowerCase( );
				if(ext != 'jpg' && ext != 'png' && ext != 'jpeg' && ext != 'gif' && ext != 'bmp'){
					$("#image").tips({
						side:3,
						msg:'上传的图片格式错误',
						bg:'#AE81FF',
						time:2
					});
					return false;
				} else {
					$("#Form").submit();
				}
			} else {
				$("#image").tips({
					side:3,
					msg:'上传的图片格式错误',
					bg:'#AE81FF',
					time:2
				});
				return false;
			}
		}
		$("#newImg").click(function(imgnumber){
//            alert("重新选择");
			$("#imgcontext").empty();
			$("#imgcontext").append(" <input type='file' id='image' name='image'/>"+
					"<input  type='text' hidden='hidden' name='imgChange' id='imgChange' value='true'/>");
		});
		function fileChange2(){
			//检测上传文件的类型
			var videoName = $("#image2").val();
			//获取"."所在的位置
			var idx = videoName.lastIndexOf(".");
			if( idx != -1 ){
				//获取文件的后缀名
				var ext = videoName.substr(idx+1).toUpperCase();
				//将后缀名变成小写
				ext = ext.toLowerCase( );
				if(ext != 'jpg' && ext != 'png' && ext != 'jpeg' && ext != 'gif' && ext != 'bmp'){
					$("#image2").tips({
						side:3,
						msg:'上传的图片格式错误',
						bg:'#AE81FF',
						time:2
					});
					return false;
				} else {
					$("#Form").submit();
				}
			} else {
				$("#image2").tips({
					side:3,
					msg:'上传的图片格式错误',
					bg:'#AE81FF',
					time:2
				});
				return false;
			}
		}
		$("#newImg2").click(function(imgnumber){
//            alert("重新选择");
			$("#imgcontext2").empty();
			$("#imgcontext2").append(" <input type='file' id='image2' name='image2'/>"+
					"<input  type='text' hidden='hidden' name='imgChange2' id='imgChange2' value='true'/>");
		});
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		</script>
</body>
</html>