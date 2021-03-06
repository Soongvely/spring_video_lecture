package kr.co.coduck.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("LessonHistory")
public class LessonHistory {
	

	private int no;
	private int lectNo;
	private int lessonNo;
	private int userNo;
	private String isWatched;
	private int accumulateTime;
	private int lastTime;
	private Date create_date;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getLectNo() {
		return lectNo;
	}
	public void setLectNo(int lectNo) {
		this.lectNo = lectNo;
	}
	public int getLessonNo() {
		return lessonNo;
	}
	public void setLessonNo(int lessonNo) {
		this.lessonNo = lessonNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getIsWatched() {
		return isWatched;
	}
	public void setIsWatched(String isWatched) {
		this.isWatched = isWatched;
	}
	public int getAccumulateTime() {
		return accumulateTime;
	}
	public void setAccumulateTime(int accumulateTime) {
		this.accumulateTime = accumulateTime;
	}
	public int getLastTime() {
		return lastTime;
	}
	public void setLastTime(int lastTime) {
		this.lastTime = lastTime;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	@Override
	public String toString() {
		return "LessonHistory [no=" + no + ", lectNo=" + lectNo + ", lessonNo=" + lessonNo + ", userNo=" + userNo
				+ ", isWatched=" + isWatched + ", accumulateTime=" + accumulateTime + ", lastTime=" + lastTime
				+ ", create_date=" + create_date + "]";
	} 
	
	
}
