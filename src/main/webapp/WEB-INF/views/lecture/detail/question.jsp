<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/head.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="sub-bar.jsp" %> 
      
		<!-- question start -->
		<div class="question container">
	        <div class="lecture-question" id="questionApp">
	            <div class="columns">
	                <div class="col-sm-9">
	                    <div class="lecture-question">
	                        <div class="add-post">
	                             <button class="sy-btn sy-btn-question" data-toggle="modal" data-target="#myModal">질문 작성</button>
	                        </div>
	                        <div class="question search-form">
	                            <label class="label search-label" for="search">
	                              <span class="visually-hidden">질문 검색</span>
	                              <input id="search" v-model="keyword" class="question search-input" type="text" placeholder="질문을 검색해보세요" value="">
	                            </label>
	                            <button class="btn btn-search" v-on:click="searchQuestion" >검색</button>
	                        </div>
	                        <div class="posts-container" id="questions">
	                        
	                            <div class="post-container-box" v-for="question in questions">
	                                <div class="post">
	                                    <figure class="post-left-image is-rounded">
	                                        <img class="is-rounded" src="/resources/images/logo/coduck.ico" width="49px">
	                                    </figure>
	                                    <div class="post-contents">
	                                        <div class="contents">
	                                            <p>
	                                              <strong class="contents-title">{{question.title}} </strong>
	                                              <small>
	                                                <span class="writer"><strong>{{question.}} </strong></span>
	                                                <span class="post updated_date">날자</span>
	                                                <span class="option"></span>
	                                              </small>
	                                              <br>
	                                              <span class="article_body"><p>ㄴㅇ</p></span>
	                                            </p>
	                                          </div>
	                                          <div class="post-comment">
	                                            <div class="comments">
	                                                <svg aria-hidden="true" data-prefix="fas" width="16" data-icon="comment" class="svg-inline--fa fa-comment fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M256 32C114.6 32 0 125.1 0 240c0 49.6 21.4 95 57 130.7C44.5 421.1 2.7 466 2.2 466.5c-2.2 2.3-2.8 5.7-1.5 8.7S4.8 480 8 480c66.3 0 116-31.8 140.6-51.4 32.7 12.3 69 19.4 107.4 19.4 141.4 0 256-93.1 256-208S397.4 32 256 32z"></path></svg>
	                                                <span class="number">0</span>
	                                            </div>
	                                          </div>
	                                    </div>
	                                </div>
	                                <div class="answer_container">
	                                    <div class="review-answer-item">
	                                    	<figure class="review-image-container">
	                                            <img class="review_image" src="" width="50px" />
	                                        </figure>
	                                        <div class="review-answer-box">
	                                            <div class="answer-contents">
	                                                <div class="answer_header">
	                                                    <strong id="answer_user_id"></strong>
	                                                    <span class="answer update_date"><fmt:formatDate value="" pattern="yy-MM-dd"/></span>
	                                                </div>
	                                                <div class="review_answer_body"></div>
	                                            </div>
	                                        </div>
	                                    </div>
	                               </div>
	                            </div>
	                            
	                            <nav class="pagination sy-pagination" role="navagation" aria-label="pagination">
	                                <ul class="pagination">
	                                    <li><a href="#"><i class="fas fa-angle-left"></i></a></li>
	                                    <li class="active"><a href="#">1</a></li>
	                                    <li><a href="#">2</a></li>
	                                    <li><a href="#">3</a></li>
	                                    <li><a href="#"><i class="fas fa-angle-right"></i></a></li>
	                                  </ul>
	                            </nav>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            
                <!-- Modal -->
                <div class="modal fade question-madal" id="myModal" role="dialog">
                    <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <input class="modal-title" placeholder="제목을 입력해주세요.">
                        </div>
                        <div class="modal-body">
                            <textarea class="modal-text">
                               질문 입력
                            </textarea>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                            <button type="submit" class="btn btn-info" data-dismiss="modal">등록</button>
                        </div>
                    </div>
                    </div>
                </div>
	        </div>
	    </div>
		<!-- question end -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script>
	var lectureNo = ${param.lectureNo} || 0;
	
	var app = new Vue ({
		el: '#questionApp',
		data: {
			questions: [],
			keyword: '',
		},
		methods: {
			searchQuestion: function() {
				const keyword = this.keyword;
				$.getJSON("/lecture/api/searchQuestion.hta",{no:lectureNo,keyword}, function(result) {
					console.log(questions,result);
					questions = result;
				})
			}
		}
	});



</script>
<%@ include file="../../common/footer.jsp" %>