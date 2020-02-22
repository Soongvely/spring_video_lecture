<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>관리자 - 강좌 관리 - 동영상 관리</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
	<!-- Custom fonts for this template-->
	<link href="../../../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	<!-- Custom styles for this template-->
	<link href="../../../resources/css/sb-admin-2.min.css" rel="stylesheet">	
	<!-- Custom styles for this page -->
    <link href="../../../resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
	<style type="text/css">
	.btn-date {border: 1px solid #cbc4c4;}
	#admin-lecture .form-group {height: 50px;}
	
	</style>
</head>
<body id="page-top">
<%@ include file="../common/tag.jsp" %>
<div id="wrapper">
<%@include file="common/admin-side.jsp" %>
	<div id="content-wrapper" class="d-flex flex-column">
	<%@include file="common/admin-nav.jsp" %>
		<div class="container-fluid">			
			<div class="row" id="admin-lecture">
				<h3 style="margin-left: 60px;">모의고사 관리</h3>
				<div class="col-sm-12">
		            <form action="#" class="form-horizontal style-form"  method="get" id="searchForm">
		                <div class="form-panel"
		                   style="background: #fff; margin: 0px 50px; padding: 33px 17px;">               
		                    <div class="form-group col-sm-10" style="display: inline-flex;">
		                        <label class="control-label col-sm-1">카테고리</label>
		                        <div class="col-sm-2">
		                            <select class="form-control" name="mainCateNo" id="mainCateNo" >
		                            	<option value="-1">전체</option>
		                            </select>
		                        </div>                            
		                        <div class="col-sm-2">
		                            <select class="form-control" name="cateNo" id="cateNo">
		                          	  <option value="-1">전체</option>
		                            </select>
		                        </div>                            
		                        <div class="col-sm-2">
		                            <select class="form-control" name="epName" id="epName">
		                          	  <option value="">전체</option>	
		                            </select>
		                        </div>                            
		                    </div>               
<!-- script - 참고 -->
		                    <div class="form-group col-sm-10" style="display: inline-flex;" >
		                        <label class="control-label col-sm-1" style="margin-right:15px;">기간</label>
		                        <div style="display:inline-block; float:left;" id="div-period">
		                            <button type="button" class="btn btn-default btn-date" data-period="0">오늘</button>
		                            <button type="button" class="btn btn-default btn-date" data-period="7">7일 이내</button>
		                            <button type="button" class="btn btn-default btn-date" data-period="30">1달 이내</button>
		                            <button type="button" class="btn btn-default btn-date" data-period="180">6개월 이내</button>
		                            <button type="button" class="btn btn-default btn-date" data-period="365">1년 이내</button>
		                            <input type="hidden" name="period" value="-1" id="input-period"/>
		                            <span style="margin-left: 10px;">또는</span>
		                        </div>
								
		                        <div class="col-md-5" id="date-range">
		                            <div class="input-group input-large" data-date-format="yyyy-mm-dd">
		                                <input type="text" class="form-control date1" name="from" id="from" placeholder="시작일" onfocus="(this.type='date')" style="text-align:center;">
		                                <input type="text" class="form-control date2" name="to" id="to" placeholder="종료일" onfocus="(this.type='date')" style="text-align:center;">
		                            </div>
		                        </div>
		                    </div>
		                    
	                       <div class="form-group col-sm-10" style="display: inline-flex;">
		                        <label class="col-sm-1 control-label">검색</label>
		                        <div class="col-sm-3">
		                            <input type="text" class="form-control" name="searchKeyword" id="searchKeyword" placeholder="검색할 키워드를 입력해주세요." 
		                            style="font-size: 15px; width: 400px;"/>
		                            <!-- <button type="button" id="button-search" class="btn btn-primary" >검색</button> -->
		                        </div>
		                        <div class="col-sm-5">
		                            <button type="button" class="btn btn-default" id="button-search"><i class="fas fa-search"></i></button>
		                    	</div>
		                    </div>
		
		                    <div>
		                        <button class="btn btn-warning" id="button-reset">초기화</button>
		                    </div>
		                </div>
		            </form>
		        </div>
			</div>
			
			<div class="row">
				<div class="col-sm-12">
	                <div class="form-panel" style="background: #fff; margin-left:50px; margin-right:50px; ">               
	           			<div class="form-group col-sm-10">   
		                	<div class="row" style="margin-top: 10px;">
		                   		<div class="col-sm-12">
			                     	<table class="table" id="table-test-info" style="text-align: center;">
		                        		<colgroup>
		                        			<col width="7%">
		                        			<col width="*">
		                        			<col width="13%">
		                        			<col width="10%">
		                        			<col width="8%">
		                        			<col width="8%">
		                        			<col width="8%">
		                        			<col width="10%">
		                        			<col width="8%">
		                        			<col width="10%">
		                        		</colgroup>
										<thead>
											<tr>
							                    <th>번호</th>
							                    <th>카테고리명</th>
												<th>시험명</th>
							                    <th>회차</th>
							                    <th>문항수</th>
							                    <th>제한시간</th>
							                    <th>가격</th>
							                    <th>시험일</th>
							                    <th>공개여부</th>
							                    <th></th>
											</tr>
										</thead>
										<tbody>
										</tbody>		
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
				
			<div class="row">
				<div class="col-sm-12">
	                <div class="form-panel" style="background: #fff; margin-left:50px; margin-right:50px; ">               
	           			<div class="form-group col-sm-10">  
							<div class="row">									
								<div class="col-sm-3">
		                    		<div class="customers_length" id="search-count" role="status" aria-live="polite">
		                    		<p>총 <span>12</span>건의 조회결과</p>			       
		                    		</div>
		                    	</div>
								<div class="col-sm-9">
		                    		<div class="text-center">
		      							<!-- 페이지네이션 -->
		      							<ul class="pagination">		
		      							      								
		      							</ul>	
		                    		</div>
			                	</div>
							</div>
		                </div>
			           	<div class="row" style="background-color: ">
		           			<div class="col-sm-12" style="text-align: right; right: 275px;">
		           				<button class="btn btn-success">엑셀로 등록</button>
		           			</div>
			        	</div>
		        	</div>		                
		   		</div>
			</div>
			
		</div>
	</div>
</div>
<!-- Bootstrap core JavaScript-->
<script src="../../../resources/vendor/jquery/jquery.min.js"></script>
<script src="../../../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Core plugin JavaScript-->
<script src="../../../resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Custom scripts for all pages-->
<script src="../../../resources/js/sb-admin-2.min.js"></script>
<!-- Page level plugins -->
<script src="../../../resources/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="../../../resources/vendor/chart.js/Chart.min.js"></script>
<!-- Page level custom scripts -->
<script src="../../../resources/js/demo/datatables-demo.js"></script>

<script type="text/javascript">

	

	$("input[name='from']").val();
	var formData = $("#searchForm").serialize();
	console.log("formData : " + formData);
	
	//메인 및 하위 카테고리 변경 함수
	function selectBoxChange(str, arr){
		console.log("str", str, "arr", arr);
		$(str).empty();
		
		var optRow = "";
		optRow += "<option value='-1'>전체</option>";
		
		$.each(arr, function(index, item){
			optRow += "<option value='" + item.no + "'>" + item.name + "</option>";
		})
		$(str).append(optRow);
	}

	//검색 결과 함수
	function appendTableRow(result){
		$("#table-test-info tbody").empty();
		var dtos = result.searchTestDetailDtos;
		console.log("dtos",  dtos);
		$.each(dtos, function(index, item){
			var row = "<tr>";
			row += "<td>" + (index +1) + "</td>";
			row += "<td>" + item.mainCateName + "</td>";
			row += "<td>" + item.testName + "</td>";
			row += "<td>" + item.testEp + "</td>";
			row += "<td>" + item.testQtCnt + "</td>";
			row += "<td>" + item.testLtdTime + "</td>";
			row += "<td>" + item.testPrice.toLocaleString() + "원</td>";
			row += "<td>" + (new Date(item.testDate).toLocaleDateString()) +"</td>";
			if(item.isDisplay == 'Y'){
				row += "<td>공개</td>";
			} else {
				row += "<td>비공개</td>";
			}
			row += "</tr>";
			$("#table-test-info tbody").append(row);
		})
		$("#search-count").find("span").text(dtos.length);
	}
	
	//초기화 버튼 누를 때
	$("#button-reset").click(function(){
		$("#searchForm :input")[0].reset();
		
	})
	
	//기간을 설정할 때
	$("#date-range input").change(function() {
		$("#div-period").find("button").removeClass("btn-info");
		$("#input-period").val(-1);
		
		formData = $("#searchForm").serialize();
		$.getJSON("/admin/searchTestByAdm.hta", formData, function(result){
			appendTableRow(result);
		})
	})
	
	//날짜 버튼 누를때
	$("#div-period").find("button").click(function(){
		$(this).removeClass("btn-default").addClass("btn-info");
		$(this).siblings().removeClass("btn-info");
		$("#date-range input").val("");
		var dataNo = $(this).data("period");
		
		$(this).siblings(":input").val(dataNo);
		formData = $("#searchForm").serialize();
		console.log("날짜", formData);
		$.getJSON("/admin/searchTestByAdm.hta", formData, function(result){
			appendTableRow(result);
		})
	})
	
	//검색할 때
	$("#button-search").click(function(){
		formData = $("#searchForm").serialize();
		$.getJSON("/admin/searchTestByAdm.hta", formData, function(result){
			appendTableRow(result);
		})
	})
	
	//회차 변경할 때
	 $("#epName").change(function(){
		formData = $("#searchForm").serialize();
		$.getJSON("/admin/searchTestByAdm.hta", formData, function(result){
			appendTableRow(result);
		})
	}) 
	
	//카테고리 변경될 때
	$("#cateNo").change(function(){
		formData = $("#searchForm").serialize();
		console.log("formData", formData);
		$.getJSON("/admin/searchTestByAdm.hta", formData, function(result){
			$("#epName").empty();
			
			var optRow = "";
			optRow += "<option value=''>전체</option>";
			
			var eps = result.eps;
			$.each(eps, function(index, item){
				optRow += "<option value='" + item.testEp + "'>" + item.testEp + "</option>";
			})
			$("#epName").append(optRow);
			
			appendTableRow(result);
		})
	})
	
	//메인 카테고리 변경될 때
	$("#mainCateNo").change(function(){
		var val = $(this).val();
		$("#searchForm")[0].reset();
		$(this).val(val);
		formData = $("#searchForm").serialize();
		console.log("formData", formData);
		$.getJSON("/admin/searchTestByAdm.hta", formData, function(result){
			$("#cateNo").empty();
			
			var optRow = "";
			optRow += "<option value='-1'>전체</option>";
			
			var downCates = result.downCategories;
			
			selectBoxChange("#cateNo", downCates);
			appendTableRow(result);
		})
	}) 
	
	$("#div-period > button").click(function(){
		$("#input-period").val($(this).data("period"));
	})
	
	//페이지 실행되자마자 
	$.getJSON("/admin/searchTestByAdm.hta", formData, function(result){
		
		var upCates = result.upCategories;
		//var downCates = result.downCategories;
		/* $("#mainCateNo").empty();
		var optRow = "";
		optRow += "<option value='-1'>전체</option>"; */
		
		selectBoxChange("#mainCateNo", upCates);
		//selectBoxChange("#cateNo", downCates);
		appendTableRow(result);
	})
</script>
</body>
</html>