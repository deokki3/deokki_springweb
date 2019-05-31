package org.deokki.book.chap13;

import org.deokki.book.chap11.Member;
import org.deokki.book.chap11.MemberDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class ChangePwdController {
	
	@Autowired
	MemberDao memberDao;
	
	
	@PostMapping("/member/changePwd")
	public String submit(
			@RequestParam("currentPassword") String currentPassword,
			@RequestParam("newPassword") String newPassword,
			@SessionAttribute("MEMBER") Member member, Model model) {

		int updatedRows = memberDao.changePassword(member.getMemberId(),
				currentPassword, newPassword);

		if (updatedRows > 0) {
			return "member/changedPwd";
		} else {
			model.addAttribute("mode", "FAILURE");
			return "member/changePwdForm";
		}
}
}