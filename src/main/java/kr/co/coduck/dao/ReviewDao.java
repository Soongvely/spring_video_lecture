package kr.co.coduck.dao;

import java.util.List;

import kr.co.coduck.dto.ReviewStarDto;

public interface ReviewDao {

	// 별점 평균 계산
	List<ReviewStarDto> getAllReivewStarAvg(int lectureNo);
}
