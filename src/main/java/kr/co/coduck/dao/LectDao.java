package kr.co.coduck.dao;

import java.util.List;

import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import kr.co.coduck.dto.ChapterDto;
import kr.co.coduck.dto.LectureCourseDto;
import kr.co.coduck.dto.LectureDto;
import kr.co.coduck.dto.UserByLectDto;
import kr.co.coduck.vo.Category;
import kr.co.coduck.vo.Lect;
import kr.co.coduck.vo.LectureCriteria;
import kr.co.coduck.vo.Lesson;

public interface LectDao {

	List<UserByLectDto> getLectListUserByNo(int userNo);

	Lect getLectByNo(int lectNo);

	List<LectureDto> getLectureByCategoryNo(int cateNo);

	LectureDto getLectureByLectureNo(int lectureNo);

	LectureDto getAllCountByLectureNo(int lectureNo);

	List<ChapterDto> getChapterByLectureNo(int lectureNo);

	List<Lesson> getLessonByChpaterNo(int lectureNo);
	
	List<LectureCourseDto> getLectureByCriteria(LectureCriteria cri);

	int getLectureCountByCriteria(LectureCriteria cri);
}
