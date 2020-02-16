package kr.co.coduck.web.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.co.coduck.dto.LectureCourseDto;
import kr.co.coduck.dto.LectureDto;
import kr.co.coduck.service.CategoryService;
import kr.co.coduck.service.LectService;
import kr.co.coduck.service.QuestionService;
import kr.co.coduck.vo.Category;
import kr.co.coduck.vo.LectureCriteria;
import kr.co.coduck.vo.Pagination;
import kr.co.coduck.vo.Question;

@RequestMapping("/lecture/api")
@RestController
public class LectRestController {

	private static Logger log = Logger.getLogger(LectRestController.class);

	@Autowired
	private LectService lectService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private QuestionService questionService;
	// @RequestMapping(name = "/lecture",method = RequestMethod.GET)

	// 카테고리별, 조건별 강좌 조회
	@PostMapping("/searchLecture")
	public List<LectureCourseDto> mainByCateNo(@RequestBody LectureCriteria cri) {	// @RequestBody :폼으로 전송하고 Post 방식으로 받을 때

		// Pagenation
		int totalCount = lectService.getLectureCountByCriteria(cri);
		log.info("totalCount >> " + totalCount);

		Pagination pagination = new Pagination(cri.getPage(), totalCount, 16, 3);
		log.info("Pagination >> " + pagination);

		cri.setBeginIndex(pagination.getBeginIndex());
		cri.setEndIndex(pagination.getEndIndex());

		List<LectureCourseDto> lectures = lectService.getLectureByCriteria(cri);
		log.info("cri>> " + cri);
		

		lectures.forEach(lecture -> {
			lecture.setLectureDto(lectService.getAllCountByLectureNo(lecture.getLecture().getNo()));
		});

		return lectures;
	}
	
	@GetMapping("/searchQuestion") 
	public List<Question> questionByLectureNo(LectureCriteria cri) {
		log.info("CRI : " + cri);
		
		List<Question> questions = questionService.getQuestionByLectureNo(cri);
		log.info("질문" + questions);
		
		return questions;
	}

}
