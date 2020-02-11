<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CODUCK - 1등 온라인 강좌</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<link href="<c:url value="/resources/css/sy-style.css" />" rel="stylesheet">
</head>
<script>
	$(function () {
	
	    $(window).on('scroll', function() {
	        const scrollTop = $(this).scrollTop();
	
	        if (scrollTop < 150) {
	            $('.sy-navbar').removeClass('navbar-fixed-top');
	            $("#root").css("margin-top","0");
	            $(".sy-navbar").css("background","white");
	        } else {
	            $('.sy-navbar').addClass('navbar-fixed-top');
	            $("#root").css("margin-top","69px");
	            $(".sy-navbar").css({background: "rgb(255, 236, 171)"});
	            $(".sy-logo").css("color", "#f4b527");
	        }
	    });
	});

</script>
<body>
  <div id="root">
    <nav class="navbar sy-navbar">
        <div class="nav sy-nav-container">
          <div class="navbar-header">
              <a class="navbar-logo" href="#"><img src="/resources/images/logo/coduck.ico"/></a>
              <a class="sy-logo" href="#">CODUCK</a>
          </div>
      
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
              <li class="dropdown">
                <a class="dropdown-toggle t-gray" data-toggle="dropdown" href="#" style="font-size: 17px;"> IT강좌 <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">html/css</a></li>
                  <li><a href="#">Java</a></li>
                  <li><a href="#">Database</a></li>
                  <li><a href="#">Spring</a></li>
                  <li><a href="#">Back End</a></li>
                  <li><a href="#">Front End</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a class="dropdown-toggle t-gray" data-toggle="dropdown" href="#" style="font-size: 17px;"> 커뮤니티 <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">게시판</a></li>
                  <li><a href="#">공지사항</a></li>
                </ul>
              </li>
            </ul>

            <form class="navbar-form navbar-left" action="/action_page.php">
              <div class="input-group">
                <input type="text" class="form-control search-box" placeholder="Search" name="search">
                <div class="input-group-btn">
                  <button class="btn btn-default sy-btn-search" type="submit">
                    <i class="glyphicon glyphicon-search"></i>
                  </button>
                </div>
              </div>
            </form>    

            <ul class="nav navbar-nav">
              <li><a href="/user/userprofil.hta" class="t-gray" style="font-size: 16px;">수강생</a></li>
            </ul>  

            <ul class="nav navbar-nav navbar-right">
	            <li><a href="/user/login.hta" class="t-gray"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	            <li><a href="#" class="t-gray"><i class="fas fa-user-plus"></i> Sign Up</a></li>
	            <ul class="nav navbar-nav navbar-right hidden">
	                <li><a href="#"><span class="glyphicon glyphicon-shopping-cart t-gray"></span></a></li>
	                <li><a href="#"><span class="glyphicon glyphicon-heart-empty t-gray"></span></a></li>
	                <li><a href="#"><span class="glyphicon glyphicon-bullhorn t-gray"></span></a></li>
	                <li><a href="#"><span class="glyphicon glyphicon-log-out t-gray"></span></a></li>
	            </ul>
	        </ul>  
          </div>
        </div>
      </nav>
      <div class="smart-bar">
        <button class="btn btn-smart-bar-close pull-right">X</button>
          <div class="container smart-bar-comment">
            <span><i class="glyphicon glyphicon-leaf smart-bar-logo"></i> </span></span>
            <span><strong>&nbsp&nbsp CODUUK</strong>에 오신걸 환영합니다. 여러분의 지식을 공유해주세요!</span>
          </div>
      </div>