package kr.co.coduck.service;

import java.util.List;

import kr.co.coduck.vo.Category;

public interface CategoryService {

	List<Category> getAllLectureCategories();
	List<Category> getCatesByMainNo(int mainCateNo);
	Category getCategoryByCategoryNo(int cateNo); 
	List<Category> getLectureCategoryByAdmin();
	List<Category> getTestCategoryByAdmin();
}
