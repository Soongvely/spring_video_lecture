<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>관리자 - 회원 관리</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://unpkg.com/vue@2.5.13/dist/vue.js"></script>
	
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
	#customersInfoTable .customer-username {cursor: pointer;}
	.coupon-btn {min-width: 60px;}
	.coupon-btn li {font-size: 20px; text-align: center;}
	
	button.page-link {
	display: inline-block;
	}
	button.page-link {
	    font-size: 20px;
	    color: #29b3ed;
	    font-weight: 500;
	}
	</style>
</head>
<body id="page-top">
<div id="wrapper">
<%@include file="common/admin-side.jsp" %>
	<div id="content-wrapper" class="d-flex flex-column">
	<%@include file="common/admin-nav.jsp" %>
		<div class="container-fluid">			
			
            <form action="customer.hta"  id="search-user-form" class="form-horizontal style-form" method="get">
            <input type="hidden" name="pageno" id="page-no" value="${pageNo }">
			<div class="row" id="admin-lecture">
				<h3 style="margin-left: 60px;">회원 관리</h3>
				<div class="col-sm-12">
	                <div class="form-panel"
	                   style="background: #fff; margin-left:50px; margin-right:50px; padding-top:10px;">               
	
<!-- script - 참고 -->
	                    <div class="form-group col-sm-10" style="display: inline-flex;">
	                        <label class="control-label col-sm-1" style="margin-right:15px;">기간</label>
	                        <div style="display:inline-block; float:left;">
	                            <button type="button" class="btn btn-default btn-date" >오늘</button>
	                            <button type="button" class="btn btn-default btn-date" >3일 이내</button>
	                            <button type="button" class="btn btn-default btn-date" >7일 이내</button>
	                        </div>
	                        <div class="col-md-5">
	                            <div class="input-group input-large" id="date-search" data-date-format="yyyy-MM-dd">
	                                <input type="date" class="form-control date1" value="${param.startDate }" name="startDate" placeholder="시작일" style="text-align:center;">
	                                <input type="date" class="form-control date2"  value="${param.endDate }" name="endDate" placeholder="종료일" style="text-align:center;">
	                            </div>
	                        </div>
	                    </div>
	
	                    <div class="form-group col-sm-10" style="display: inline-flex;">
	                        <label class="control-label col-md-1">가입 여부</label>
	                        <div class="col-md-6">
	                            <div class="radio-dk" id="enabled-search">
	                                <label>
	                                    <input type="radio" id="optionsRadios1" name="enabled" value="A" ${empty param.enabled || param.enabled eq 'A' ? 'checked' :'' }> 전체
	                                </label>
	                                <label>
	                                    <input type="radio" id="optionsRadios2" name="enabled" value="Y" ${param.enabled eq 'Y' ? 'checked' :'' }> 가입
	                                </label>
	                                <label>
	                                    <input type="radio" id="optionsRadios3" name="enabled" value="N" ${param.enabled eq 'N' ? 'checked' :'' }> 탈퇴
	                                </label>
	                            </div>                        
	                        </div>                       
		                    <div class="col-md-6" style="left: 410px;">
		                        <a href="/admin/customer.hta" class="btn btn-warning " style="margin-left: 75px;">초기화</a>
		                    </div>
	                    </div>
	                </div>
		        </div>
			</div>
			
			<div class="row">
				<div class="col-sm-12">
	                <div class="form-panel" style="background: #fff; margin-left:50px; margin-right:50px; padding-bottom: 5px; ">               
	                    <div class="form-group col-sm-10">
	                    	<div class="row">
								<div class="col-sm-2">
		                    		<div>
		                    			<select class="form-control" style="width: 200px;" name="sort" id="sort-search">
		                    				<option value="date" ${param.sort eq 'date' ? 'selected' : '' }>가입일순</option>
		                    				<option value="id" ${param.sort eq 'id' ? 'selected' : '' }>아이디순</option>
		                    				<option value="name" ${param.sort eq 'name' ? 'selected' : '' }>이름순</option>
		                    			</select>
		                    		</div>
		                    	</div>
		                    	<div class="col-sm-7"></div>			                    	
	                    		<div class="col-sm-2">
									<input type="text" class="form-control" style="width:275px;" name="keyword"  value="${param.keyword }" id="keyword-search" placeholder="검색어를 입력하세요.">
								</div>	                    	
	                    		<div class="col-sm-1">
									<button type="button" class="btn btn-default" id="find-user-btn"><i class="fas fa-search"></i></button>
								</div>	                    	
	                    	</div>
	                    </div>
	                 </div>
	              </div>
	         </div>
	         </form>
	         
			<div class="row">
				<div class="col-sm-12">
	                <div class="form-panel" style="background: #fff; margin-left:50px; margin-right:50px; ">               
	           			<div class="form-group col-sm-10">   
		                	<div class="row" style="margin-top: 10px;">
		                   		<div class="col-sm-12">
			                     	<table class="table" id="customersInfoTable" style="text-align: center;">
		                        		<colgroup>
		                        			<col width="8%">
		                        			<col width="11%">
		                        			<col width="12%">
		                        			<col width="12%">
		                        			<col width="10%">
		                        			<col width="8%">
		                        			<col width="8%">
		                        			<col width="10%">
		                        		</colgroup>
										<thead>
											<tr>
												<th>회원번호</th>
												<th>이름</th>
												<th>아이디</th>
												<th>이메일</th>
												<th>가입일</th>
												<th>가입여부</th>
												<th>탈퇴처리</th>
												<th>쿠폰처리</th>
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${empty userList }">
													<tr>
														<td colspan="8" class="text-center">가입된 회원이 없습니다.</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="user" items="${userList }">
														<tr>
															<td>${user.no }</td>
															<td>
																<a class="customer-username" data-user-no="${user.no }" 
																	data-toggle="modal" data-target="#modal-customer-items">
																	${user.name }
																</a>
															</td>
															<td>${user.id }</td>
															<td>${user.email }</td>
															<td><span><fmt:formatDate value="${user.createDate }" pattern="yyyy-MM-dd"/></span></td>
															<td>${user.enabled }</td>
															<td><button type="button" class="btn btn-danger" data-user-no="${user.no }"><i class="far fa-minus-square"></i></button></td>
															<td>
																<div class="btn-group">
																    <button type="button" class="btn btn-primary">쿠폰</button>
																    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
																    	<span class="caret"></span>
																    </button>
																    <ul class="dropdown-menu coupon-btn" role="menu">
																	    <li><a class="user-coupon-add" data-user-no="${user.no }" data-toggle="modal" data-target="#modal-coupon-add">지급</a></li>
																	    <li><a class="user-coupon-del" data-user-no="${user.no }" data-toggle="modal" data-target="#modal-coupon-del">삭제</a></li>														 
																    </ul>
													    		</div>
															</td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
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
		                    		<div class="customers_length" id="customer_length" role="status" aria-live="polite">
		                    		총 ${pagination.totalRows }건의 조회결과			       
		                    		</div>
		                    	</div>
								<div class="col-sm-9">
		                    		<div class="text-center">
		      							<!-- 페이지네이션 -->
		      							<ul class="pagination">		
		      							
		      								<c:if test="${pagination.pageNo > 1 }">
		      									<li class="page-item">
		      									<button type="button" class="page-link" onclick="fn_prev('${pagination.pageNo -1}')" data-page-no="${no }">이전</button>
		      									</li>
		      								</c:if>
		      								
	      									<c:forEach var="no" begin="${pagination.beginPage }" end="${pagination.endPage }">
	      										<li>
	      										<button type="button" class="page-link" onclick="fn_pagination('${no}')" data-page-no="${no }">${no }</button>
	      										</li>
	      									</c:forEach>
		      								
		      								<c:if test="${pagination.pageNo < pagination.totalPagesCount }">
		      									<li>
	      										<button type="button" class="page-link" onclick="fn_next('${pagination.pageNo +1}')" data-page-no="${no }">다음</button>
	      										</li>
		      								</c:if>			      								
		      							</ul>	
		                    		</div>
			                	</div>
							</div>
		                </div>
			           	<div class="row">
		           			<div class="col-sm-12" style="text-align: right; right: 275px;">
		           				<button class="btn btn-success">엑셀</button>
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
						<td >{{user.no}}</td>
						<th>이름</th>
						<td >{{user.name}}</td>
					</tr>
					<tr>
						<th>아이디</th>
						<td >{{user.id}}</td>
						<th>이메일</th>
						<td >{{user.email}}</td>
					</tr>
					<tr>
						<th>가입일</th>
						<td >{{user.fmtCreateDate}}</td>
						<th>가입여부</th>
						<td >{{user.enabled}}</td>
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

