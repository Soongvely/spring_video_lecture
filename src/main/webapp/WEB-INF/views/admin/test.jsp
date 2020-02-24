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
	#table-test-info tbody tr:hover {
	  background-color: #eee !important;
	}
	#myModal2 tr {
		text-align: center;
	}
	#table-modal th, td {
		vertical-align: middle;
	}
	
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
		                        			<col width="6%">
		                        			<col width="*">
		                        			<col width="20%">
		                        			<col width="8%">
		                        			<col width="8%">
		                        			<col width="8%">
		                        			<col width="10%">
		                        			<col width="8%">
		                        			<col width="8%">
		                        			<col width="12%">
		                        		</colgroup>
										<thead>
											<tr>
							                    <th>번호</th>
							                    <th>카테고리명</th>
												<th>시험명 및 회차</th>
							                    <th>문항수</th>
							                    <th>제한시간</th>
							                    <th>가격</th>
							                    <th>등록일</th>
							                    <th>공개여부</th>
							                    <th></th>
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
		           				<button type="button" class="btn btn-info btn" data-toggle="modal"
									data-target="#myModal">시험 등록</button>
		           			</div>
			        	</div>
		        	</div>		                
		   		</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-lg">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" >
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">시험 등록</h4>
				</div>

				<form class="form-horizontal" id="form-register" action="/admin/addTestByExcel.hta" method="post" enctype="multipart/form-data">

					<div class="modal-body">
						<div class="form-group">
							<label class="control-label col-sm-2">분류1</label>
							<div class="col-sm-3">
								<select name="testMainCateNo" class="form-control" id="testMainCateNo">
									<option value="" selected disabled>카테고리를 선택하세요.</option>
									<c:forEach var="cate" items="${testMainCates }" varStatus="loop">
										<option value="${cate.no }">${cate.name }</option>
									</c:forEach>
								</select>
							</div>
							<label class="control-label col-sm-2">분류2</label>
							<div class="col-sm-4">
								<select name="testCateNo" class="form-control" id="testCateNo">
									<option value="" selected disabled>시험을 선택하세요.</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">엑셀파일</label>
							<div class="col-sm-6">
								<input type="file" class="form-control" name="xlsfile" id="xlsfile" accept=".xls,.xlsx">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">가격</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="price" id="price" numberOnly>
							</div>
						</div>

					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary" id="button-submit" >등록</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- 시험행 클릭시 과목별 보기 -->
	<div class="modal fade" id="myModal2" role="dialog">
	  <div class="modal-dialog">
	  
	    <!-- Modal content-->
	    <div class="modal-content">
	      <div class="modal-body">
	        <table class="table" id="table-modal">
	        	<thead>
	        		<tr>
		        		<th>번호</th>
						<th>과목명</th>
						<th>문항수</th>
						<th></th>
	        		</tr>
	        	</thead>
	        	<tbody>
	        	</tbody>
	        </table>
	      </div>
	        <p style="text-align: right; margin-right: 20px; margin-bottom: 20px;"><button type="button" class="btn btn-default" data-dismiss="modal">닫기</button></p>
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
	//페이지 실행시 에이작스에 보낼 값
	$("input[name='from']").val();
	var formData = $("#searchForm").serialize();
	console.log("formData : " + formData);
	
	//수정버튼 클릭시
	$("#table-test-info tbody").on("click", ".modify-test", function(event){
		event.stopPropagation();
	})
	
	//삭제버튼 클릭시
	$("#table-test-info tbody").on("click", ".del-test", function(event){
		//event.preventDefault();
		event.stopPropagation();
		var testNo = $(this).closest("tr").data("testno");
		var delConfirm = confirm('정말로 삭제하시겠습니까?');
		if (delConfirm) {
			location.href="/admin/deleteTest.hta?testNo=" + testNo;
			alert('삭제되었습니다.');
			//alert('삭제되었습니다.'); 
			//url오류가(location.href="/admin/deleteTest.hta?testNo=" + testNo)가 되도 
			//이건 왜 실행되지?
		}
		
	})
	
	//공개 및 비공개 버튼 클릭했을 때
	//$("#table-test-info tbody").on("click", "tr td:nth-child(9) button", function(event){
	$("#table-test-info tbody").on("click", ".btn-isShow", function(event){
		//event.preventDefault();
		event.stopPropagation();
		var testNo = $(this).data("testno");
		var $btn = $(this);
		console.log("btn", $btn);
		//var $btnHtml = $btn.closest("td").html();
		$.get("/admin/clickShowButton.hta", {testNo:testNo}, function(result){
			console.log("this? ", $(this));
			if(result == "Y"){
				console.log("Y");
				$btn.closest("td").prev().text("공개").css("color", "blue");
				$btn.removeClass("btn-sucess").addClass("btn-danger").html("비공개하기");
			} else {
				console.log("Y");
				$btn.closest("td").prev().text("비공개").css("color", "red");
				$btn.removeClass("btn-danger").addClass("btn-success").html("공개하기");
			}
		})
	})
	
	//시험 목록 행 클릭했을 때
 	$("#table-test-info tbody").on("click", "tr", function(){
		//event.preventDefault();
		//event.stopPropagation();
		var testNo = $(this).data("testno");
		//window.open("/test/takeaTest.hta?testNo=" + testNo, "시험문제확인", "width = 900, height = 850, top = 100, left = 200, location = no");
		$.getJSON("/admin/showSubjInfo.hta", {testNo:testNo}, function(result){
			$("#myModal2 table tbody").empty();
			console.log("ajax에서 this?", this);//ajax정보
			var row = "";
			$.each(result, function(index, item){
				console.log("each에서 this?", this);//배열 요소 정보
				row += "<tr>";
				row += "<td>" + (index+1) + "</td>";
				row += "<td>" + item.name + "</td>";
				row += "<td>" + item.qtCnt + "</td>";
				row += "<td><a href='/admin/test-qt-confirm.hta?testNo=" + testNo + "&subjNo=" + item.no +
						"' class='btn btn-primary btn-sm size-adjust' style='border:1px solid #eee;'>자세히보기</a></td>";
				row += "</tr>";
			})
			$("#myModal2 table tbody").append(row);
		})
		
		$("#myModal2").modal("show");
	}) 
	
	//가격 입력값 숫자만
	$("input:text[numberOnly]").on("keyup", function() {
	    $(this).val($(this).val().replace(/[^0-9]/g,""));
	});

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
			var row = "<tr data-testno='" + item.testNo + "'>";
			row += "<td>" + (index +1) + "</td>";
			row += "<td>" + item.mainCateName + "</td>";
			row += "<td>" + item.testName + " - " + item.testEp + "</td>";
			row += "<td>" + item.testQtCnt + "</td>";
			row += "<td>" + item.testLtdTime + "분</td>";
			row += "<td>" + item.testPrice.toLocaleString() + "원</td>";
			row += "<td>" + (new Date(item.createDate).toLocaleDateString()) +"</td>";
			if(item.isDisplay == 'Y'){
				row += "<td style='color:blue;'>공개</td>";
				row += "<td><button type='button' class='btn btn-danger btn-sm btn-isShow' data-testno='" + item.testNo + "'>비공개하기</button></td>";
			} else {
				row += "<td style='color:red;'>비공개</td>";
				row += "<td><button type='button' class='btn btn-success btn-sm btn-isShow' data-testno='" + item.testNo + "'>공개하기</button></td>";
			}
			row += "<td><button type='button' class='btn btn-warning btn-sm modify-test'>수정</button><button style='margin-left:10px;' type='button' class='btn btn-danger btn-sm del-test'>삭제</button></td>";
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
		var value1 = $("#mainCateNo").val();
		var value2 = $(this).val();
		$("#searchForm")[0].reset();
		$("#mainCateNo").val(value1);
		$("#cateNo").val(value2);
		
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
	
	//시험 등록 유효성 검사
	$("#form-register").submit(function(event){
		if($("#testMainCateNo").val() == null){
			alert("분류1을 선택해주세요.");
			event.preventDefault();
			return;
		}
		if($("#testCateNo").val() == null){
			alert("분류2를 선택해주세요.");
			event.preventDefault();
			return;
		}
		if($("[name='xlsfile']").val() == ""){
			alert("파일이 선택해주세요.");
			event.preventDefault();
			return;
		}
		if($("#price").val() == ""){
			alert("가격을 입력해주세요.");
			event.preventDefault();
			return;
		}
			
	})
	
	//모달창
	$("#testMainCateNo").change(function(){
		var mainCateNo = $(this).val();
		$("#testCateNo").empty();
		
		$.ajax({
			type:"GET",			// 요청방식
			url: "/admin/getCates.hta",	// 요청URL
			data: {mainCateNo:mainCateNo},		// 서버로 전달되는 요청파라미터
			dataType: "json",		// 예상되는 서버의 응답데이터 타입,
			success: function(result) {
				// 성공적인 응답이 왔을 때 실행할 코드
				var row = "<option value='' selected disabled>시험을 선택하세요.</option>";
				$.each(result, function(index, item){
					row += "<option value='" + item.no + "'>" + item.name + "</option>";
					
				})
				$("#testCateNo").append(row);
			}		
		});
	})
	
	//파일 올릴 때 중복검사
	 $("#form-register").on("change","#xlsfile", function(){
		console.log("값", $(this).val());
		var $fileInput = $(this);
		var filename = getFileName($(this).val());
		console.log("확장자포함파일명",filename);
		$.get("/admin/getTestNameNEp.hta", function(result){
			$.each(result, function(index, item){
				if(item == filename){
					alert("동일한 시험이 존재합니다. 다시 선택해주세요.");
					$fileInput.val("");
				}
			})
		})
		
		console.log(filename);
	}) 
	
	//업로드 하는 파일의 파일명 조회
	function getFileName(val){
		var pathHeader , pathMiddle, pathEnd, allFilename, fileName, extName;
		if (val != "") {
			pathHeader = val.lastIndexOf("\\");
			pathMiddle = val.lastIndexOf(".");
			pathEnd = val.length;
			fileName = val.substring(pathHeader+1, pathMiddle);
			extName = val.substring(pathMiddle+1, pathEnd);
			allFilename = fileName+"."+extName;
	
			return fileName; // 확장자 포함 파일명
	  	} 
	}
</script>
</body>
</html>