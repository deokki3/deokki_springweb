package org.deokki.articleweb;

import java.util.List;


public interface ArticleDao {

	/**
	 * 리스트
	 */
	List<Article> selectAll(int offset, int count);
	
	/**
	 * 등록 수
	 */
	int countAll();

	/**
	 * 조회
	 */
	Article getArticle(String articleId);
	
	/**
	 * 
	 * 
	 * 등록하기
	 */
	void addArticle(Article article);

}