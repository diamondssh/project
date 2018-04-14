package com.ch.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.project.model.Board;
import com.ch.project.service.BoardService;
import com.ch.project.service.PagingPgm;

@Controller
public class BoardController {
	@Autowired
	private BoardService bs;

	@RequestMapping("list")
	public String list(String pageNum, Board board,Model model) {
		List<Board> list = bs.getList(board);
		int rowPerPage = 10;
		if (pageNum==null || pageNum.equals(""))
			pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1)*rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		int total = bs.total(board);
		PagingPgm pp = new PagingPgm(total,rowPerPage,currentPage);
		int no = total - startRow + 1;
		board.setStartRow(startRow);
		board.setEndRow(endRow);
		// List<Board> list = bs.getList(startRow, endRow);
		model.addAttribute("pp", pp);
		model.addAttribute("no", no);
		model.addAttribute("list", list);
		return "board/list";
	}

	@RequestMapping("view")
	public String view(int bno, Model model,String pageNum) {
		bs.updateReadCount(bno);
		Board board = bs.select(bno);
		model.addAttribute("board", board);
		model.addAttribute("pageNum", pageNum);
		return "board/view";
	}

	@RequestMapping("insertForm") 
	public String insertForm(Model model, String pageNum){
		int bno=0;
		
		model.addAttribute("bno", bno);
		model.addAttribute("pageNum", pageNum);
		return "board/insertForm";
	}
	@RequestMapping("insert")
	public String insert(Board board, Model model, String pageNum, HttpServletRequest request) {
		int number = bs.getMaxBno();
		board.setBno(number);
		int result = bs.insert(board);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "board/insert";
	}
	@RequestMapping("updateForm")
	public String updateForm(int bno,Model model, String pageNum) {
		Board board = bs.select(bno);
		model.addAttribute("board", board);
		model.addAttribute("pageNum", pageNum);
		return "board/updateForm";
	}
	@RequestMapping("update")
	public String update(Board board,Model model,String pageNum) {
		int result = bs.update(board);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "board/update";
	}
	@RequestMapping("deleteForm")
	public String deleteForm(int bno, Model model,String pageNum) {
		Board board = bs.select(bno);
		model.addAttribute("board", board);
		model.addAttribute("pageNum", pageNum);
		return "board/deleteForm";
	}
	@RequestMapping("delete")
	public String delete(int bno, Model model,String pageNum) {
		int result = bs.delete(bno);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("result", result);
		return "board/delete";
	}
}