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
	<script type="text/javascript" charset="utf-8" src="static/ueditor1.4.3/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="static/ueditor1.4.3/ueditor.all.min.js"> </script>
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

					<form action="activitymanage/${msg }.do" name="Form" id="Form" method="post" enctype="multipart/form-data">
						<input type="hidden" name="ACTIVITYMANAGE_ID" id="ACTIVITYMANAGE_ID" value="${pd.ACTIVITYMANAGE_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
								<table id="table_report" class="table table-striped table-bordered table-hover">
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">标题:</td>
                                        <td><input type="text" name="TITLE" id="TITLE" value="${pd.TITLE}" maxlength="255" placeholder="这里输入标题" title="标题" style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">描述:</td>
										<td>
											<!-- 加载编辑器的容器 -->
											<script id="editor" name="content" type="text/plain"  style="width:850px">${pd.DESCRIBES}</script>
											<!-- 实例化编辑器 -->
											<script type="text/javascript">
												var ue = UE.getEditor('editor');
											</script>
											<input type="text" name="DESCRIBES" id="DESCRIBES" value="${pd.DESCRIBES}" hidden="true" />
										</td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">图片</td>
                                        <td id="imgcontext">
                                            <div style="width:98%;padding: 10px;border: 1px solid #ccc;">
                                                <c:choose>
                                                    <c:when test="${pd.IMG_PATH!=null}">
                                                        <img style="height: 300px;" src="${pageContext.request.contextPath}${pd.IMG_PATH}"/></br></br>
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
                                        <td style="width:75px;text-align: right;padding-top: 13px;">是否展示在首页:</td>
                                        <td>
											<select name="ISSHOW" id="ISSHOW" style="width:98%;border: 1px solid #ccc;">
												<option value="0">否</option>
												<option value="1">是</option>
											</select>
										</td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">发布人:</td>
                                        <td><input type="text" name="RELEASEPEOPLE" id="RELEASEPEOPLE" value="${pd.RELEASEPEOPLE}" maxlength="255" placeholder="这里输入发布人" title="发布人" style="width:98%;"/></td>
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
						<input type="text" name="IMG_PATH" id="IMG_PATH" value="${pd.IMG_PATH}" maxlength="255" hidden="true"/>
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
		$().ready(function () {

		});
		$(top.hangge());
		//保存
		function save(){
			var text = UE.getEditor('editor').getContent();
			$("#DESCRIBES").val(text);
			if($("#TITLE").val()==""){
				$("#TITLE").tips({
					side:3,
		            msg:'请输入标题',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TITLE").focus();
			return false;
			}
			if($("#DESCRIBES").val()==""){
				$("#DESCRIBES").tips({
					side:3,
		            msg:'请输入描述',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DESCRIBES").focus();
			return false;
			}
			if($("#ISSHOW").val()==""){
				$("#ISSHOW").tips({
					side:3,
		            msg:'请输入是否展示在首页',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ISSHOW").focus();
			return false;
			}
			if($("#ADDTIME").val()==""){
				$("#ADDTIME").tips({
					side:3,
		            msg:'请输入添加时间',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ADDTIME").focus();
			return false;
			}
			if($("#ADDUSER").val()==""){
				$("#ADDUSER").tips({
					side:3,
		            msg:'请输入添加人',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ADDUSER").focus();
			return false;
			}
			if($("#RELEASEPEOPLE").val()==""){
				$("#RELEASEPEOPLE").tips({
					side:3,
		            msg:'请输入发布人',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#RELEASEPEOPLE").focus();
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
		$("#newImg").click(function(){
//            alert("重新选择");
			$("#imgcontext").empty();
			$("#imgcontext").append(" <input type='file' id='image' name='image'/>"+
					"<input  type='text' hidden='hidden' name='imgChange' id='imgChange' value='true'/>");
		});
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		</script>
</body>
</html>