package kr.co.coduck.web.controller;

import java.util.Comparator;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.coduck.dto.ChapterDto;
import kr.co.coduck.dto.LectureDto;
import kr.co.coduck.dto.ReviewStarDto;
import kr.co.coduck.service.CategoryService;
import kr.co.coduck.service.LectService;
import kr.co.coduck.service.ReviewService;
import kr.co.coduck.vo.Category;
import kr.co.coduck.vo.LectureCriteria;
import kr.co.coduck.vo.Lesson;

@Controller
@RequestMapping("/lecture")
public class LectureController {

	private static Logger log = Logger.getLogger(LectureController.class);

	@Autowired
	private LectService lectservice;

	@Autowired
	private ReviewService reviewService;

	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/main.hta")
	public String mainByCateNo(LectureCriteria cri, Model model) {

		List<Category> categories = categoryService.getAllLectureCategories();

		model.addAttribute("categories", categories);

		return "lecture/main";
	}

	@RequestMapping("/detail/description.hta")
	public String description(@RequestParam("lectureNo") int lectureNo, Model model) {

		LectureDto lecture = lectservice.getLectureByLectureNo(lectureNo);
		LectureDto counts = lectservice.getAllCountByLectureNo(lectureNo);

		List<ChapterDto> chapters = lectservice.getChapterByLectureNo(lectureNo);
		for (ChapterDto chapter : chapters) {
			List<Lesson> lessons = lectservice.getLessonByChpaterNo(chapter.getChapter().getNo());
			chapter.setLessons(lessons);
		}

		List<ReviewStarDto> reviewStarAvgs = reviewService.getAllReivewStarAvg(lectureNo);

		int[] tempStar = new int[5];

		reviewStarAvgs.forEach(r -> tempStar[r.getStar() - 1] = r.getStar());

		for (int i = 0; i < tempStar.length; i++) {
			if (tempStar[i] == 0)
				reviewStarAvgs.add(new ReviewStarDto(i + 1, 0, 0));
		}

		reviewStarAvgs.sort((o1, o2) -> o1.getStar() > o2.getStar() ? -1 : 1);

		model.addAttribute("reviewStarAvgs", reviewStarAvgs);
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

	@RequestMapping("/player/player.hta")
	public String player() {

		return "lecture/player/player";
	}
}
