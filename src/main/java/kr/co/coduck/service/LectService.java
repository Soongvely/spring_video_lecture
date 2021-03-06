package kr.co.coduck.service;

import java.util.List;
import java.util.Map;

import kr.co.coduck.dto.ChapterDto;
import kr.co.coduck.dto.IncomeDto;
import kr.co.coduck.dto.LectureCourseDto;
import kr.co.coduck.dto.LectureDto;
import kr.co.coduck.dto.LessonDto;
import kr.co.coduck.vo.Lect;
import kr.co.coduck.vo.LectureCriteria;
import kr.co.coduck.vo.Lesson;
import kr.co.coduck.vo.LessonHistory;

public interface LectService {
	

	List<LessonDto> getLectListUserByNo(int userNo);
	Lect getLectByNo(int lectNo);

	List<LectureDto> TopFiveLecturesByLike();
	List<LectureDto> TopFourNewLectures();
	List<LectureDto> TopFiveFreeLectures();
	List<LectureDto> TopFourTestLectures();
	
	List<LectureDto> getLectureByCategoryNo(int cateNo);
	LectureDto getLectureByLectureNo(int lectureNo);
	List<LectureDto> getLectureListByCriteria(LectureCriteria cri);

	int getTeachersLectureCountByCriteria(LectureCriteria cri);

	LessonDto getLessonCountAndLengthByLectureNo(int lectureNo);

	LectureDto getAllCountByLectureNo(int lectureNo);

	List<ChapterDto> getChapterByLectureNo(int lectureNo);

	List<Lesson> getLessonByChpaterNo(int chapterNo);

	List<LectureCourseDto> getLectureByCriteria(LectureCriteria cri);

	int getLectureCountByCriteria(LectureCriteria cri);

	LessonDto getProgressPercentInDashboard(Map<String, Object> map);

	List<LessonDto> getLectProcessivityByUserNo(int userNo);

	List<Lesson> getLessonByRecent(Map<String, Object> map);

	LectureCourseDto getLectureCourseByLecureNo(int lectureNo);
	
	List<IncomeDto> getTeacherIncomeByCriteria(LectureCriteria cri);
	IncomeDto getTeacherIncomeStatistics(int userNo);
	double getTeacherAvgScore(int userNo);
	
	List<Lect> getFindLectByUserNo(int userNo);
	
	LessonHistory getLessonHistoryByLessonHistory(LessonHistory lessonHistory);
	Lesson getLessonByLessonNo(int lessonNo);
	Lesson getFirstLessonByLectureNo(int lectureNo);
	List<LessonHistory> getAllLessonHistoryByMap(Map<String, Object> map);
	
	void insertLessonHistory(LessonHistory lessonHistory);
	void updateLessonByLessonHistory(LessonHistory lessonHistory);

	Lect getIsPurchaseLectureByUser(Map<String, Object> map);
	void insertLecture(Lect lecture);
}
