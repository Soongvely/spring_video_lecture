package kr.co.coduck.service;

import java.util.List;
import java.util.Map;

import kr.co.coduck.dto.SearchTestDto;
import kr.co.coduck.dto.TestQtDto;
import kr.co.coduck.dto.TestResultDto;
import kr.co.coduck.dto.TestSubjResultDto;
import kr.co.coduck.form.SearchTestForm;
import kr.co.coduck.form.TestSubmitForm;
import kr.co.coduck.vo.Test;
import kr.co.coduck.vo.TestQt;
import kr.co.coduck.vo.TestResult;
import kr.co.coduck.vo.TestSubj;
import kr.co.coduck.vo.TestSubjResult;
import kr.co.coduck.vo.ViewCk;

public interface TestService {
	
	SearchTestDto searchTest(SearchTestForm form, int userNo);
	
	void insertTest(Test test);
	
	void insertTestQt(TestQt qt);
	
	Test getTestByNo(int no);
	
	List<TestQtDto> getTestQtsDtoByNo(int testNo);
	
	List<TestSubj> getTestSubjsByTestNo(int testNo);

	void insertTestResultNSubjResult(TestSubmitForm form, int userNo);
	
	TestResult getTestResultByTestNoNUserNo(int testNo, int userNo);
	
	List<TestSubjResultDto> getTestSubjResultDtosByTestNoNUserNo(int testNo, int userNo);
	
	List<TestResultDto> getTestResultDtosByTestNoNUserNo(Map<String, Object> map);
	
	
}
