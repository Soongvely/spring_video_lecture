<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common/head.jsp" %>
<%@ include file="common/header.jsp" %>
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">    
	
	<c:if test="${param.error eq 'deny' }">
      <div class="alert alert-danger">
         <strong>서비스 거부</strong> 등급이 맞지 않아 서비스 요청이 거절되었습니다.
      </div>
   </c:if>
  
   <!-- main contents start -->
        <main id="main">
            <div class="main-content-wrapper">
                <section class="leature-description_container">
                    <div class="container">
                        <div class="">
                            <div class="teacher main-body">
                                <!-- main banner lecture -->
                                <section class="banner-container">
                                    <div class="main-banner-box">
                                        <!-- banner lecture -->
                                        <div class="banner-card lecture-card">
                                            <a href="">
                                                <span class="main banner-icon">
                                                    <img src="/resources/images/lecture/강좌48.png">
                                                </span>
                                            </a>
                                            <div class="banner-title">
                                                <h3>IT 웹 개발, 어렵지 않아요<i class="fab fa-apple" style="color: tomato;"></i></h3>
                                            </div>
                                            <div class="banner-comment">
                                                <p>
                                                    코딩… 나도 배워야 할 것 같은데,뭘 어떻게 시작해야할 지 망설이는 당신!
                                                    코린이라도 되고 싶다면 아니, 코린이에서 벗어나고 싶다면!
                                                    컴퓨터와 소통하기 위한 수 많은 언어들을 어디서부터 어떻게 배워야할지 코덕에서 알려드릴게요.🙂
                                                </p>
                                            </div>
                                        </div>

                                        <!-- main banner test -->
                                        <div class="banner-card test-card">
                                            <a href="">
                                                <span class="main banner-icon">
                                                    <img src="/resources/images/lecture/강좌11.png">
                                                </span>
                                            </a>
                                            <div class="banner-title">
                                                <h3>탄탄한 기출문제로 자격시험 완벽 대비! <i class="fab fa-apple" style="color: tomato;"></i></h3>
                                            </div>
                                            <div class="banner-comment">
                                                <p>
                                                    30년이 넘는 시간동안 무수히 많은 자격시험들이 출제되었는데, 
                                                    무수히 많은 자격시험 문제들을 연구해서 만든 자료를 토대로 코덕에서 기출문제 자료집을 제작하였습니다.
                                                    기출문제 풀이와 함께 해설강좌로 오답체크까지 한번에 진행하세요!
                                                </p>
                                            </div>
                                        </div>
                                        <!-- main banner community -->
                                        <div class="banner-card lecture-card">
                                            <a href="">
                                                <span class="main banner-icon">
                                                    <img src="/resources/images/lecture/강좌6.png">
                                                </span>
                                            </a>
                                            <div class="banner-title">
                                                <h3>함께 소통해요~<i class="fab fa-apple" style="color: tomato;"></i></h3>
                                            </div>
                                            <div class="banner-comment">
                                                <p>
                                                    코덕 커뮤니티에서 우리의 이야기와 궁금한 점들을 공유해보아요!🙂
                                                    <br>
                                                    궁금한 사항들은 1:1문의를 통해 글을 남겨주세요.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </section>

                                <div id="lecture-section">  
                                    <div class="lesson-container">
                                        <section class="new-lecture-container">
                                            <div class="header">
                                                <div class="courses_header">
                                                    <h2 class="title is-4 is-spaced">인기강좌 TOP 5
                                                        <span class="icon">
                                                             <i class="fas fa-angle-right"></i>
                                                        </span>
                                                    </h2>
                                                </div>
                                            </div>
                                            <div class="columns lesson-list-body">
                                                <!-- 강좌 start -->
                                                <div class="column lesson-tablet">
                                                    <div class="lecutre lesson-item">
                                                        <a class="lecture-item-front">
                                                            <div class="item-image">
                                                                <figure class="item-image-thumbnail">
                                                                    <img src="/resources/images/lecture/강좌10.jpg" class="">
                                                                    <div class="lesson-item-event-card">
                                                                        <i class=""></i>
                                                                        <span>20% 할인중</span>
                                                                    </div>
                                                                </figure>
                                                            </div>
                                                            <div class="item-contents">
                                                                <div class="lecture-item-title">
                                                                    파이썬입문과 크롤링기초 쌉가능
                                                                </div>
                                                                <div class="lecture-item-info">
                                                                    <div class="rating column is-half">
                                                                        <div class="rating-star">
                                                                            <div class="star_yellow">
                                                                                ★★★★★
                                                                            </div>
                                                                        </div>
                                                                    </div>  
                                                                    <div class="price column is-half">
                                                                        <del>₩10,000</del>
                                                                        <span class="discount_price">₩6,000</span>
                                                                    </div>
                                                                    <div class="item-info-bottom">
                                                                        <div class="student_num column is-half">50명</div>
                                                                        <div class="teacher_name">이숭숭</div>
                                                                    </div>  
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <!-- 강좌 썸네일 end -->
                                                <!-- 강좌 start -->
                                                <div class="column lesson-tablet">
                                                    <div class="lecutre lesson-item">
                                                        <a class="lecture-item-front">
                                                            <div class="item-image">
                                                                <figure class="item-image-thumbnail">
                                                                    <img src="/resources/images/lecture/강좌12.png" class="">
                                                                    <div class="lesson-item-event-card">
                                                                        <i class=""></i>
                                                                        <span>20% 할인중</span>
                                                                    </div>
                                                                </figure>
                                                            </div>
                                                            <div class="item-contents">
                                                                <div class="lecture-item-title">
                                                                    파이썬입문과 크롤링기초 쌉가능
                                                                </div>
                                                                <div class="lecture-item-info">
                                                                    <div class="rating column is-half">
                                                                        <div class="rating-star">
                                                                            <div class="star_yellow">
                                                                                ★★★★★
                                                                            </div>
                                                                        </div>
                                                                    </div>  
                                                                    <div class="price column is-half">
                                                                        <del>₩10,000</del>
                                                                        <span class="discount_price">₩6,000</span>
                                                                    </div>
                                                                    <div class="item-info-bottom">
                                                                        <div class="student_num column is-half">50명</div>
                                                                        <div class="teacher_name">이숭숭</div>
                                                                    </div>  
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <!-- 강좌 썸네일 end -->
                                                <!-- 강좌 start -->
                                                <div class="column lesson-tablet">
                                                    <div class="lecutre lesson-item">
                                                        <a class="lecture-item-front">
                                                            <div class="item-image">
                                                                <figure class="item-image-thumbnail">
                                                                    <img src="/resources/images/lecture/강좌12.png" class="">
                                                                    <div class="lesson-item-event-card">
                                                                        <i class=""></i>
                                                                        <span>20% 할인중</span>
                                                                    </div>
                                                                </figure>
                                                            </div>
                                                            <div class="item-contents">
                                                                <div class="lecture-item-title">
                                                                    파이썬입문과 크롤링기초 쌉가능
                                                                </div>
                                                                <div class="lecture-item-info">
                                                                    <div class="rating column is-half">
                                                                        <div class="rating-star">
                                                                            <div class="star_yellow">
                                                                                ★★★★★
                                                                            </div>
                                                                        </div>
                                                                    </div>  
                                                                    <div class="price column is-half">
                                                                        <del>₩10,000</del>
                                                                        <span class="discount_price">₩6,000</span>
                                                                    </div>
                                                                    <div class="item-info-bottom">
                                                                        <div class="student_num column is-half">50명</div>
                                                                        <div class="teacher_name">이숭숭</div>
                                                                    </div>  
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <!-- 강좌 썸네일 end -->
                                                <!-- 강좌 start -->
                                                <div class="column lesson-tablet">
                                                    <div class="lecutre lesson-item">
                                                        <a class="lecture-item-front">
                                                            <div class="item-image">
                                                                <figure class="item-image-thumbnail">
                                                                    <img src="/resources/images/lecture/강좌41.png" class="">
                                                                    <div class="lesson-item-event-card">
                                                                        <i class=""></i>
                                                                        <span>20% 할인중</span>
                                                                    </div>
                                                                </figure>
                                                            </div>
                                                            <div class="item-contents">
                                                                <div class="lecture-item-title">
                                                                    파이썬입문과 크롤링기초 쌉가능
                                                                </div>
                                                                <div class="lecture-item-info">
                                                                    <div class="rating column is-half">
                                                                        <div class="rating-star">
                                                                            <div class="star_yellow">
                                                                                ★★★★★
                                                                            </div>
                                                                        </div>
                                                                    </div>  
                                                                    <div class="price column is-half">
                                                                        <del>₩10,000</del>
                                                                        <span class="discount_price">₩6,000</span>
                                                                    </div>
                                                                    <div class="item-info-bottom">
                                                                        <div class="student_num column is-half">50명</div>
                                                                        <div class="teacher_name">이숭숭</div>
                                                                    </div>  
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <!-- 강좌 썸네일 end -->
                                                <!-- 강좌 start -->
                                                <div class="column lesson-tablet">
                                                    <div class="lecutre lesson-item">
                                                        <a class="lecture-item-front">
                                                            <div class="item-image">
                                                                <figure class="item-image-thumbnail">
                                                                    <img src="/resources/images/lecture/강좌10.jpg" class="">
                                                                    <div class="lesson-item-event-card">
                                                                        <i class=""></i>
                                                                        <span>20% 할인중</span>
                                                                    </div>
                                                                </figure>
                                                            </div>
                                                            <div class="item-contents">
                                                                <div class="lecture-item-title">
                                                                    파이썬입문과 크롤링기초 쌉가능
                                                                </div>
                                                                <div class="lecture-item-info">
                                                                    <div class="rating column is-half">
                                                                        <div class="rating-star">
                                                                            <div class="star_yellow">
                                                                                ★★★★★
                                                                            </div>
                                                                        </div>
                                                                    </div>  
                                                                    <div class="price column is-half">
                                                                        <del>₩10,000</del>
                                                                        <span class="discount_price">₩6,000</span>
                                                                    </div>
                                                                    <div class="item-info-bottom">
                                                                        <div class="student_num column is-half">50명</div>
                                                                        <div class="teacher_name">이숭숭</div>
                                                                    </div>  
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <!-- 강좌 썸네일 end -->
                                            </div>
                                        </section>        
                                        <!-- 신규강좌 섹션-->
                                        <section class="new-lecture-container">    
                                            <div class="main-course-list">
                                                <div class="header">
                                                    <div class="courses_header">
                                                        <h2 class="title is-4 is-spaced">따끈따끈, 신규 강좌
                                                            <span class="icon">
                                                                <i class="fas fa-angle-right"></i>
                                                           </span>
                                                        </h2>
                                                    </div>
                                                </div>
                                                <div class="horizontal">
                                                    <div class="my-lecture new-lecture-box">
                                                        <a href="">
                                                            <img src="/resources/images/lecture/강좌10.jpg" class="new-lecture-thumbnail">
                                                        </a>
                                                        <div class="my-lecture new-lecture-body">
                                                            <div class="new-lecture-details">
                                                                <a href="">
                                                                    <div class="new detail-title">
                                                                        <h4>스프링 기초다지기 쌉가능</h4>
                                                                    </div>
                                                                    <div class="new info-lect">
                                                                        <span> 12강 |  시간 : 150분</span>
                                                                    </div>
                                                                    <div class="new info-price">
                                                                        <strong class="discount">￦15,000</strong>
                                                                        <del class="rate">￦12,000</del>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <div class="wish-btn-box">
                                                                <div class="btn-cart">
                                                                    <a><button class="btn sm btn-default"><i class="glyphicon glyphicon-shopping-cart t-gray"></i></button></a>
                                                                </div>
                                                                <div class="btn-wish">
                                                                    <a><button class="btn sm btn-default"><i class="glyphicon glyphicon-heart-empty t-gray"></i></button></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="my-lecture new-lecture-box">
                                                        <a href="">
                                                            <img src="/resources/images/lecture/강좌10.jpg" class="new-lecture-thumbnail">
                                                        </a>
                                                        <div class="my-lecture new-lecture-body">
                                                            <div class="new-lecture-details">
                                                                <a href="">
                                                                    <div class="new detail-title">
                                                                        <h4>스프링 기초다지기 쌉가능</h4>
                                                                    </div>
                                                                    <div class="new info-lect">
                                                                        <span> 12강 |  시간 : 150분</span>
                                                                    </div>
                                                                    <div class="new info-price">
                                                                        <strong class="discount">￦15,000</strong>
                                                                        <del class="rate">￦12,000</del>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <div class="wish-btn-box">
                                                                <div class="btn-cart">
                                                                    <a><button class="btn sm btn-default"><i class="glyphicon glyphicon-shopping-cart t-gray"></i></button></a>
                                                                </div>
                                                                <div class="btn-wish">
                                                                    <a><button class="btn sm btn-default"><i class="glyphicon glyphicon-heart-empty t-gray"></i></button></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="my-lecture new-lecture-box">
                                                        <a href="">
                                                            <img src="/resources/images/lecture/강좌10.jpg" class="new-lecture-thumbnail">
                                                        </a>
                                                        <div class="my-lecture new-lecture-body">
                                                            <div class="new-lecture-details">
                                                                <a href="">
                                                                    <div class="new detail-title">
                                                                        <h4>스프링 기초다지기 쌉가능</h4>
                                                                    </div>
                                                                    <div class="new info-lect">
                                                                        <span> 12강 |  시간 : 150분</span>
                                                                    </div>
                                                                    <div class="new info-price">
                                                                        <strong class="discount">￦15,000</strong>
                                                                        <del class="rate">￦12,000</del>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <div class="wish-btn-box">
                                                                <div class="btn-cart">
                                                                    <a><button class="btn sm btn-default"><i class="glyphicon glyphicon-shopping-cart t-gray"></i></button></a>
                                                                </div>
                                                                <div class="btn-wish">
                                                                    <a><button class="btn sm btn-default"><i class="glyphicon glyphicon-heart-empty t-gray"></i></button></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="my-lecture new-lecture-box">
                                                        <a href="">
                                                            <img src="/resources/images/lecture/강좌10.jpg" class="new-lecture-thumbnail">
                                                        </a>
                                                        <div class="my-lecture new-lecture-body">
                                                            <div class="new-lecture-details">
                                                                <a href="">
                                                                    <div class="new detail-title">
                                                                        <h4>스프링 기초다지기 쌉가능</h4>
                                                                    </div>
                                                                    <div class="new info-lect">
                                                                        <span> 12강 |  시간 : 150분</span>
                                                                    </div>
                                                                    <div class="new info-price">
                                                                        <strong class="discount">￦15,000</strong>
                                                                        <del class="rate">￦12,000</del>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <div class="wish-btn-box">
                                                                <div class="btn-cart">
                                                                    <a><button class="btn sm btn-default"><i class="glyphicon glyphicon-shopping-cart t-gray"></i></button></a>
                                                                </div>
                                                                <div class="btn-wish">
                                                                    <a><button class="btn sm btn-default"><i class="glyphicon glyphicon-heart-empty t-gray"></i></button></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>     
                                            </div>    
                                        <!-- 신규강좌 섹션 종료-->
                                        </section>        
                                        <!-- 코덕 픽 섹션 시작 -->    
                                        <section class="new-lecture-container">
                                            <!-- 강좌 섹션 2-->
                                            <div class="header">
                                                <div class="courses_header">
                                                    <h2 class="title is-4 is-spaced">CODUCK's Pick
                                                        <span class="icon">
                                                            <i class="fas fa-angle-right"></i>
                                                       </span>
                                                    </h2>
                                                </div>
                                            </div>
                                            <div class="columns lesson-list-body">
                                                <!-- 강좌 start -->
                                                <div class="column lesson-tablet">
                                                    <div class="lecutre lesson-item">
                                                        <a class="lecture-item-front">
                                                            <div class="item-image">
                                                                <figure class="item-image-thumbnail">
                                                                    <img src="/resources/images/lecture/강좌10.jpg" class="">
                                                                    <div class="lesson-item-event-card">
                                                                        <i class=""></i>
                                                                        <span>20% 할인중</span>
                                                                    </div>
                                                                </figure>
                                                            </div>
                                                            <div class="item-contents">
                                                                <div class="lecture-item-title">
                                                                    파이썬입문과 크롤링기초 쌉가능
                                                                </div>
                                                                <div class="lecture-item-info">
                                                                    <div class="rating column is-half">
                                                                        <div class="rating-star">
                                                                            <div class="star_yellow">
                                                                                ★★★★★
                                                                            </div>
                                                                        </div>
                                                                    </div>  
                                                                    <div class="price column is-half">
                                                                        <del>₩10,000</del>
                                                                        <span class="discount_price">₩6,000</span>
                                                                    </div>
                                                                    <div class="item-info-bottom">
                                                                        <div class="student_num column is-half">50명</div>
                                                                        <div class="teacher_name">이숭숭</div>
                                                                    </div>  
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <!-- 강좌 썸네일 end -->
                                                <!-- 강좌 start -->
                                                <div class="column lesson-tablet">
                                                    <div class="lecutre lesson-item">
                                                        <a class="lecture-item-front">
                                                            <div class="item-image">
                                                                <figure class="item-image-thumbnail">
                                                                    <img src="/resources/images/lecture/강좌10.jpg" class="">
                                                                    <div class="lesson-item-event-card">
                                                                        <i class=""></i>
                                                                        <span>20% 할인중</span>
                                                                    </div>
                                                                </figure>
                                                            </div>
                                                            <div class="item-contents">
                                                                <div class="lecture-item-title">
                                                                    파이썬입문과 크롤링기초 쌉가능
                                                                </div>
                                                                <div class="lecture-item-info">
                                                                    <div class="rating column is-half">
                                                                        <div class="rating-star">
                                                                            <div class="star_yellow">
                                                                                ★★★★★
                                                                            </div>
                                                                        </div>
                                                                    </div>  
                                                                    <div class="price column is-half">
                                                                        <del>₩10,000</del>
                                                                        <span class="discount_price">₩6,000</span>
                                                                    </div>
                                                                    <div class="item-info-bottom">
                                                                        <div class="student_num column is-half">50명</div>
                                                                        <div class="teacher_name">이숭숭</div>
                                                                    </div>  
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <!-- 강좌 썸네일 end -->
                                                <!-- 강좌 start -->
                                                <div class="column lesson-tablet">
                                                    <div class="lecutre lesson-item">
                                                        <a class="lecture-item-front">
                                                            <div class="item-image">
                                                                <figure class="item-image-thumbnail">
                                                                    <img src="/resources/images/lecture/강좌15.jpg" class="">
                                                                    <div class="lesson-item-event-card">
                                                                        <i class=""></i>
                                                                        <span>20% 할인중</span>
                                                                    </div>
                                                                </figure>
                                                            </div>
                                                            <div class="item-contents">
                                                                <div class="lecture-item-title">
                                                                    파이썬입문과 크롤링기초 쌉가능
                                                                </div>
                                                                <div class="lecture-item-info">
                                                                    <div class="rating column is-half">
                                                                        <div class="rating-star">
                                                                            <div class="star_yellow">
                                                                                ★★★★★
                                                                            </div>
                                                                        </div>
                                                                    </div>  
                                                                    <div class="price column is-half">
                                                                        <del>₩10,000</del>
                                                                        <span class="discount_price">₩6,000</span>
                                                                    </div>
                                                                    <div class="item-info-bottom">
                                                                        <div class="student_num column is-half">50명</div>
                                                                        <div class="teacher_name">이숭숭</div>
                                                                    </div>  
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <!-- 강좌 썸네일 end -->
                                                <!-- 강좌 start -->
                                                <div class="column lesson-tablet">
                                                    <div class="lecutre lesson-item">
                                                        <a class="lecture-item-front">
                                                            <div class="item-image">
                                                                <figure class="item-image-thumbnail">
                                                                    <img src="/resources/images/lecture/강좌10.jpg" class="">
                                                                    <div class="lesson-item-event-card">
                                                                        <i class=""></i>
                                                                        <span>20% 할인중</span>
                                                                    </div>
                                                                </figure>
                                                            </div>
                                                            <div class="item-contents">
                                                                <div class="lecture-item-title">
                                                                    파이썬입문과 크롤링기초 쌉가능
                                                                </div>
                                                                <div class="lecture-item-info">
                                                                    <div class="rating column is-half">
                                                                        <div class="rating-star">
                                                                            <div class="star_yellow">
                                                                                ★★★★★
                                                                            </div>
                                                                        </div>
                                                                    </div>  
                                                                    <div class="price column is-half">
                                                                        <del>₩10,000</del>
                                                                        <span class="discount_price">₩6,000</span>
                                                                    </div>
                                                                    <div class="item-info-bottom">
                                                                        <div class="student_num column is-half">50명</div>
                                                                        <div class="teacher_name">이숭숭</div>
                                                                    </div>  
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <!-- 강좌 썸네일 end -->
                                                <!-- 강좌 start -->
                                                <div class="column lesson-tablet">
                                                    <div class="lecutre lesson-item">
                                                        <a class="lecture-item-front">
                                                            <div class="item-image">
                                                                <figure class="item-image-thumbnail">
                                                                    <img src="/resources/images/lecture/강좌10.jpg" class="">
                                                                    <div class="lesson-item-event-card">
                                                                        <i class=""></i>
                                                                        <span>20% 할인중</span>
                                                                    </div>
                                                                </figure>
                                                            </div>
                                                            <div class="item-contents">
                                                                <div class="lecture-item-title">
                                                                    파이썬입문과 크롤링기초 쌉가능
                                                                </div>
                                                                <div class="lecture-item-info">
                                                                    <div class="rating column is-half">
                                                                        <div class="rating-star">
                                                                            <div class="star_yellow">
                                                                                ★★★★★
                                                                            </div>
                                                                        </div>
                                                                    </div>  
                                                                    <div class="price column is-half">
                                                                        <del>₩10,000</del>
                                                                        <span class="discount_price">₩6,000</span>
                                                                    </div>
                                                                    <div class="item-info-bottom">
                                                                        <div class="student_num column is-half">50명</div>
                                                                        <div class="teacher_name">이숭숭</div>
                                                                    </div>  
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <!-- 강좌 썸네일 end -->
                                            </div>     
                                        <!-- 코덕 픽 섹션 종료-->
                                        </section>    

                                        <!-- 모의고사 섹션 -->
                                        <section class="new-test-container">    
                                            <div class="main-course-list">
                                                <div class="header">
                                                    <div class="courses_header">
                                                        <h2 class="title is-4 is-spaced">최신 모의고사 기출
                                                            <span class="icon">
                                                                <i class="fas fa-angle-right"></i>
                                                           </span>
                                                        </h2>
                                                    </div>
                                                </div>
                                                <div class="horizontal">
                                                    <div class="new-test new-test-box">
                                                        <a href="">
                                                            <img src="/resources/images/lecture/강좌10.jpg" class="new-test-thumbnail">
                                                        </a>
                                                        <div class="new-test new-test-body">
                                                            <div class="new-test-details">
                                                                <a href="">
                                                                    <div class="new detail-title">
                                                                        <h4>스프링 기초다지기 쌉가능</h4>
                                                                    </div>
                                                                    <div class="new info-test">
                                                                        <span> 12강 |  시간 : 150분</span>
                                                                    </div>
                                                                    <div class="new info-price">
                                                                        <strong class="price">￦15,000</strong>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <div class="wish-btn-box">
                                                                <div class="btn-cart">
                                                                    <a><button class="btn sm btn-default"><i class="glyphicon glyphicon-shopping-cart t-gray"></i></button></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>     
                                            </div>    
                                            <!-- 신규모의고사 섹션 종료-->
                                        </section>        
                                    </div>                       
                                </div>
                            </div>                      
                        </div>
                    </div>
                </section>
            </div>
        </main>
<%@ include file="common/footer.jsp" %>