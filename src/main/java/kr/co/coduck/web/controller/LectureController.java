package kr.co.coduck.web.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.coduck.dao.LectDao;
import kr.co.coduck.dto.ChapterDto;
import kr.co.coduck.dto.LectureDto;
import kr.co.coduck.service.CategoryService;
import kr.co.coduck.service.LectService;
import kr.co.coduck.vo.Category;
import kr.co.coduck.vo.Lect;
import kr.co.coduck.vo.LectureCriteria;

@Controller
@RequestMapping("/lecture")
public class LectureController {

	private static Logger log = Logger.getLogger(LectureController.class);

	@Autowired
	private LectService lectservice;
	
	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/detail/description.hta")
	public String description(@RequestParam("lectureNo") int lectureNo, Model model) {

		LectureDto lecture = lectservice.getLectureByLectureNo(lectureNo);
		LectureDto counts = lectservice.getAllCountByLectureNo(lectureNo);
		
		List<ChapterDto> chapters = lectservice.getChapterByLectureNo(lectureNo);
	
		chapters.forEach(c -> log.info("c: " + c));
		
		model.addAttribute("lecture", lecture);
		model.addAttribute("counts", counts);
		model.addAttribute("chapters", chapters);
		
		return "lecture/detail/description";
	}

	@RequestMapping("/detail/dashboard.hta")
	public String dashboard() {
		return "lecture/detail/dashboard";
	}

	@RequestMapping("/detail/question.hta")
	public String question() {
		return "lecture/detail/question";
	}

	@RequestMapping("/main.hta")
	public String mainByCateNo(LectureCriteria criteria, Model model) {

		List<Category> categories = categoryService.getAllLectureCategories();
		List<LectureDto> lectures = lectservice.getLectureByCategoryNo(criteria.getCateNo());

		model.addAttribute("categories", categories);
		model.addAttribute("lectures", lectures);

		return "lecture/main";
	}

	@RequestMapping("/player/player.hta")
	public String player() {
		return "lecture/player/player";
	}
}
