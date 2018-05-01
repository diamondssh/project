package com.ch.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.project.model.FreeBoard;
import com.ch.project.model.FreeReplyBoard;
import com.ch.project.service.FreeBoardService;
import com.ch.project.service.FreeReplyBoardService;

@Controller
public class FreeReplyBoardController {
	@Autowired
	private FreeReplyBoardService rbs;
	@Autowired
	private FreeBoardService bs;
	@RequestMapping("freeBoardRlist")
	public String rlist( int bno, Model model) {
		FreeBoard fboard = bs.select(bno);
		List<FreeReplyBoard> rlist =rbs.list(bno);
		model.addAttribute("fboard",fboard);
		model.addAttribute("rlist",rlist);
		return "freeboard/freeBoardRlist";
	}
	@RequestMapping("rInsert")
	public String rInsert(FreeReplyBoard rb, Model model) {
		rbs.insert(rb);
		return "redirect:freeBoardRlist.do?bno="+rb.getRbno();
	}
	@RequestMapping("rDelete")
	public String rDelete(FreeReplyBoard rb, Model model) {
		rbs.delete(rb.getRno());
		return "redirect:freeBoardRlist.do?bno="+rb.getRbno();
	}
	@RequestMapping("rUpdate")
	public String rUpdate(FreeReplyBoard rb, Model model) {
		rbs.update(rb);
		return "redirect:freeBoardRlist.do?bno="+rb.getRbno();
	}
	
}
