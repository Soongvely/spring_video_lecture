<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/head.jsp" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="sub-bar.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<style>
	 .toggle-text {
	    top: 0;
	    left: 0;
	    display: inline-block;
	    margin-top: 72px;
	    margin-left: 80px;
	    vertical-align: top;
	 	font-size:30px;
	 	font-weight: 800;
	 	color: blue;
	}
	</style>		
					<input type="hidden" name="page" value="${param.page }">
					<div class="container">
                        <div class="teacher-container">
                            <div class="teacher main-body" id="teacherApp">
                                <div class="body-contents create-lecture">
                                    <div class="contenets-menu main-banner">
                                        <div class="banner-icon">
                                            <img src="/resources/images/lecture/create_lecture.png">
                                        </div>
                                        <div class="banner-title">
                                             <h3>흥미로운 강좌 만들기 <i class="fab fa-pagelines" style="color: #4c974c;"></i></h3>
                                        </div>
                                        <div class="banner-comment">
                                            <p>
                                                수년간 가르친 경험이 있는 경력 강사이든 처음 가르쳐 보는 초보 강사이든 
                                                남녀노소 관계없이 누구나 흥미로운 강좌를 만들 수 있습니다. 
                                            </p>
                                            <p>
                                            자신의 수준에 상관없이 다음 단계로 도약할 수 있도록 리소스와 모범 사례를 모아 두었습니다.
                                            </p>    
                                        </div>
                                        <div class="banner-bottom-button">
                                            <button class="btn btn-lg">시작하기</button>
                                        </div>
                                    </div>
                                </div>
                                 <div class="search-form">
                                    <label class="label search-label" for="search">
                                      <span class="visually-hidden">질문 검색</span>
                                      <input id="search" class="search-input" type="text" placeholder="강의 검색하기" autocomplete="off">
                                    </label>
                                    <button type="button" class="btn btn-search">검색</button>
                                </div>
                                <div class="body-contents recent-lecture">
                                    <div class="contenets-menu my-lecture">
                                        
                                        <div class="my-lecture teaching-box">
                                            <a href="">
                                                <img src="../img/spring_ver.2018-1.jpg" class="my-lecture-thumbnail">
                                            </a>
                                            <div class="my-lecture teaching-body">
                                                <div class="teaching-details">
                                                    <a href="">
                                                        <div class="detail-title">
                                                            <h3>스프링 기초다지기 쌉가능</h3>
                                                        </div>
                                                        <div class="info-lect">
                                                            <span> 12강 |  시간 : 150분</span>
                                                        </div>
                                                    </a>
                                                </div>
                                                <div class="aaa"></div>
                                                <div class="info-box">
                                                    <div class="info-price">
                                                        <strong class="discount">￦15,000</strong>
                                                        <span class="rate">(20%)</span>
                                                    </div>
                                                    <div class="info-student">
                                                        <span>총 130개의 수강평</span>
                                                    </div>
                                                     <div class="info-star">
                                                         <i class="far fa-star"></i>
                                                         <i class="far fa-star"></i>
                                                         <i class="far fa-star"></i>
                                                         <i class="far fa-star"></i>
                                                     </div>
                                                    <div class="info-wish">
                                                        <i class="far fa-heart"></i>3
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="my-lecture teaching-box">
                                            <a href="">
                                                <img src="/resources/images/lecture/lecture-img-10.jpg" class="my-lecture-thumbnail">
                                            </a>
                                            <div class="my-lecture teaching-body">
                                                <div class="teaching-details">
                                                    <a href="">
                                                        <div class="detail-title">
                                                            <h3>스프링 기초다지기 쌉가능</h3>
                                                        </div>
                                                    </a>
                                                </div>
                                                 
                                                <div class="label">
                                                    <label class="badge waiting">승인 대기</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>   
                                </div>
                                <nav class="pagination sy-pagination" id="pagination" role="navagation" aria-label="pagination"></nav>
                            </div>                      
                        </div>
                    </div>
                </section>
            </div>
        </main>
<script>
	// 강좌 컨텐츠 마우스 이벤트
	
/* 	var html = '<div class="toggle-text"><a href="">강좌 편집/관리</a></div>';
	
	$(".my-lecture.teaching-body").mouseenter(function () {
	    $(this).css({opacity:"0.2", cursor:"pointer"});
	    $(".aaa").append(html);
	    $(".aaa").css("display", 'block');
	});
	
	$(".my-lecture.teaching-body").mouseleave(function () {
    	$(this).css('opacity','1');
	    $(".aaa").empty(html);
	    $(".aaa").css("display", 'none');
	}); */
	$(function () {
		
		$(".btn-search").click(function() {
			searchMyLecture();
		});
		$(".btn-search").keyup(function() {
			searchMyLecture();
		});
		
		function searchMyLecture() {
			var keyword = $("#search").val();
			var page = $("input[name=page]").val();
			$.ajax({
				url: "teacher/searchMyLecture.hta",
				type: 'GET',
				contentType: 'application/json',
				data: {
					"keyword" : keyword,
					"page" : page
				},
				success : function(resultMap) {
					var result = resultMap.lectures;
					var beginPage = resultMap.beginPage;
					var endPage = resultMap.endPage;
					var totalPage = resultMap.totalPage;
					
					var html = '';
					if(result.length) {
						result.forEach(item, i) {
							var lesson = item.lessonDto;
							
							html += '<div class="my-lecture teaching-box">';
							html += '<a href="">';
							html += '<img src="../img/spring_ver.2018-1.jpg" class="my-lecture-thumbnail">';
							html += '</a>';
							html += '<div class="my-lecture teaching-body">';
							html += ' <div class="teaching-details">';
							html += '  <a href="">';
							html += '    <div class="detail-title">';
							html += '<h3>스프링 기초다지기 쌉가능</h3>';
							html += '</div>';
							html += '<div class="info-lect">';
							html += '<span> 12강 |  시간 : 150분</span>';
							html += '</div>';
							html += '</a>';
							html += '</div>';
							html += '<div class="aaa"></div>';
							html += '<div class="label">';
							html += '<label class="badge waiting">승인 대기</label>';
							html += '</div>';
							html += '</div>';
							html += '</div>';
						}
						var pageText = '';
						
						pageText += '<ul class="pagination">';
						if (beginPage > 3) {
							pageText += '<li><a data-page="' + (beginPage - 1) + '"><i class="fas fa-angle-left"></i></a></li>';
						}
						
						for (var i = beginPage; i <= endPage; i++) {
							pageText += '<li><a data-page="' + i + '" style="'+ (page == i ? 'background:#66DDC6 ; color:white': '') + '">' + i + '</a></li>';
						}
						pageText += '<li><a data-page="' + (endPage + 1) + '" style="' + (totalPage == endPage ? 'display:none' : 'display:block') + '"><i class="fas fa-angle-right"></i></a></li>';
						pageText += '</ul>'; 
						
					} else {
						html += '<div class="lecutre lesson-no-item col-sm-12">';
						html += '<img src="/resources/images/logo/siba.png" />'
						html += '<h1>검색 결과가 없어요!</h1>';
						html += '</div>';
						
						$("#pagination").empty();
					}
					$("#pagination").html(pageText);
					$(".contenets-menu.my-lecture").empty();
					$(".contenets-menu.my-lecture").append(html);
				},
				error: function(e){ console.log(e)}
			});
		}
	});	
</script>        
<%@ include file="../common/footer.jsp" %>