/**
 * details common.js
 */

	// detail sub-navbar
	$(function() {
	    $("#subNav li").on('click', function () {
	    	
	    	var path = location.pathname.split("/")[3];
	    	const name = $(this).attr('class');
	    	
	    	if(path != "description.hta")
	    		location.href = "/lecture/detail/description.hta" + location.search + "&pg=" + name ;
	    	
	        
	        if (name == 'questions' || name == 'dashboard') return;
	        // offset() 지정한 엘리먼트의 꼭다리 값 알려줌 
	        const scrollTop = $("#" + name).offset().top - 70;
	        // animate({name:value}, 속도ms); jquery에 애니메이션 기능 함수
	        $('html, body').animate({
	            scrollTop
	        }, 600);
	    });
	    
	    // 구매하기 창 fixed, scroll
	    $(window).scroll(function() {
	    	var scrollTop = $(this).scrollTop();
	    	if(scrollTop > 300) {
	    		$(".lecture-floating-btn").css("top",'260px');
	    	} else {
	    		$(".lecture-floating-btn").css("top",'176px');
	    	}
	    })
	});  
	

	