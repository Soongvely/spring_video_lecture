<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>관리자 - 공지사항</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://unpkg.com/vue@2.5.13/dist/vue.js"></script>
	
	<!-- Custom fonts for this template-->
	<link href="../../../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	<!-- Custom styles for this template-->
	<link href="../../../resources/css/sb-admin-2.min.css" rel="stylesheet">	
	
	<style type="text/css">
	#qnaTable .customer-username {cursor: pointer;}
	#qnaTable .qna-title {cursor: pointer;}
	</style>
</head>
<body id="page-top">
<div id="wrapper">
<%@include file="common/admin-side.jsp" %>
	<div id="content-wrapper" class="d-flex flex-column">
	<%@include file="common/admin-nav.jsp" %>
		<div class="container-fluid">		
			
            <input type="hidden" name="pageNo" id="page-no" value="">
			<div class="row" id="admin-notice">
				<h3 style="margin-left: 60px;">공지 관리</h3>
			</div>
			
			<div class="row">
				<div class="col-sm-12">
	                <div class="form-panel" style="background: #fff; margin-left:50px; margin-right:50px; padding-bottom: 5px; ">               
	                    <div class="form-group col-sm-10">
	                    	<div class="row">
								<div class="col-sm-2">
		                    		<div>
		                    			<select class="form-control" style="width: 200px;" name="sort" id="sort-search">
		                    				<option value="date" >최신순</option>
		                    				<option value="title" >제목순</option>
		                    			</select>
		                    		</div>
		                    	</div>
		                    	<div class="col-sm-7"></div>			                    	
	                    		<div class="col-sm-2">
									<input type="text" class="form-control" style="width:275px;" name="keyword"  value="" id="keyword-search" placeholder="검색어를 입력하세요.">
								</div>	                    	
	                    		<div class="col-sm-1">
									<button type="button" class="btn btn-default" id="find-user-btn"><i class="fas fa-search"></i></button>
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
		                	<div class="row" style="margin-top: 10px;">
		                   		<div class="col-sm-12">
			                     	<table class="table" id="qnaTable" style="text-align: center;">
		                        		<colgroup>
		                        			<col width="10%">
		                        			<col width="50%">
		                        			<col width="6%">
		                        			<col width="2%">
		                        			<col width="2%">
		                        		</colgroup>
										<thead>
											<tr>
												<th>등록일자</th>
												<th>제목</th>
												<th>첨부파일</th>
												<th></th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>2020-02-21</td>
												<td>오늘부터 모의고사 판매를 시작합니다.</td>
												<td><a href=""><i class="far fa-file"></i></a></td>
												<td><button type="button"><i class="far fa-edit"></i></button></td>
												<td><button type="button"><i class="far fa-trash-alt"></i></button></td>
											</tr>
											<tr>
												<td>2020-02-21</td>
												<td>오늘부터 모의고사 판매를 시작합니다.</td>
												<td><a href=""><i class="far fa-file"></i></a></td>
												<td><button type="button"><i class="far fa-edit"></i></button></td>
												<td><button type="button"><i class="far fa-trash-alt"></i></button></td>
											</tr>
											<tr>
												<td>2020-02-21</td>
												<td>오늘부터 모의고사 판매를 시작합니다.</td>
												<td><a href=""><i class="far fa-file"></i></a></td>
												<td><button type="button"><i class="far fa-edit"></i></button></td>
												<td><button type="button"><i class="far fa-trash-alt"></i></button></td>
											</tr>
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
		                    		<div class="qnas_length" id="qnas_length" role="status" aria-live="polite">
		                    		<button>등록</button>			       
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
		        	</div>		                
		   		</div>
			</div>
		</div>
	</div>
</div>

<!-- 이름을 클릭하였을때 나타나는 회원상세정보(모달) -->
<div id="modal-customer-items" class="modal fade" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">회원 상세정보</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<table class="table" id="modal-customer-detail1-table">
					<tr>
						<th>회원번호</th>
						<td ></td>
						<th>이름</th>
						<td ></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td ></td>
						<th>이메일</th>
						<td ></td>
					</tr>
					<tr>
						<th>가입일</th>
						<td></td>
						<th>가입여부</th>
						<td ></td>
					</tr>
				</table>
				<table class="table" id="modal-customer-detail2-table">
					<thead>
						<tr>
							<th>수강 강좌명</th>
							<th>신청일자</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>자바의 신</td>
							<td>2020-02-02</td>
						</tr>
					</tbody>
				</table>
				<table class="table" id="modal-customer-detail3-table">
					<thead>
						<tr>
							<th>쿠폰명</th>
							<th>할인가격</th>
							<th>지급일</th>
							<th>만료일</th>
							<th>가입여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1주년 쿠폰</td>
							<td>5000원</td>
							<td>2020-02-02</td>
							<td>2021-01-02</td>
							<td>N</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<!-- 문의글에 답변하는 모달창 -->
