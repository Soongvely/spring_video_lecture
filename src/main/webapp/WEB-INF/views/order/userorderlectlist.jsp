<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/tag.jsp" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CODUCK - 1등 온라인 강좌</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
   <!-- sy.css -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
   <link rel="stylesheet" href="<c:url value='/resources/css/sy-style.css' />">    
   <!-- sy.js -->
   <script src="/resources/js/common.js"></script>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
   <div class="container" style="font-size: 17px; width: 1440px; min-height: 950px; margin-top: 50px;">
      <div class="row">
         <div class="col-sm-2" style="height: 900px;">
			<p>내 학습</p>
			<ul style="list-style: none;">
				<li><a href="/user/userlecting.hta">수강중인 강의</a></li>
				<li><a href="/user/mybytestlist.hta">모의고사</a></li>
				<li><a href="/userquestion/myquestionlist.hta">강의 질문</a></li>
			</ul>
			<p>내 결제</p>
			<ul style="list-style: none;">
				<li><a href="/like/likelectlist.hta">위시리스트</a></li>
				<li><a href="/cart/userCartList.hta">장바구니</a></li>
				<li><a href="/user/mycouponlist.hta">내 쿠폰함</a></li>
				<li><a href="/order/userorderlectlist.hta">구매내역</a></li>
			</ul>
			<p>내 강의</p>
			<ul style="list-style: none;">
				<li id="teacher"><a href="/teacher/main.hta">내 강의</a></li>
			</ul>
			<p>관리자 문의</p>
			<ul style="list-style: none;">
				<li id="teacher"><a href="/user/userqueston.hta">문의하기</a></li>
				<li><a href="/userquestion/userqnatoadmlist.hta">문의 내역 조회</a></li>
			</ul>
		</div>
         
			<div class="col-sm-10">
            <div class="row">
               <div class="col-sm-12">
                  <h3>구매한 강의</h3>
                  <p>구매한 강의 리스트</p>
               </div>
            </div>
            <div class="row">
               <div class="col-sm-12">
                   <table class="table" id="my-order-history-table">
                       <thead>
                           <tr>
                               <th>순번</th>
                               <th>주문번호</th>
                               <th>강좌명</th>
                               <th>결제가격</th>
                               <th>주문일자</th>
                               <th>상세보기</th>
                           </tr>
                       </thead>
                       <tbody>
                       <c:choose>
                         <c:when test="${empty userOrderLists }">
                         	<tr>
                         		<td colspan="6" class="text-center">없습니다</td>
                         	</tr>
                         </c:when>
                         <c:otherwise>
                         	<c:forEach var="userOrderList" items="${userOrderLists }" varStatus="loop">
		                         <tr>
					                 <td>${loop.count }</td>
					                 <td>${userOrderList.orderNo }</td>
					                 <td>${userOrderList.lectTitle }</td>
					                 <td>${userOrderList.totalPrice }</td>
					                 <td><fmt:formatDate value="${userOrderList.lectCreateDate }" pattern="yyyy-MM-dd"/></td>
					                 <td><button class="btn btn-info btn-xs" id="btn-open-detail-modal" data-order-no="${userOrderList.orderNo }">상세보기</button></td>
			                     </tr>
                         	</c:forEach>
                         </c:otherwise>
                       </c:choose>
                       </tbody>
                   </table>
               </div>
            </div>
         </div>
         <div class="col-sm-10">
            <div class="row">
               <div class="col-sm-12">
                  <h3>구매한 모의고사</h3>
                  <p>구매한 모의고사 리스트</p>
               </div>
            </div>
            <div class="row">
               <div class="col-sm-12">
                   <table class="table" id="my-order-test-table">
                       <thead>
                           <tr>
                               <th>순번</th>
                               <th>주문번호</th>
                               <th>시험명</th>
                               <th>결제가격</th>
                               <th>주문일자</th>
                               <th>내 모의고사</th>
                           </tr>
                       </thead>
                       <tbody>
                       <c:choose>
                         <c:when test="${empty userOrderTestLists }">
                         	<tr>
                         		<td colspan="6" class="text-center">없습니다</td>
                         	</tr>
                         </c:when>
                         <c:otherwise>
                         	<c:forEach var="userOrderTestList" items="${userOrderTestLists }" varStatus="loop">
		                         <tr>
					                 <td>${loop.count }</td>
					                 <td>${userOrderTestList.orderNo }</td>
					                 <td>${userOrderTestList.testName } > ${userOrderTestList.testEp }</td>
					                 <td>${userOrderTestList.testPrice }</td>
					                 <td><fmt:formatDate value="${userOrderTestList.ordTestCreateDate }" pattern="yyyy-MM-dd"/></td>
					                 <td><a href="/user/mybytestlist.hta" class="btn btn-info btn-xs">이동하기</a></td>
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


   <div id="modal-order-detail" class="modal fade" role="dialog">
      <div class="modal-dialog modal-lg">

         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">&times;</button>
               <h4 class="modal-title">주문 상세 정보</h4>
            </div>
            <div class="modal-body">
               <table class="table" id="modal-order-detail-table">
                  <thead>
                     <tr>
                        <th>강의번호</th>
                        <th>강의이름</th>
                        <th>강의가격</th>
                     </tr>
                  </thead>
                  <tbody>

                  </tbody>
               </table>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
            </div>
         </div>
      </div>
   </div>
   <script type="text/javascript">
   /* $("#isa").click(function(event){
	   event.preventDefault();
	   $(this).attr("href");
	   alert($(this).attr("href"));
   }) */
   
   /* $(function() {
		var yn = $("#isdone").text();
		if(yn == '시험내역'){
			$("#isa").attr("href", '/user/mybytestlist.hta');
		}else {
			$("#isa").attr("href", '/user/mybytestlist.hta');
		}
   }) */
   
   $('#my-order-history-table button.btn-info').click(function(){
		var no = $(this).data("order-no");
		var $tbody = $("#modal-order-detail-table tbody").empty();

		$.getJSON("/order/orderLectDetail.hta", {orderno:no}, function(result){
			$.each(result, function(index, detail){
				var row = "<tr>";
				row += "<td>" + detail.orderNo + "</td>";
				row += '<td><a href="/lecture/detail/dashboard.hta?lectureNo=' + detail.lectNo + '">' + detail.lectTitle + '</a></td>';
				row += "<td>" + detail.lectprice + "</td>";
				row += "</tr>";
				
				$tbody.append(row);
			})
			
			$("#modal-order-detail").modal("show");
		})
	})
   </script>
<%@ include file="../common/footer.jsp"%>
















































