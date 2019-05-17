package org.deokki.articleweb;

public class Article {
	// 글 번호
	String articleId;

	// 제목
	String title;

	// 내용
	String content;

	// 학번
	String userId;

	// 이름
	String name;

	// 등록 날짜
	String cdate;

	
	public String getArticleId() {
		return articleId;
	}

	public void setArticleId(String articleId) {
		this.articleId = articleId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCdate() {
		return cdate;
	}

	public void setCdate(String cdate) {
		this.cdate = cdate;
	}

	@Override
	public String toString() {
		return "Article [articleId=" + articleId + ", title=" + title
				+ ", content=" + content + ", userId=" + userId + ", name="
				+ name + ", cdate=" + cdate + "]\n";
	}
}