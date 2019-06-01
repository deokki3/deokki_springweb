package org.deokki.article;

public class Article {

	String articleId;
	String title;
	String content;
	String userId;
	String name;
	String cdate;

	String udate;

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

	public String getUdate() {
		return udate;
	}

	public void setUdate(String udate) {
		this.udate = udate;
	}
<<<<<<< HEAD

=======
>>>>>>> 41c6b33146056297b4fbba4c059b31a684646fe7
	/**
	 * \n를 <br/> 로 바꾼다.
	 */
	public String getContentHtml() {
		if (content != null)
			return content.replace("\n", "<br/>");
		return null;
	}

	@Override
	public String toString() {
		return "\nArticle [articleId=" + articleId + ", title=" + title
				+ ", content=" + content + ", userId=" + userId + ", name="
<<<<<<< HEAD
				+ name + ", cdate=" + cdate + ", udate=" + udate + "]";
=======
				+ name + ", cdate=" + cdate + ", udate =" + udate + "]\n";
>>>>>>> 41c6b33146056297b4fbba4c059b31a684646fe7
	}

}