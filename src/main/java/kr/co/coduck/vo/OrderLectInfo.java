package kr.co.coduck.vo;

import org.apache.ibatis.type.Alias;

@Alias("OrderLectInfo")
public class OrderLectInfo {

	private int no;
	private int lectNo;
	private int orderNo;
	private Integer couponNo;
	private String reviewEnabled;
	private int ordLectAmount;
	
	public OrderLectInfo() {
		
	}

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

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public Integer getCouponNo() {
		return couponNo;
	}

	public void setCouponNo(Integer couponNo) {
		this.couponNo = couponNo;
	}

	public String getReviewEnabled() {
		return reviewEnabled;
	}

	public void setReviewEnabled(String reviewEnabled) {
		this.reviewEnabled = reviewEnabled;
	}
	public int getOrdLectAmount() {
		return ordLectAmount;
	}

	public void setOrdLectAmount(int ordLectAmount) {
		this.ordLectAmount = ordLectAmount;
	}

	@Override
	public String toString() {
		return "OrderLectInfo [no=" + no + ", lectNo=" + lectNo + ", orderNo=" + orderNo + ", couponNo=" + couponNo
				+ ", reviewEnabled=" + reviewEnabled + "]";
	}
	
	
}
