package kr.co.coduck.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("LectureDto")
public class LectureDto {

	private int no;
	private int cateNo;
	private String title;
	private String info;
	private String infoTitle;
	private int price;
	private int discountPrice;
	private int discountRate;
	private String isFreed;
	private String isDisplay;
	private Date createDate;
	private int grade;
	private String tag;
	private String imagePath;
	private String samplePath;
	private String userName;
	private int userNo;
	private String userIntroduction;
	private String userImagePath;
	
	private int reviewStar;
	private int reviewCnt;
	private int studentCnt;
	private int likeCnt;
	
	public LectureDto() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getCateNo() {
		return cateNo;
	}

	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getInfoTitle() {
		return infoTitle;
	}

	public void setInfoTitle(String infoTitle) {
		this.infoTitle = infoTitle;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(int discountPrice) {
		this.discountPrice = discountPrice;
	}

	public int getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}

	public String getIsFreed() {
		return isFreed;
	}

	public void setIsFreed(String isFreed) {
		this.isFreed = isFreed;
	}

	public String getIsDisplay() {
		return isDisplay;
	}

	public void setIsDisplay(String isDisplay) {
		this.isDisplay = isDisplay;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getSamplePath() {
		return samplePath;
	}

	public void setSamplePath(String samplePath) {
		this.samplePath = samplePath;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserIntroduction() {
		return userIntroduction;
	}

	public void setUserIntroduction(String userIntroduction) {
		this.userIntroduction = userIntroduction;
	}

	public String getUserImagePath() {
		return userImagePath;
	}

	public void setUserImagePath(String userImagePath) {
		this.userImagePath = userImagePath;
	}
	
	
	public int getReviewStar() {
		return reviewStar;
	}

	public void setReviewStar(int reviewStar) {
		this.reviewStar = reviewStar;
	}

	public int getReviewCnt() {
		return reviewCnt;
	}

	public void setReviewCnt(int reviewCnt) {
		this.reviewCnt = reviewCnt;
	}

	public int getStudentCnt() {
		return studentCnt;
	}

	public void setStudentCnt(int studentCnt) {
		this.studentCnt = studentCnt;
	}

	public int getLikeCnt() {
		return likeCnt;
	}

	public void setLikeCnt(int likeCnt) {
		this.likeCnt = likeCnt;
	}

	@Override
	public String toString() {
		return "LectureDto [no=" + no + ", cateNo=" + cateNo + ", title=" + title + ", info=" + info + ", infoTitle="
				+ infoTitle + ", price=" + price + ", discountPrice=" + discountPrice + ", discountRate=" + discountRate
				+ ", isFreed=" + isFreed + ", isDisplay=" + isDisplay + ", createDate=" + createDate + ", grade="
				+ grade + ", tag=" + tag + ", imagePath=" + imagePath + ", samplePath=" + samplePath + ", userName="
				+ userName + ", userNo=" + userNo + ", userIntroduction=" + userIntroduction + ", userImagePath="
				+ userImagePath + ", reviewStar=" + reviewStar + ", reviewCnt=" + reviewCnt + ", studentCnt="
				+ studentCnt + ", likeCnt=" + likeCnt + "]";
	}

}
