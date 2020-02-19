package kr.co.coduck.dao;

import java.util.List;
import java.util.Map;

import kr.co.coduck.dto.OrderTestDetailListDto;
import kr.co.coduck.vo.OrdTest;
import kr.co.coduck.vo.OrdTestInfo;

public interface OrderTestDao {

	void insertOrderTest(OrdTest ordTest);
	void insertOrderTestInfo(OrdTestInfo ordTestInfo);
	List<OrderTestDetailListDto> getOrderTestInfoByOrderNo(int userNo);
	OrdTest getOrdTestByTestNoNUserNo(Map<String, Integer> map);
}
