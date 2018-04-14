package com.ch.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.project.model.Board;
import com.ch.project.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	private BoardService bs;

	@RequestMapping("list")
	public String list(Model model) {
		List<Board> list = bs.getList();
		model.addAttribute("list", list);
		return "board/list";
	}

	@RequestMapping("view")
	public String view(int bno, Model model) {
		bs.updateReadCount(bno);
		Board board = bs.select(bno);
		model.addAttribute("board", board);
//		model.addAttribute("pageNum", pageNum);
		return "board/view";
	}

	@RequestMapping("insertForm") 
	public String insertForm(Model model){
		int bno=0;
		
		model.addAttribute("bno", bno);
//		model.addAttribute("pageNum", pageNum);
		return "board/insertForm";
	}
	@RequestMapping("insert")
	public String insert(Board board, Model model, HttpServletRequest request) {
		int number = bs.getMaxBno();
		
		board.setBno(number);
		int result = bs.insert(board);
		model.addAttribute("result", result);
//		model.addAttribute("pageNum", pageNum);
		return "board/insert";
	}
	@RequestMapping("updateForm")
	public String updateForm(int bno,Model model) {
		Board board = bs.select(bno);
		model.addAttribute("board", board);
//		model.addAttribute("pageNum", pageNum);
		return "board/updateForm";
	}
	@RequestMapping("update")
	public String update(Board board,Model model) {
		int result = bs.update(board);
		model.addAttribute("result", result);
//		model.addAttribute("pageNum", pageNum);
		return "board/update";
	}
	@RequestMapping("deleteForm")
	public String deleteForm(int bno, Model model) {
		Board board = bs.select(bno);
		model.addAttribute("board", board);
//		model.addAttribute("pageNum", pageNum);
		return "board/deleteForm";
	}
	@RequestMapping("delete")
	public String delete(int bno, Model model) {
		int result = bs.delete(bno);
//		model.addAttribute("pageNum", pageNum);
		model.addAttribute("result", result);
		return "board/delete";
	}
}