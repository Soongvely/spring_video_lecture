package kr.co.coduck.dto;

public class LessonDto {

	private int lessonCount;	// 총 레슨 개수
	private int totalTime;		// 총 레슨 시간
	public int getLessonCount() {
		return lessonCount;
	}
	public void setLessonCount(int lessonCount) {
		this.lessonCount = lessonCount;
	}
	public int getTotalTime() {
		return totalTime;
	}
	public void setTotalTime(int totalTime) {
		this.totalTime = totalTime;
	}
	@Override
	public String toString() {
		return "LessonDto [lessonCount=" + lessonCount + ", totalTime=" + totalTime + "]";
	}
	
	
}
