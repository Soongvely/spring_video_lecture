package kr.co.coduck.service;

import java.util.List;

import kr.co.coduck.dto.ChapterDto;
import kr.co.coduck.dto.LectureDto;
import kr.co.coduck.dto.UserByLectDto;
import kr.co.coduck.vo.Lect;

public interface LectService {

	List<UserByLectDto> getLectListUserByNo(int userNo);
	Lect getLectByNo(int lectNo);
	
	List<LectureDto> getLectureByCategoryNo(int cateNo);
	LectureDto getLectureByLectureNo(int lectureNo);
	
	LectureDto getAllCountByLectureNo(int lectureNo);
	List<ChapterDto> getChapterByLectureNo(int lectureNo);
}
