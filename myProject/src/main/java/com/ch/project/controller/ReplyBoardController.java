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
	@RequestMapping("rlist")
	public String rlist( int bno, Model model) {
		Board board = bs.select(bno);
		List<ReplyBoard> rlist =rbs.list(bno);
		model.addAttribute("board",board);
		model.addAttribute("rlist",rlist);
		return "board/rlist";
	}
	@RequestMapping("rInsert")
	public String rInsert(ReplyBoard rb, Model model) {
		rbs.insert(rb);
		return "redirect:rlist.do?bno="+rb.getRbno();
	}
	@RequestMapping("rDelete")
	public String rDelete(ReplyBoard rb, Model model) {
		rbs.delete(rb.getRno());
		return "redirect:rlist.do?bno="+rb.getRbno();
	}
	@RequestMapping("rUpdate")
	public String rUpdate(ReplyBoard rb, Model model) {
		rbs.update(rb);
		return "redirect:rlist.do?bno="+rb.getRbno();
	}
	
}
