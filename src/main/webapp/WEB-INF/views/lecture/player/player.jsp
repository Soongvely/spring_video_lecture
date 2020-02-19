<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../../common/tag.jsp" %>
<%@ include file="../../common/head.jsp" %>

<!-- sy.css -->
<link href="<c:url value="/resources/css/sy-player.css" />" rel="stylesheet">   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

    <div id="root">
        <main id="main">
            <section class="lecture-container">
                <a class="toggle-left is-hidden-tablet"></a>
                    <aside class="lecture-nav lecture-nav-left">
                        <div class="lecture-nav-left-header">
                            <h5>${lecture.title }</h5>
                            <p>
                                <span>기간:무제한</span>
                            </p>
                            <div class="lecture-progress">
                                <label>진도율 : ${lessonDto.viewCount }강/${lessonDto.totalCount }강 (${lessonDto.percent }%) | 시간 : ${lessonDto.totalAccumulate }분/${lessonDto.totalTime }분</label>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-info" role="progressbar"aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"style="width:30%">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="curriculum">
                            <ul>
                                <li class="list unit unit-chapter">
                                    <span class="list-item unit-title">스프링의 기초란?</span>
                                    <ul class="list unit unit-lesson">
                                        <li class="list-item unit-lesson" data-lesson-no="${lesson.no }">
                                            <span class="list-item lesson-title">레슨1 </span>
                                            <span class="unit-checked-icon">
                                                <i class="fas fa-check-circle"></i>  
                                            </span>    
                                        </li>
                                        <li class="list-item unit-lesson">
                                            <span class="list-item lesson-title">레슨2 </span>
                                            <span class="unit-checked-icon">
                                                <i class="fas fa-check-circle"></i>
                                            </span>    
                                        </li>
                                    </ul>
                                </li>
                                <li class="list unit unit-chapter">
                                    <span class="list-item unit-title">스프링의 기초란?</span>
                                </li>
                                <li class="list unit unit-chapter">
                                    <span class="list-item unit-title">스프링의 기초란?</span>
                                </li>
                                <li class="list unit unit-chapter">
                                    <span class="list-item unit-title">스프링의 기초란?</span>
                                </li>
                            </ul>
                        </div>
                    </aside>
                    <div class="contents-container center">
                        <header class="contents-header-nav">
                            <div class="toggle-left">
                                <a class="btn btn-sm toggle-btn-nav-left is-outlined">
                                    <i class="fas fa-list-ol"></i>
                                </a>
                            </div>
                            <div class="unit-title">
                                <h3>스프링 프로젝트 생성</h3>
                            </div>
                            <div class="right-buttons">
                                <button class="btn go-out-lecture is-outlined">
                                    <span>
                                        <i class="glyphicon glyphicon-new-window"></i> 나가기
                                    </span>
                                </button>
                                <button class="btn toggle-right is-outlined">
                                    <span>
                                        <i class="far fa-question-circle"></i> 질문하기
                                    </span>
                                </button>
                            </div>
                        </header>
                        <div class="contents-unit-body">
                            <div class="player-container">
                               <video src="/resources/video/sample.mp4" type="video/mp4" class="lesson-video" controls></video>
                            </div>
                        </div>
                        <footer class="contents-footer-nav navbar">
                            <div class="footer-nav-item">
                                <button class="btn btn-default is-outlined">
                                    <span class="btn-before-lesson">
                                        <i class="fas fa-step-backward"></i>
                                         이전강의
                                    </span>
                                </button>
                                <button class="btn btn-default is-outlined">
                                    <span class="btn-next-lesson">
                                        <i class="fas fa-check"></i>
                                    </span>
                                </button>
                                 <button class="btn btn-default is-outlined">
                                    <span class="btn-next-lesson">
                                        <i class="fas fa-step-forward"></i>
                                         다음강의
                                    </span>
                                </button>
                            </div>
                        </footer>
                    </div>
                    <div class="lecture-nav lecture-nav-right closed">
                        <div class="right-header">
                            <a class="toggle-btn-closed">
                                <i class="fas fa-times"></i>
                            </a>
                            <h4>질문 게시판</h4>
                            <div class="question-editor">
                                <div class="search search-bar search-question">
                                    <input type="text" class="form-control search-box" name="search">
                                    <i class="glyphicon glyphicon-search"></i>
                                </div>
                                <div class="btn-question">
                                    <button class="btn btn-sm btn-default">질문하기</button>
                                </div>
                                <div class="question-editor-form">

                                </div>
                            </div>
                        </div>
                        <div class="unit-question-list">
                            <ul>
                                <li class="list-item-box">
                                    <article class="list-item-question">
                                        <figure class="left-image is-rounded">
                                            <img class="is-rounded" src="/resources/images/logo/coduck.ico"" width="49px">
                                        </figure>
                                        <div class="item-title">
                                            <strong class="contents-title">연습자료 </strong>
                                            <span class="writer"> sungsil kim</span>
                                        </div>
                                        <div class="item-contents">
                                            <div class="contents">
                                                <p>
                                                    연습자료는 어디서 받나요? 강의를 잘 들었지만, 연습을 해 볼 수가 없어 다 잊어버린 듯 합니다.
                                                </p>
                                            </div>
                                            <div class="question-comment">
                                                <div class="comments">
                                                    <i class="fas fa-comment"></i>
                                                    <span class="answer-count">0</span>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                </li>
                                <li class="list-item-box">
                                    <article class="list-item-question">
                                        <figure class="left-image is-rounded">
                                            <img class="is-rounded" src="/resources/images/logo/coduck.ico" width="49px">
                                        </figure>
                                        <div class="item-title">
                                            <strong class="contents-title">연습자료 </strong>
                                            <span class="writer"> sungsil kim</span>
                                        </div>
                                        <div class="item-contents">
                                            <div class="contents">
                                                <p>
                                                    연습자료는 어디서 받나요? 강의를 잘 들었지만, 연습을 해 볼 수가 없어 다 잊어버린 듯 합니다.
                                                </p>
                                            </div>
                                            <div class="question-comment">
                                                <div class="comments" fxd-data="{&quot;count&quot;:0}">
                                                    <svg aria-hidden="true" data-prefix="fas" width="16" data-icon="comment" class="svg-inline--fa fa-comment fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"></svg>
                                                    <span class="number">0</span>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                </li>
                                <li class="list-item-box">
                                    <article class="list-item-question">
                                        <figure class="left-image is-rounded">
                                            <img class="is-rounded" src="/resources/images/logo/coduck.ico" width="49px">
                                        </figure>
                                        <div class="item-title">
                                            <strong class="contents-title">연습자료 </strong>
                                            <span class="writer"> sungsil kim</span>
                                        </div>
                                        <div class="item-contents">
                                            <div class="contents">
                                                <p>
                                                    연습자료는 어디서 받나요? 강의를 잘 들었지만, 연습을 해 볼 수가 없어 다 잊어버린 듯 합니다.
                                                </p>
                                            </div>
                                            <div class="question-comment">
                                                <div class="comments">
                                                    <svg aria-hidden="true" data-prefix="fas" width="16" data-icon="comment" class="svg-inline--fa fa-comment fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"></svg>
                                                    <span class="number">0</span>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                </li>
                            </ul>
                        </div>
                    </div>
            </section>
        </main>
    </div>
