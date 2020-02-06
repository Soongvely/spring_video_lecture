<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../../common/header.jsp" %>
<%@ include file="sub-bar.jsp"%>
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
                                    <ul>
                                        <li>
                                            <i class="glyphicon glyphicon-ok"></i>
                                            &nbsp 리엑트 개발
                                        </li>
                                        <li>
                                            <i class="glyphicon glyphicon-ok"></i>
                                            &nbsp 서브 사이드 렌더링
                                        </li>
                                        <li>
                                            <i class="glyphicon glyphicon-ok"></i>
                                            &nbsp 검색 엔진 최적화
                                        </li>
                                    </ul>
                                </div>
                                <div class="body">
                                    <h3 class="body-title">제로초의 React로 배우는 20시간짜리(어마어마) 풀스택 강좌!</h3>
                                    <p class="body-contents">
                                        트위터와 비슷한(이라고 쓰고 짝퉁이라 읽는다) 제로초의 시그니처 프로젝트 NodeBird SNS를 만들어보며,
                                        Next.js(SSR) + React Hooks + Redux + Redux saga + Ant Design + Styled
                                        Components + Node + Express + Sequelize(MySQL)를 배웁니다.
                                        검색엔진 최적화와 AWS 배포(간단하게 EC2 + Lambda + S3 + Route53 사용)는 보너스!
                                    </p>
                                </div>
                                <div class="lecture-instructor">
                                    <h3 class="sub-heading">지식공유자 소개</h3>
                                    <div class="teacher-profile">
                                        <div class="teacher-profile-image">
                                            <figure class="image">
                                                <img src="/resources/images/logo/coduck.ico" width="70px" />
                                                <span class="teacher-profile-name">이숭숭</span>
                                            </figure>
                                        </div>
                                        <ul>
                                            <li>안녕하세요. 숭숭입니다.</li>
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
                                        <!-- chapter-header start-->
                                        <div class="chapter-header">
                                            <div class="chapter-header-left">
                                                <span class="section_header_icon plus">
                                                    <i class="glyphicon glyphicon-plus"></i>
                                                </span>
                                                <span class="section_header_icon minus">
                                                    <i class="glyphicon glyphicon-minus"></i>
                                                </span>
                                                <span class="unit_title">섹션 0. Hello, Next.js</span>
                                            </div>
                                            <div class="chapter-header-right">
                                                <span class="unit_length">7 강의</span>
                                                <span class="unit_time"><i class="far fa-clock"></i>
                                                    79 : 23</span>
                                            </div>
                                        </div>
                                        <div class="chapter-header">
                                            <div class="chapter-header-left">
                                                <span class="section_header_icon plus">
                                                    <i class="glyphicon glyphicon-plus"></i>
                                                </span>
                                                <span class="section_header_icon minus">
                                                    <i class="glyphicon glyphicon-minus"></i>
                                                </span>
                                                <span class="unit_title">섹션 1. Hello, Next.js</span>
                                            </div>
                                            <div class="chapter-header-right">
                                                <span class="unit_length">7 강의</span>
                                                <span class="unit_time"><i class="far fa-clock"></i>
                                                    79 : 23
                                                </span>
                                            </div>
                                        </div>
                                        <div class="lesson_cover">
                                            <div class="unit_item">
                                                <div class="col-sm-10 unit_item_left">
                                                    <i class="far fa-play-circle"></i>
                                                    <span class="unit_item-title">스프링의 기초</span>
                                                </div>
                                                <div class="unit_item_right">
                                                    <span class="unit_time"><i class="far fa-clock"
                                                            style="margin-right: 4px;"></i>
                                                        17 : 27
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- chapter-cover end-->
                                </div>
                            </div>
                            <!-- 교육과정 end -->

                            <!-- 공개일자 -->
                            <div class="lecture-date">
                                <h3 class="sub-heading">공개 일자</h3>
                                <div style="padding-left: 1rem;">2019년 11월 26일</div>
                            </div>
                            <!-- 수강후기 start -->
                            <div class="lecture-reviews" id="reviews">
                                <h3>수강 후기</h3>
                                <div class="review-box">
                                    <div class="average">
                                        <span class="average_num">5.0</span>
                                        <span class="average_star">
                                            <div class="rating_star">
                                                <div class="review-star-solid">
                                                    <span class="star_yellow">★★★★★</span>
                                                </div>
                                            </div>
                                        </span>
                                        <h5 class="review_total">10개의 수강평</h5>
                                    </div>
                                    <div class="review-progress_bars">
                                        <div class="review_counting">
                                            <label>5점</label>
                                            <progress class="progress is-link" max="10" value="10"></progress>
                                        </div>
                                        <div class="review_counting">
                                            <label>4점</label>
                                            <progress class="progress is-link" max="10" value=""></progress>
                                        </div>
                                        <div class="review_counting">
                                            <label>3점</label>
                                            <progress class="progress is-link" max="10" value=""></progress>
                                        </div>
                                        <div class="review_counting">
                                            <label>2점</label>
                                            <progress class="progress is-link" max="10" value=""></progress>
                                        </div>
                                        <div class="review_counting">
                                            <label>1점</label>
                                            <progress class="progress is-link" max="10" value=""></progress>
                                        </div>
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
    
<%@ include file="../../common/footer.jsp" %>