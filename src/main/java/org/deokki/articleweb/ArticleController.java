package org.deokki.articleweb;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ArticleController {

	@Autowired
	ArticleDao articleDao;

	static final Logger logger = LogManager.getLogger();

	
	@RequestMapping("/register/write")
	public String handleStep1() {
		return "register/write";
	}


	@PostMapping("/register/check")
	public String addArticle(Article article) {
			article.setName("박덕기");
			article.setUserId("2015041002");
			articleDao.addArticle(article);
			logger.debug("글이 등록되었습니다. {}", article);
			return "register/check";
	}
	
	@GetMapping("/register/view")
    public void view(@RequestParam("articleId") String articleId, Model model) {
        Article article = articleDao.getArticle(articleId);
        model.addAttribute("article", article);
	}

	@GetMapping("/articles")
	public String articles(
			@RequestParam(value = "page", defaultValue = "1") int page,
			Model model) {

		//페이지 당 가져오는 행의 수
		final int COUNT = 100;
		//시작점
		int offset = (page - 1) * COUNT;

		List<Article> articleList = articleDao.selectAll(offset, COUNT);

		int totalCount = articleDao.countAll();

		model.addAttribute("totalCount", totalCount);
		model.addAttribute("articles", articleList);
		return "articles";
	}
}