</body>
<script>

	// 레슨명 클릭 시 active 효과
    $(".list.unit.unit-lesson li").click(function() {
        if ($(this).hasClass(".active")) return;
        $(".unit-lesson").removeClass("active");
        $(this).addClass("active");

    })

	// 강좌 코스 사이드바 슬라이드 
    var $sidebar = $(".lecture-nav-left");
    var $sidebarBtn = $(".toggle-btn-nav-left");

    $sidebarBtn.on("click", function() {
        $sidebar.toggleClass('is-active');
        
        if($sidebar.hasClass('is-active')) {
            $('.overlay').fadeIn();
            $(".toggle-btn-nav-left i").removeClass("fas fa-list-ol").addClass("fas fa-times");
            $sidebarBtn.removeClass("none-space-left").addClass("space-left");
        
        } else {
            $('.overlay').fadeOut();
            $(".toggle-btn-nav-left i").removeClass("fas fa-times").addClass("fas fa-list-ol");
            $sidebarBtn.removeClass("space-left").addClass("none-space-left");
        }
    }); 

	// 질문하기 사이드바 슬라이드
    $questionbar = $(".lecture-nav-right");

    $(".toggle-right").click(function() {
        $questionbar.removeClass("closed").addClass("opened");
    });

    $(".toggle-btn-closed").on("click", function() {
        $questionbar.removeClass("opened").addClass("closed");
    }); 
    
    // 강의영상 에이작스
    $(".list-item.unit-lesson").on("click", function () {
    	
    	var lessonNo = $(this).data("lesson-no");
    	
    	$.ajax({
    		url: "",
    	});
    });
    
</script> 
</html>