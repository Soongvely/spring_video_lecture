package kr.co.coduck.dto;

import org.apache.ibatis.type.Alias;

@Alias("SearchTestDetailDto")
public class SearchTestDetailDto {
	
	private int testNo;
	private int mainCateNo;
	private String mainCateName;
	private int subCateNo;
	private String subCateName;
	private String testEp;
	private String testName;
	private int testQtCnt;
	private int testPrice;
	private String testDone;
	private Double testAvg;
	
	public SearchTestDetailDto() {}

	public int getTestNo() {
		return testNo;
	}

	public void setTestNo(int testNo) {
		this.testNo = testNo;
	}

	public int getMainCateNo() {
		return mainCateNo;
	}

	public void setMainCateNo(int mainCateNo) {
		this.mainCateNo = mainCateNo;
	}

	public String getMainCateName() {
		return mainCateName;
	}

	public void setMainCateName(String mainCateName) {
		this.mainCateName = mainCateName;
	}

	public int getSubCateNo() {
		return subCateNo;
	}

	public void setSubCateNo(int subCateNo) {
		this.subCateNo = subCateNo;
	}

	public String getSubCateName() {
		return subCateName;
	}

	public void setSubCateName(String subCateName) {
		this.subCateName = subCateName;
	}

	public String getTestEp() {
		return testEp;
	}

	public void setTestEp(String testEp) {
		this.testEp = testEp;
	}

	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}

	public int getTestQtCnt() {
		return testQtCnt;
	}

	public void setTestQtCnt(int testQtCnt) {
		this.testQtCnt = testQtCnt;
	}

	public String getTestDone() {
		return testDone;
	}

	public void setTestDone(String testDone) {
		this.testDone = testDone;
	}

	public Double getTestAvg() {
		return testAvg;
	}

	public void setTestAvg(Double testAvg) {
		this.testAvg = testAvg;
	}

	public int getTestPrice() {
		return testPrice;
	}

	public void setTestPrice(int testPrice) {
		this.testPrice = testPrice;
	}

	@Override
	public String toString() {
		return "SearchTestDetailDto [testNo=" + testNo + ", mainCateNo=" + mainCateNo + ", mainCateName=" + mainCateName
				+ ", subCateNo=" + subCateNo + ", subCateName=" + subCateName + ", testEp=" + testEp + ", testName="
				+ testName + ", testQtCnt=" + testQtCnt + ", testPrice=" + testPrice + ", testDone=" + testDone
				+ ", testAvg=" + testAvg + "]";
	}
	
}