package com.ch.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("main")
	public String main() {
		return "main/main";
	}
	@RequestMapping("top")
	public String top() {
		return "main/top";
	}

	@RequestMapping("article")
	public String article() {
		return "main/article";
	}

	@RequestMapping("footer")
	public String footer() {
		return "main/footer";
	}

	@RequestMapping("main2")
	public String main2() {
		return "main/main2";
	}
	@RequestMapping("mypage")
	public String mypage() {
		return "main/mypage";
	}
}