<div id="modal-qna-answer" class="modal fade" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
	   			<input type="hidden" name="qnaNo">
				<h4 class="modal-title">답변하기</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<table class="table table-hover">
					<tr>
						<th style="width: 15%">작성자</th>
						<td style="width: 30%">호날두(ronaldo)</td>
						<th style="width: 15%">문의날짜</th>
						<td style="width: 30%">2020-02-20</td>
					</tr>
					<tr>
						<th style="width: 15%">문의제목</th>
						<td colspan="3">모의고사 어렵다고요!!!</td>
					</tr>
					<tr>
						<th style="width: 15%">문의내용</th>
						<td colspan="3">호우호우호우호우호우호우호우호우호우호우호우호우홍후옿우호우홍훙호우홍후오후오</td>
					</tr>
				</table>
				<h5>답변글</h5>
				<textarea class="form-control" rows="5" name="answer-text"></textarea>
				
				<!-- 파일 첨부하기 -->
				<label for="inputSubject" style="margin-top: 10px;">파일첨부</label>
				<input id="fileInput" type="file" 
				data-class-button="btn btn-default" data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" class="form-control"
				tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
				<div class="bootstrap-filestyle input-group">
					<input type="text" id="adminfile" class="form-control" name="adminfile" disabled="disabled">
					<span class="group-span-filestyle input-group-btn" tabindex="0">
						<label for="fileInput" class="btn btn-default">
							<span class="glyphicon fa fa-upload"></span>
						</label>
					</span>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-success" id="qna-answer-btn">답변하기</button>
				<button type="button" class="btn btn-warning" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<!-- 문의글을 수정하는 모달창 -->
<div id="modal-qna-update" class="modal fade" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
	   			<input type="hidden" name="qnaNo">
				<h4 class="modal-title">수정하기</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<table class="table table-hover">
					<tr>
						<th style="width: 15%">작성자</th>
						<td style="width: 30%">호날두(ronaldo)</td>
						<th style="width: 15%">문의날짜</th>
						<td style="width: 30%">2020-02-20</td>
					</tr>
					<tr>
						<th style="width: 15%">문의제목</th>
						<td colspan="3">모의고사 어렵다고요!!!</td>
					</tr>
					<tr>
						<th style="width: 15%">문의내용</th>
						<td colspan="3">호우호우호우호우호우호우호우호우호우호우호우호우홍후옿우호우홍훙호우홍후오후오</td>
					</tr>
				</table>
				<h5>답변글</h5>
				<textarea class="form-control" rows="5" name="answer-text"></textarea>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-info" id="qna-update-btn">수정하기</button>
				<button type="button" class="btn btn-warning" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<!-- 문의글 제목을 클릭하였을때 (모달화면) -->
<div id="modal-qna" class="modal fade" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
	   			<input type="hidden" name="qnaNo">
				<h4 class="modal-title">문의글</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<div class="media" style="margin: 25px;">
				<div class="media-left">
					<img src="../../../resources/images/logo/coduck.ico" class="media-object" style="width:60px">
				</div>
				<div class="media-body">
					<h4 class="media-heading">호날두(ronaldo) <small><i>문의날짜 2020-02-20</i></small></h4>
					<p>문제가 어려워요.</p>
					<pre>문제가 너무 어렵습니다. 난이도 조절 가능하신지요?</pre>					
				</div>
			</div>
			
			<div class="media" style="margin: 25px;">
				<div class="media-body">
					<h4 class="media-heading">관리자 <small><i>답변날짜 2020-02-20</i></small></h4>
					<p>시끄럽다</p>
					<pre>그냥 풀어라</pre>
				</div>
				<div class="media-right">
					<img src="../../../resources/images/admin/daeilkinng.jpg"  class="media-object" style="width:60px">
				</div>
			</div>
	
			<div class="modal-footer">
				<button type="button" class="btn btn-warning" data-dismiss="modal">닫기</button>
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
<script src="../../../resources/vendor/chart.js/Chart.min.js"></script>
<!-- Page level custom scripts -->
<script type="text/javascript">
	// 이름을 선택하였을때 회원상세정보를 조회한다. (모달창)
	$("#qnaTable .customer-username").click(function() {
		$("#modal-customer-items").modal('show');
	});
	
	// 문의글 제목을 클릭하였을때 (모달창)
	$("#qnaTable .qna-title").click(function() {
		$("#modal-qna").modal('show');
	});
	
	// 문의글 답변하기
	$("#qnaTable .fa-comment-dots").click(function() {
		$("#modal-qna-answer").modal('show');
	});
	
	// 답변한 문의글 수정하기
	$("#qnaTable .fa-comments").click(function() {
		$("#modal-qna-update").modal('show');
	});
	
	// 검색하기
	$("#keyword-search").click(function() {
		$("#search-qna-form").submit();
	});
</script>
</body>
</html>