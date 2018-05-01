package com.ch.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.project.model.FreeBoard;
import com.ch.project.service.FreeBoardService;
import com.ch.project.service.PagingPgm;

@Controller
public class FreeBoardController {
	@Autowired
	private FreeBoardService bs;

	@RequestMapping("freeBoardList")
	public String list(String pageNum, FreeBoard fboard,Model model) {
		int rowPerPage = 10;
		if (pageNum==null || pageNum.equals(""))
			pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1)*rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		int total = bs.total(fboard);
		PagingPgm pp = new PagingPgm(total,rowPerPage,currentPage);
		int no = total - startRow + 1;
		fboard.setStartRow(startRow);
		fboard.setEndRow(endRow);
		List<FreeBoard> list = bs.getList(fboard);
		// List<Board> list = bs.getList(startRow, endRow);
		model.addAttribute("pp", pp);
		model.addAttribute("no", no);
		model.addAttribute("list", list);
		return "freeboard/freeBoardList";
	}

	@RequestMapping("freeBoardView")
	public String view(int bno, Model model,String pageNum) {
		bs.updateReadCount(bno);
		FreeBoard fboard = bs.select(bno);
		model.addAttribute("fboard", fboard);
		model.addAttribute("pageNum", pageNum);
		return "freeboard/freeBoardView";
	}

	@RequestMapping("freeBoardInsertForm") 
	public String insertForm(Model model, String pageNum){
		int bno=0;
		
		model.addAttribute("bno", bno);
		model.addAttribute("pageNum", pageNum);
		return "freeboard/freeBoardInsertForm";
	}
	@RequestMapping("freeBoardInsert")
	public String insert(FreeBoard fboard, Model model, String pageNum, HttpServletRequest request) {
		int number = bs.getMaxBno();
		fboard.setBno(number);
		int result = bs.insert(fboard);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "freeboard/freeBoardInsert";
	}
	@RequestMapping("freeBoardUpdateForm")
	public String updateForm(int bno,Model model, String pageNum) {
		FreeBoard fboard = bs.select(bno);
		model.addAttribute("fboard", fboard);
		model.addAttribute("pageNum", pageNum);
		return "freeboard/freeBoardUpdateForm";
	}
	@RequestMapping("freeBoardUpdate")
	public String update(FreeBoard fboard,Model model,String pageNum) {
		int result = bs.update(fboard);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "freeboard/freeBoardUpdate";
	}
	@RequestMapping("freeBoardDeleteForm")
	public String deleteForm(int bno, Model model,String pageNum) {
		FreeBoard fboard = bs.select(bno);
		model.addAttribute("fboard", fboard);
		model.addAttribute("pageNum", pageNum);
		return "freeboard/freeBoardDeleteForm";
	}
	@RequestMapping("freeBoardDelete")
	public String delete(int bno, Model model,String pageNum) {
		int result = bs.delete(bno);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "freeboard/freeBoardDelete";
	}
}