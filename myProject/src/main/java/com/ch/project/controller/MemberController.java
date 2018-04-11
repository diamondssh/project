package com.ch.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.project.model.Member;
import com.ch.project.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	@RequestMapping("main")
	public String main() {
		return "views/main";
	}
	@RequestMapping("memInsertForm")
	public String memInsertForm() {
		return "member/memInsertForm";
	}
	@RequestMapping("memInsert")
	public String memInsert(Member mb, Model model) {
		int result = ms.insert(mb);
		model.addAttribute("result", result);
		return "member/memInsert";
	}
	@RequestMapping("loginForm")
	public String loginForm() {
		return "log/loginForm";
	}
	@RequestMapping("login")
	public String login(Member member, Model model, HttpSession session) {
		int result;
		Member mem = ms.select(member);
		if (mem == null) {
			//등록되지않은 회원
			result = 0;
		} else if (member.getPw().equals(mem.getPw())) {
			// 로그인 - 아이디/패스워드 일치
			session.setAttribute("id", member.getId());
			result = 1;
		} else {
			//등록은 되어있으나, 아이디/패스워드 불일치
			result = -1;
		}
		return "log/login";
	}
}
