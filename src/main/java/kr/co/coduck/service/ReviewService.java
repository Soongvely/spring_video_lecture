package kr.co.coduck.service;

import java.util.List;

import kr.co.coduck.dto.ReviewStarDto;

public interface ReviewService {

	List<ReviewStarDto> getAllReivewStarAvg(int lectureNo);
}
