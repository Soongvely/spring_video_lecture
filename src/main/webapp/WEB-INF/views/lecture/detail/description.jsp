<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/head.jsp" %>
<%@ include file="../../common/header.jsp" %> 
 
       <section class="lecture-header-container">
            <div class="container">
                <div class="col-sm-12 play-container">
                    <div class="col-sm-9">
                        <div class="col-sm-4 lecture-container">
                            <div class="lecture-thumbnail">
                                <img src="${lecture.imagePath }" alt="스프링프레임워크" />
                            </div>
                            <div class="lecture-play">
                                <div class="icon_container has-icon">
                                    <i class="fas fa-play"></i>
                                    <br>
                                </div>
                            </div>
                        </div>
                        <div class="lecture-title">
                            <div>
                            	<div class="lecture-title-header">
	                                <h1>${lecture.title }</h1>
                            	</div>
                                <div class="lecture-mata">
                                    <span>
                                        <div class="rating-star">
                                            <div class="star-solid">
                                                <span class="star" id="starScore" data-text="${counts.reviewStar }"></span>
                                                <small>(${counts.reviewCnt }개의 수강평)</small>
                                                <br>
                                                <small class="student_cnt"> ${counts.studentCnt }명의 수강생</small>
                                            </div>
                                        </div>
                                        <div class="lecture-progress">
                                            <span>진도율 : 27강/27강 (100.00%) | 시간 : 695분/695분</span>
                                            <br>
                                            <div class="progress">
                                                <div class="progress-bar progress-bar-info" role="progressbar"
                                                    aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
                                                    style="width:30%">
                                                </div>
                                            </div>
                                        </div>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="learning-btn-container">
                            <a href="#" class="btn btn-default sy-btn-learning">학습하기</a>
                        </div>
                        <!-- floating btn start -->
                        <div class="lecture-floating-btn">
                            <div class="lecture-floating-top">
                                <div class="lecture-price-cover">
                                    <div class="lecture-price-section">
                                        <div class="lecture-price">
                                            <fmt:formatNumber value="${lecture.discountPrice }"></fmt:formatNumber>원 <del class="lecture-del-price"><fmt:formatNumber value="${lecture.price }"></fmt:formatNumber>원</del>
                                        </div>
                                        <div class="lecture-price-detail">(${lecture.discountRate }% 할인)</div>
                                    </div>
                                    <div class="lecture-btn-section">
                                        <div class="lecture-btn-cover">
                                            <a href="/order/insertOrderLect.hta" class="btn lecture-purchase-btn">구매하기</a>
                                        </div>
                                        <div class="lecture-sub-btn-cover">
                                            <button class="btn sub-btn lecture-like-btn">
                                                <i class="far fa-heart"></i> ${counts.likeCnt } 위시
                                            </button>
                                            <button href="/cart/insertCartLect.hta" class="btn sub-btn lecture-cart-btn">
                                                <i class="fas fa-shopping-cart"></i> 수강 바구니
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="lecture-floating-bottom">
                                <div class="lecture-info-cover">
                                    <div class="lecture-info-row">
                                        <i class="fas fa-user-tie"></i> 지식공유자 !강사 이름!
                                    </div>
                                    <div class="lecture-info-row">
                                        <i class="far fa-clock"></i> 평생 무제한 시청
                                    </div>
                                    <div class="lecture-info-row">
                                        <i class="fas fa-stamp"></i> 수료증 발급 강의
                                    </div>
                                    <div class="lecture-info-row">
                                       <i class="fas fa-signal"></i>수강 난이도 '활용'
                                    </div>
                                    <div class="lecture-info-row">
                                       <i class="far fa-play-circle"></i>96회 수업ㆍ총 8시간 15분 수업
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- floating btn start -->
                    </div>
                </div>
            </div>
        </section>
                
		<!-- LectureDetail Menu start-->
       	<section class="leature-description_container">
	    <div class="container">
	        <ul class="nav nav-pills" id="subNav">
	            <li class="is-active dashboard"><a href="#">대시보드</a></li>
	            <li class="is-active description"><a href="#">강의소개</a></li>
	            <li class='curriculum'><a href="#">교육과정</a></li>
	            <li class='reviews'><a href="#">수강후기</a></li class=''>
	        <li class='questions'><a href="#">질문답변</a></li class=''>
	        </ul>
	    </div>
	    <!-- LectureDetail Menu end-->
	    
		<!-- description start -->
        <div class="container">
            <div class="lecture-description-container">
                <div class="col-sm-12">
                    <div class="col-sm-9">
                        <div class="contents">
                        <!-- 강의소개 start-->
                            <div class="lecture-description" id="description">
                                <div class="can_do description_sub">
                                    <h3 class="sub-title has-icon">
                                        이런걸 배울 수 있어요
                                        <i class="far fa-smile-wink"></i>
                                    </h3>
                                    <ul id="lectureTag" data-tag=" ${lecture.tag }"></ul>
                                </div>
                                <div class="body">
                                    <h3 class="body-title">${lecture.infoTitle }</h3>
                                    <p class="body-contents">
                                        ${lecture.info }
                                    </p>
                                </div>
                                <div class="lecture-instructor">
                                    <h3 class="sub-heading">지식공유자 소개</h3>
                                    <div class="teacher-profile">
                                        <div class="teacher-profile-image">
                                            <figure class="image">
                                                <img src="${lecture.userImagePath }" width="70px" />
                                                <span class="teacher-profile-name">${lecture.userName }</span>
                                            </figure>
                                        </div>
                                        <ul>
                                            <li>${lecture.userIntroduction }</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- 교육과정 start-->
                            
	                            <div class="lecture-curriculum" id="curriculum">
	                           
	                                <h3 class="sub-heading">교육과정</h3>
	                                <div class="curriculum-chapter-list">
	                                    <div class="curriculum-title">
	                                        <span class="curriculum_length">총 강의</span>
	                                        <span class="curriculum_runtime">총 시간</span>
	                                    </div>
	                                    <!-- chapter-cover start-->
	                                    <div class="chapter-cover">
        		                    <c:forEach var="chapterDto" items="${chapters}" varStatus="status">
	                                        <!-- chapter-header start-->
	                                        <div class="chapter-header">
	                                            <div class="chapter-header-left">
	                                                <span class="section_header_icon plus">
	                                                    <i class="glyphicon glyphicon-plus"></i>
	                                                </span>
	                                                <span class="unit_title">챕터 ${status.index }. ${chapterDto.chapter.chapterName }</span>
	                                            </div>
	                                            <div class="chapter-header-right">
	                                                <span class="unit_length">${fn:length(chapterDto.lessons) } 강의</span>
	                                                <span class="unit_time"><i class="far fa-clock"></i>
	                                                    79 : 23</span>
	                                            </div>
	                                        </div>
		                                        <div class="lesson_cover slide-hidden">
	                                        	<c:forEach var="lesson" items="${chapterDto.lessons }">
		                                            <div class="unit_item">
		                                                <div class="col-sm-10 unit_item_left">
		                                                    <i class="far fa-play-circle"></i>
		                                                    <span class="unit_item-title">${lesson.lessonTitle }</span>
		                                                </div>
		                                                <div class="unit_item_right">
		                                                    <span class="unit_time"><i class="far fa-clock"
		                                                            style="margin-right: 4px;"></i>
		                                                        ${lesson.totalTime }
		                                                    </span>
		                                                </div>
		                                            </div>
		                           				 </c:forEach>
		                                        </div>
	                                        </c:forEach>
	                                    </div>
	                                    <!-- chapter-cover end-->
	                                </div>
	                            </div>
                            <!-- 교육과정 end -->

                            <!-- 공개일자 -->
                            <div class="lecture-date">
                                <h3 class="sub-heading">공개 일자</h3>
                                <div style="padding-left: 1rem;"><fmt:formatDate value="${lecture.createDate }" pattern="yyyy년 MM월 dd일"/></div>
                            </div>
                            <!-- 수강후기 start -->
                            <div class="lecture-reviews" id="reviews">
                                <h3>수강 후기</h3>
                                <div class="review-box">
                                    <div class="average">
                                        <span class="average_num">${counts.reviewStar }</span>
                                        <span class="average_star">
                                            <div class="rating_star">
                                                <div class="review-star-solid">
                                                    <span class="star_yellow" data-text="${counts.reviewStar }"></span>
                                                </div>
                                            </div>
                                        </span>
                                        <h5 class="review_total">${counts.reviewCnt }개의 수강평</h5>
                                    </div>
                                    <div class="review-progress_bars">
                                    	<c:forEach var="review" items="${reviewStarAvgs }">
		                                        <div class="review_counting">
	                                            <label>${review.star }점</label>
	                                            <c:choose>
                                            		<c:when test="${review.avgStar > 0 }">
	                                            		<progress class="progress is-link" max="100" value="${review.avgStar }"></progress>
                                            		</c:when>
                                            		<c:otherwise>
	                                            		<progress class="progress is-link" max="100"></progress>
                                            		</c:otherwise>
	                                            </c:choose>
		                                        </div>
                                    	</c:forEach>
                                    </div>
                                </div>
                                <div class="review_list">
                                    <div class="review_container">
                                        <div class="review_item">
                                            <figure class="review-image-container">
                                                <img class="review_image" src="/resources/images/logo/coduck.ico" width="60px" />
                                            </figure>
                                            <div class="review-contents-box">
                                                <div class="review-contents">
                                                    <span>
                                                        <div class="rating_star">
                                                            <div class="star_yellow">★★★★★</div>
                                                        </div>
                                                        <strong id="reivew_user_id">soong</strong>
                                                        <small class="review update_date">2시간 전</small>
                                                        <div class="review_body">
                                                            꼭알아야할것, 몰라도되는 기능들을 집어주셔서 핵심에 집중할수있었습니다.
                                                            노하우를 오픈한다는것이 쉽지않은데 좋은강의였습니다.
                                                            QueryDSL까지 달려볼게요. 감사합니다.
                                                        </div>

                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <button class="btn btn-show-more-review">수강평 더보기</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- description end -->
    </section>  
    <script src="/resources/js/lecture/details-common.js"></script>  
    <script>
    
    // 존재하지 않는 평점 그래프 append
    //var html = '<progress class="progress is-link" max="100" value="0"></progress>';
	//$(".review_counting:not(:has(progress))").append(html);
    
    // 교육과정 slideDown/slideUp
    $(".chapter-header").click(function() {    	

	    $(this).next().slideDown();
		$(this).find(".glyphicon").removeClass("glyphicon-plus").addClass("glyphicon-minus");
		
		if ($(this).hasClass("up")) {
	   		$(this).next().slideUp();
		    
	    	$(this).find(".glyphicon").removeClass("glyphicon-minus").addClass("glyphicon-plus");
		}
		$(this).toggleClass("up");
    });
    
 	// starScore
	var score = $("#starScore").data("text");
	var star = "";
	for(var i=1; i<=score; i++) {
		star += '<i class="fas fa-star"></i>';
	}
	
	$("#starScore").html(star);
	
	var trim = 5 - score;
	
	var emptyStar = "";
	for(var i=1; i<=trim; i++) {
		emptyStar += '<i class="far fa-star"></i>';
	}
	
	$("#starScore").append(emptyStar);
	
	// lectureTag split 
	var str = $("#lectureTag").data("tag").split('#');
	var html = "";
	for (var i in str) {
		html +="<li><i class='glyphicon glyphicon-ok'></i> " +  str[i] + "</li>";
	}
	$("#lectureTag").html(html);
	$("#lectureTag li:first").remove();
    
    // 별점에 소수점 붙이기
    var score = $(".average_num").text();
    
    if(score.length == 1) {
    	$(".average_num").append(".0");
    }
    
    </script>
<%@ include file="../../common/footer.jsp" %>