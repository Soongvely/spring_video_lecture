package kr.co.coduck.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import kr.co.coduck.utils.DateUtils;

@Alias("Coupon")
public class Coupon {

	private Integer no;
	private String title;
	private String detail;
	private String enabled;
	private Date createDate;
	private Date startDate;
	private Date endDate;
	private int discountPrice;
	private int discountRate;
	private int amount;
	private String limited;
	
	public Coupon() {}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getEnabled() {
		return enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
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

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getLimited() {
		return limited;
	}

	public void setLimited(String limited) {
		this.limited = limited;
	}

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}
	
	public String getFmtStartDate() {
		return DateUtils.dateToString(startDate);
	}
	public String getFmtEndDate() {
		return DateUtils.dateToString(endDate);
	}
	
	
}
