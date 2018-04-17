package com.ch.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.project.model.Board;
import com.ch.project.model.ReplyBoard;
import com.ch.project.service.BoardService;
import com.ch.project.service.ReplyBoardService;

@Controller
public class ReplyBoardController {
	@Autowired
	private ReplyBoardService rbs;
	@Autowired
	private BoardService bs;
	@RequestMapping("rlist/num/{num}")
	public String rlist(@PathVariable int bno, Model model) {
		Board board = bs.select(bno);
		List<ReplyBoard> rlist =rbs.list(bno);
		model.addAttribute("board",board);
		model.addAttribute("rlist",rlist);
		return "rlist";
	}
	
}
