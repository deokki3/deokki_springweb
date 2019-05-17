package org.deokki.articleweb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("articleDao")

public class ArticleDaoImplUsingSpringJdbc implements ArticleDao {
	
	/**
	 * 글 목록 sql
	 */
	static final String LIST_ARTICLES = "SELECT articleId, title, name, cdate FROM article ORDER BY articleId desc LIMIT ?,?";
	
	/**
	 * 글 1개 조회 sql
	 */
	static final String GET_ARTICLE = "SELECT articleId, title, content, userId, name, cdate FROM article WHERE articleId=?";

	/**
	 * 글쓰기 sql
	 */
	static final String ADD_ARTICLE = "INSERT INTO article(title, content, userId, name) VALUES (?,?,?,?)";
	/**
	 * 카운트 sql
	 */
	static final String COUNT_ALL = "SELECT count(articleId) count FROM article";
	@Autowired
	JdbcTemplate jdbcTemplate;

	final RowMapper<Article> articleRowMapper = new BeanPropertyRowMapper<>(
			Article.class);
	
	//글 목록
	
	@Override
	public List<Article> selectAll(int offset, int count) {
		return jdbcTemplate.query(LIST_ARTICLES, articleRowMapper, offset, count);
	}

	//글 조회
	@Override
	public Article getArticle(String articleId) {
		return jdbcTemplate.queryForObject(GET_ARTICLE,
				new BeanPropertyRowMapper<>(Article.class), articleId);
	}
	
	//글쓰기
	@Override
	
	public void addArticle(Article article) {
			jdbcTemplate.update(ADD_ARTICLE, article.getTitle(),
				article.getContent(), article.getUserId(), article.getName());
	}
	//글 개수 카운트
	@Override
	public int countAll() {
		return jdbcTemplate.queryForObject(COUNT_ALL, Integer.class);
	}

}
