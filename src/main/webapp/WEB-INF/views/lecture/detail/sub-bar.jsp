<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="/resources/js/lecture/details-common.js"></script>   

		<section class="lecture-header-container">
            <div class="container">
                <div class="col-sm-12 play-container">
                    <div class="col-sm-9">
                        <div class="col-sm-4 lecture-container">
                            <div class="lecture-thumbnail">
                                <img src="${lecture.imagePath }" alt="강좌썸네일" />
                            </div>
                            <div class="lecture-play">
                                <div class="icon_container has-icon" data-sample-video="${lecture.samplePath }">
                                   	<i class="fas fa-play"></i>  
                                    <br>
                                </div>
                            </div>
                        </div>
                        <div class="lecture-title">
                            <div style="min-height: 196px">
                            	<div class="lecture-title-header">
	                                <h1>${lecture.title }</h1>
                            	</div>
                                <div class="lecture-mata">
                                    <span>
                                        <div class="rating-star">
                                            <div class="star-solid">
                                                <span class="star starScore" id="starScore" data-text="${counts.reviewStar }"></span>
                                                <small>(${counts.reviewCnt }개의 수강평)</small>
                                                <br>
                                                <small class="student_cnt"> ${counts.studentCnt }명의 수강생</small>
                                            </div>
                                        </div>
                                        <c:if test="${buyer != null && LU != null}">
	                                        <div class="lecture-progress">
	                                            <span>진도율 : ${lessonDto.viewCount }강/${lessonDto.totalCount }강 (${lessonDto.percent }%) | 시간 : ${lessonDto.totalAccumulate }분/${lessonDto.totalTime }분</span>
	                                            <br>
	                                            <div class="progress">
	                                                <div class="progress-bar progress-bar-info" role="progressbar"
	                                                    aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
	                                                    style="width:${lessonDto.percent}%">
	                                                </div>
	                                            </div>
	                                        </div>
                                        </c:if>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                    	<c:choose>
                        	<c:when test="${buyer != null && LU != null}">
		                        <div class="learning-btn-container">
		                            <a href="/lecture/player/player.hta?lectureNo=${lecture.no }" class="btn btn-default sy-btn-learning">학습하기</a>
		                        </div>
	                        </c:when>
	                        <c:when test="${buyer == null || LU == null }">
                        	<!-- floating btn start -->
	                        	<div class="lecture-floating-btn">
	                            	<div class="lecture-floating-top">
	                               	 	<div class="lecture-price-cover">
	                               	 		<c:choose>
	                               	 			<c:when test="${lecture.discountPrice > 0 }">
			                                    	<div class="lecture-price-section">
			                                        	<div class="lecture-price">
			                                            	<fmt:formatNumber value="${lecture.discountPrice }"></fmt:formatNumber>원 
			                                        		<c:if test="${lecture.discountRate > 0}">
			                                            		<del class="lecture-del-price"><fmt:formatNumber value="${lecture.price }"></fmt:formatNumber>원</del>
			                                        		</c:if>
			                                        	</div>
			                                        	<c:if test="${lecture.discountRate > 0}">
				                                      	  <div class="lecture-price-detail">(${lecture.discountRate }% 할인)</div>
			                                        	</c:if>
			                                    	</div>
	                               	 			</c:when>
	                               	 			<c:otherwise>
	                               	 				<div class="lecture-price-section">
			                                        	<div class="lecture-price">무료</div>
			                                        </div>
	                               	 			</c:otherwise>
	                               	 		</c:choose>
	                                    	<div class="lecture-btn-section">
                               	 			<c:choose>
                               	 				<c:when test="${lecture.discountPrice > 0 }">
			                                       	<div class="lecture-btn-cover">
			                                            <a href="/buynow/ordernowlectform.hta?lectuerno=${lecture.no }" class="btn lecture-purchase-btn">수강신청</a>
			                                        </div>
			                                    </c:when>
			                                    <c:otherwise>
			                                    	<div class="lecture-btn-cover">
			                                            <a href="/lecture/player/player.hta?lectureNo=${lecture.no }" class="btn lecture-purchase-btn">바로 학습하기</a>
			                                        </div>
			                                    </c:otherwise>
			                               </c:choose>         
		                                        <div class="lecture-sub-btn-cover">
		                                            <button class="btn sub-btn lecture-like-btn">
		                                                <i class="far fa-heart"></i> ${counts.likeCnt } 위시
		                                            </button>
		                                            <button href="/cart/insertCartLect.hta" class="btn sub-btn lecture-cart-btn">
		                                                <a href="/cart/addlectcart.hta?lectNo=${lecture.no }"><i class="fas fa-shopping-cart"></i> 수강 바구니</a>
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
	                       	</c:when>
							</c:choose>
	                    </div>
	                </div>
	            </div>
	        </section>
         	<!-- 샘플영상 모달화면 -->
			<div class="modal fade" id="modal-sample" role="dialog">
			   <div class="modal-dialog modal-lg">
			      <div class="modal-content" id="modal-sample-content">
			      <input type="hidden" name="lectNo" value="${lecture.no }"/>
			         <div class="modal-header">
			            <h4 class="modal-title"></h4>
			            <button type="button" class="close" data-dismiss="modal">&times;</button>
			         </div>
			         <div class="modal-body" id="video-body"></div>
			      </div>
			   </div>
			</div>		
		<!-- LectureDetail Menu start-->
       	<section class="leature-description_container">
		    <div class="container">
	        	<ul class="nav nav-pills" id="subNav">
	        	<c:if test="${LU != null }">
		            <li class="dashboard"><a href="dashboard.hta?lectureNo=${lecture.no }">대시보드</a></li>
	        	</c:if>
		            <li class="description"><a href="description.hta?lectureNo=${lecture.no }">강의소개</a></li>
		            <li class='curriculum'><a href="#">교육과정</a></li>
		            <li class='reviews'><a href="#">수강후기</a></li>
		        	<li class='is-active questions'><a href="question.hta?lectureNo=${lecture.no }">질문답변</a></li>
	        	</ul>
	    	</div>
		    <!-- LectureDetail Menu end-->