<!-- 회원을 탈퇴 처리시키는 모달화면 -->
<div class="modal fade" id="modal-user-delete" role="dialog">
	<div class="modal-dialog">
		<form id="delete-user-form" class="well" method="get" action="deletecustomer.hta">
			<input type="hidden" name="userno">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">회원 탈퇴</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<p>해당 회원을 탈퇴시겠습니까?</p>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-danger" >탈퇴시키기</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</form>
	</div>
</div>

<!-- 회원에게 쿠폰을 지급하는 모달화면 -->
<div id="modal-coupon-add" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content" id="modal-coupon-content">
			<div class="modal-header">
				<h4 class="modal-title">쿠폰 지급</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<form>
					<select style="width:465px;" id="add-coupon-select">
		   				<option disabled selected>지급할 쿠폰을 선택하세요.</option>
		   				<option v-for="coupon in coupons" v-bind:value="coupon.no">{{coupon.title}}({{coupon.detail}})</option>
		   			</select>
		   			<input type="hidden" name="userno" v-model="selectedUserNo">
		   		</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" id="send-coupon-btn">지급하기</button>
				<button type="button" class="btn btn-warning" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>	
</div>
<!-- 회원에게 쿠폰을 회수하는 모달화면 -->
<div id="modal-coupon-del" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content" id="modal-user-coupon-content">
			<div class="modal-header">
				<h4 class="modal-title">쿠폰 회수</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<form>
					<select style="width:465px;" id="del-coupon-select">
	   					<option disabled selected>회수할 쿠폰을 선택하세요.</option>
	   					<option v-for="coupon in coupons" v-bind:value="coupon.couponNo">{{coupon.title}}({{coupon.detail}})</option>
	   				</select>
	   				<input type="hidden" name="userno" v-model="selectedUserNo">
	   			</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" id="delete-coupon-btn">회수하기</button>
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
<script src="../../../resources/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="../../../resources/vendor/chart.js/Chart.min.js"></script>
<!-- Page level custom scripts -->
<script src="../../../resources/js/demo/datatables-demo.js"></script>

