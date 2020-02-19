package kr.co.coduck.service;

import java.util.List;
import java.util.Map;

import kr.co.coduck.dto.ChapterDto;
import kr.co.coduck.dto.LectureCourseDto;
import kr.co.coduck.dto.LectureDto;
import kr.co.coduck.dto.LessonDto;
import kr.co.coduck.dto.UserByLectDto;
import kr.co.coduck.vo.Lect;
import kr.co.coduck.vo.LectureCriteria;
import kr.co.coduck.vo.Lesson;

public interface LectService {

	List<UserByLectDto> getLectListUserByNo(int userNo);
	Lect getLectByNo(int lectNo);
	
	List<LectureDto> getLectureByCategoryNo(int cateNo);
	LectureDto getLectureByLectureNo(int lectureNo);
	
	LectureDto getAllCountByLectureNo(int lectureNo);

	List<ChapterDto> getChapterByLectureNo(int lectureNo);
	List<Lesson> getLessonByChpaterNo(int chapterNo);

	List<LectureCourseDto> getLectureByCriteria(LectureCriteria cri);
	
	int getLectureCountByCriteria(LectureCriteria cri);
	
	LessonDto getProgressPercentInDashboard(Map<String, Object> map);

	
	List<LessonDto> getLectProcessivityByUserNo(int userNo);
	List<Lesson> getLessonByRecent(Map<String, Object> map);
	
	List<Lect> getFindLectByUserNo(int userNo);

}
