package kr.co.coduck.dto;

import java.util.List;

import org.apache.ibatis.type.Alias;

import kr.co.coduck.vo.Lesson;

@Alias("UserLessonDto")
public class UserLessonDto {

	private List<Lesson> lesson;
	private LessonDto lessonDto;
	private int completedCount;	// 유저가 완료한 레슨 개수
	private int totalAccumulcate;	// 유저의 누적 학습 시간
	
	public UserLessonDto() {}

	public List<Lesson> getLesson() {
		return lesson;
	}

	public void setLesson(List<Lesson> lesson) {
		this.lesson = lesson;
	}

	public LessonDto getLessonDto() {
		return lessonDto;
	}

	public void setLessonDto(LessonDto lessonDto) {
		this.lessonDto = lessonDto;
	}

	public int getCompletedCount() {
		return completedCount;
	}

	public void setCompletedCount(int completedCount) {
		this.completedCount = completedCount;
	}

	public int getTotalAccumulcate() {
		return totalAccumulcate;
	}

	public void setTotalAccumulcate(int totalAccumulcate) {
		this.totalAccumulcate = totalAccumulcate;
	}

	@Override
	public String toString() {
		return "UserLessonDto [lesson=" + lesson + ", lessonDto=" + lessonDto + ", completedCount=" + completedCount
				+ ", totalAccumulcate=" + totalAccumulcate + "]";
	}

}