<script type="text/javascript">		
	// 회원 탈퇴처리하는 모달
	$('#customersInfoTable button:has(.fa-minus-square)').click(function(){
		
		var userNo = $(this).data("user-no");
		$("#delete-user-form [name=userno]").val(userNo);
		$("#modal-user-delete").modal('show');
	});
	
	// 이름을 선택할 경우 회원상세정보를 조회한다.(모달창)
	var userApp = new Vue({
		el: "#modal-customer-items",
		data: {
			user: {}
		}
	});
	
	$('#customersInfoTable .customer-username').click(function() {
		var userno = $(this).data("user-no");
		$("#modal-customer-items").modal('show');
		
		$.getJSON("/admin/customerdetail.hta", {userno:userno}, function(result) {
			userApp.user = result;
		})	
	})
	
	// 지급(쿠폰)을 선택할 경우 모든 쿠폰을 보여준다. (모달창)
	var couponsApp = new Vue({
		el: "#modal-coupon-add",
		beforeCreate : function() {
			$.getJSON("/admin/coupons.hta",  function(result) {
				couponsApp.coupons = result;
			})	
		},
		data: {
			coupons: [],
			selectedUserNo: 0
		}
	});
	
	$(".coupon-btn .user-coupon-add").click(function() {
		var userNo = $(this).data("user-no");
		couponsApp.selectedUserNo = userNo;
		
		$('#modal-coupon-add').modal('show');
	})
	
	// 쿠폰 지급하기
	$("#send-coupon-btn").click(function() {
		var userno = $("#modal-coupon-content input[name=userno]").val();
		var couponno = $("#add-coupon-select :selected").val();
		
		var allData = {"userno":userno, "couponno":couponno};
		
		$.ajax({
			url : "/admin/addcoupontouser.hta",
			type : "post",
			data : allData,
			success : function(result) {
				alert("쿠폰을 지급하였습니다.");
				$('#modal-coupon-add').modal('hide');
			}
		})		
	})
	
	// 삭제(쿠폰)을 선택할 경우 회원이 가지고 있는 쿠폰을 보여준다. (모달창)
	var couponboxApp = new Vue({
		el: "#modal-coupon-del",
		data: {
			coupons: [],
			selectedUserNo: 0
		}
	})
		
	$(".coupon-btn .user-coupon-del").click(function() {
		var userNo = $(this).data("user-no");
		couponboxApp.selectedUserNo = userNo;
		
		$.getJSON("/admin/usercouponbox.hta", {userno:userNo}, function(result) {
			couponboxApp.coupons = result;	
			if (result.length == 0) {
				$('#delete-coupon-btn').css("display", "none");
			} else {
				$('#delete-coupon-btn').css("display", "block");
				
			}
			$('#modal-coupon-del').modal('show');
		});	
	});
	
	// 쿠폰 삭제하기
	$("#delete-coupon-btn").click(function() {
		var userno = $("#modal-user-coupon-content input[name=userno]").val();
		var couponno = $("#del-coupon-select :selected").val();
		
		var allData = {"userno":userno, "couponno":couponno};
		
		$.ajax({
			url : "/admin/deletecoupontouser.hta",
			type : "post",
			data : allData,
			success : function(result) {
				alert("쿠폰을 삭제하였습니다.");
				$('#modal-coupon-del').modal('hide');
			}
		})		
	})
	
	
	$("#find-user-btn").click(function() {
		$("#search-user-form").submit();		
	});
	
	// 페이징 처리하기
	function fn_pagination(no) {
		
		var url = "";
		url += "?pageno=" + no;
		url += "&startDate=" + $("#date-search [name=startDate]").val()
		url += "&endDate=" + $("#date-search [name=endDate]").val()
		url += "&enabled=" + $("#enabled-search :checked").val()
		url += "&sort=" + $("#sort-search :selected").val();
		url += "&keyword=" + $("#keyword-search").val();
		
		location.href = url;
	}
	
	
	function fn_next(no) {
		
		var url = "";
		url += "?pageno=" + no;
		url += "&startDate=" + $("#date-search [name=startDate]").val()
		url += "&endDate=" + $("#date-search [name=endDate]").val()
		url += "&enabled=" + $("#enabled-search :checked").val()
		url += "&sort=" + $("#sort-search :selected").val();
		url += "&keyword=" + $("#keyword-search").val();
		
		location.href = url;
	};
	
	function fn_prev(no) {
		
		var url = "";
		url += "?pageno=" + no;
		url += "&startDate=" + $("#date-search [name=startDate]").val()
		url += "&endDate=" + $("#date-search [name=endDate]").val()
		url += "&enabled=" + $("#enabled-search :checked").val()
		url += "&sort=" + $("#sort-search :selected").val();
		url += "&keyword=" + $("#keyword-search").val();
		
		location.href = url;
	};
	
	
</script>
</body>
</html>