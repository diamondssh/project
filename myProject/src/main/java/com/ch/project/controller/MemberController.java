package com.ch.project.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.project.model.Member;
import com.ch.project.service.MemberService;
import com.ch.project.service.PagingPgm;

@Controller
public class MemberController {

	@Autowired
	private MemberService ms;

	@RequestMapping("loginForm")
	public String loginForm() {
		return "member/loginForm";
	}

	@RequestMapping("login")
	public String login(Member member, Model model, HttpSession session) {
		Member mb = ms.select(member.getId());
		int result = 0;
		if (mb == null) {
			result = -1;

		} else if (mb.getDel().equals("y")) {
			result = -2;

		} else if (mb.getPw().equals(member.getPw())) {
			result = 1;
			session.setAttribute("id", member.getId());

		}
		model.addAttribute("result", result);
		return "member/login";
	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.removeAttribute("id");
		session.invalidate();
		return "member/logout";
	}

	@RequestMapping("memberForm")
	public String memberForm() {
		return "member/memberForm";
	}

	@RequestMapping("memberInsert")
	public String memberInsert(Member member, Model model) {

		int result = ms.insert(member);
		model.addAttribute("result", result);
		return "member/memberInsert";
	}

	@RequestMapping("memberList")
	public String memberList(String pageNum, Member member, Model model) {
		int rowPerPage = 10;
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		int total = ms.total(member);
		PagingPgm pp = new PagingPgm(total, rowPerPage, currentPage);
		int no = total - startRow + 1;
		member.setStartRow(startRow);
		member.setEndRow(endRow);
		List<Member> list = ms.getList(member);
		model.addAttribute("pp", pp);
		model.addAttribute("no", no);
		model.addAttribute("list", list);

		return "member/memberList";
	}

	@RequestMapping("memberUpForm") //
	public String memberUpForm(String id, Model model) {
		Member member = ms.select(id);
		model.addAttribute("member", member);
		return "member/memberUpForm";
	}

	@RequestMapping("memberUpdate")
	public String memberUpdate(Member member, Model model) {
		int result = ms.update(member);
		model.addAttribute("result", result);
		return "member/memberUpdate";
	}

	@RequestMapping("memberDelete")
	public String memberDelete(String id, Model model, HttpSession session) {
		int result = ms.delete(id);
		session.removeAttribute("id");
		session.invalidate();
		model.addAttribute("result", result);
		return "member/memberDelete";
	}
}
