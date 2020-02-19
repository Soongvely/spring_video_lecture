package kr.co.coduck.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.co.coduck.dto.LectureCourseDto;
import kr.co.coduck.dto.LectureDto;
import kr.co.coduck.service.CategoryService;
import kr.co.coduck.service.LectService;
import kr.co.coduck.service.QuestionService;
import kr.co.coduck.vo.Answer;
import kr.co.coduck.vo.Category;
import kr.co.coduck.vo.LectureCriteria;
import kr.co.coduck.vo.Lesson;
import kr.co.coduck.vo.Pagination;
import kr.co.coduck.vo.Question;

@RequestMapping("/lecture/api")
@RestController
public class LectRestController {

	private static Logger log = Logger.getLogger(LectRestController.class);

	@Autowired
	private LectService lectService;
	
	@Autowired
	private QuestionService questionService;
	// @RequestMapping(name = "/lecture",method = RequestMethod.GET)

	// 카테고리 및 조건별 강좌 조회
	@PostMapping("/searchLecture")
	public Map<String, Object> mainByCateNo(@RequestBody LectureCriteria cri) {	// @RequestBody :폼으로 전송하고 Post 방식으로 받을 때

		// Pagination
		int totalCount = lectService.getLectureCountByCriteria(cri);

		Pagination pagination = new Pagination(cri.getPage(), totalCount, 16, 3);
		log.info("Pagination" + pagination);
		
		cri.setBeginIndex(pagination.getBeginIndex());
		cri.setEndIndex(pagination.getEndIndex());
		

		List<LectureCourseDto> lectures = lectService.getLectureByCriteria(cri);

		lectures.forEach(lecture -> {
			lecture.setLectureDto(lectService.getAllCountByLectureNo(lecture.getLecture().getNo()));
		});

		Map<String, Object> model = new HashMap<String, Object>();
		
		model.put("lectures", lectures);
		model.put("beginPage", pagination.getBeginPage());
		model.put("endPage", pagination.getEndPage());
		model.put("totalPage", pagination.getTotalPagesCount());
		
		return model;
	}
	
	// 질문 검색 
	@GetMapping("/searchQuestion") 
	public List<Question> questionByLectureNo(LectureCriteria cri) {
		
		List<Question> questions = questionService.getQuestionByLectureNo(cri);
		
		return questions;
	}
	
	@GetMapping("/getAnswer")
	public Answer getAnswerByQuestionNo(@RequestParam("questionNo") int questionNo) {
		
		return questionService.getAnswerByQuestionNo(questionNo);
	}
	
	@GetMapping("/lessonPlayer")
	public List<Lesson> lessonBylessonNo() {
		
		return null;
	}

}
