package kr.co.coduck.service;

import java.util.List;

import kr.co.coduck.vo.Coupon;

public interface CouponService {

	void deleteCoupon(int couponNo);
	void addNewCoupon(Coupon coupon);
	void updateCouponByAdmin(Coupon coupon);
	Coupon getCouponByCouponNo(int couponNo);
	List<Coupon> getCouponsByAdmin();
	List<Coupon> getCouponsByUserNo(int userNo);
	
	// 체크된 쿠폰들(배열로 담겨있음)을 삭제
	void deleteCoupons(int[] couponNos);
	void insertCouponByAdmin(int couponNo, int[] userNos);
}
