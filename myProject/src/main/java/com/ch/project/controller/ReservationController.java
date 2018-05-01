package com.ch.project.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.project.model.Member;
import com.ch.project.model.Reserv;
import com.ch.project.service.PagingPgm;
import com.ch.project.service.ReservService;

@Controller
public class ReservationController {

	@Autowired
	private ReservService rs;

	@RequestMapping("adminPage")
	public String adminPage() {
		return "reserv/adminPage";
	}

	@RequestMapping("reservInsert") // 데이터 체크후 입력
	public String reservInsert(Reserv reserv, Model model, String id) {
		List<Reserv> list = rs.chk(reserv);
		if (list == null || list.size() == 0) {
			String name = rs.getName(id);
			int number = rs.getMaxNum();
			reserv.setRno(number);
			reserv.setId(id);
			reserv.setName(name);
			int result = rs.insert(reserv);
			model.addAttribute("result", result);
		}

		model.addAttribute("list", list);
		return "reserv/reservInsert";
	}

	@RequestMapping("reservList")
	public String reservList(Model model, String id, HttpSession session) {
		if (id != null) {

			List<Reserv> list = rs.list(id);
			int no = 1;
			model.addAttribute("no", no);

			model.addAttribute("list", list);

		}
		return "reserv/reservList";

	}

	@RequestMapping("reservListAll")
	public String reservListAll(String pageNum, Reserv reserv, Model model) {
		int rowPerPage = 10;
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		int total = rs.total(reserv);
		PagingPgm pp = new PagingPgm(total, rowPerPage, currentPage);
		int no = total - startRow + 1;
		reserv.setStartRow(startRow);
		reserv.setEndRow(endRow);
		List<Reserv> list = rs.listAll(reserv);
		model.addAttribute("pp", pp);
		model.addAttribute("no", no);
		model.addAttribute("list", list);

		return "reserv/reservListAll";
	}

	@RequestMapping("reservForm")
	public String reservForm(HttpSession session) {

		return "reserv/reservForm";
	}

	// reservChk 에서 체크후 인설트하게 만듬
	// @RequestMapping("reservInsert")
	// public String reservInsert(Reserv reserv, Model model) {
	// int number = rs.getMaxNum();
	// reserv.setRno(number);
	// int result = rs.insert(reserv);
	// model.addAttribute("result", result);
	// return "reserv/reservInsert";
	// }

	@RequestMapping("delete")
	public String delete(int rno, Model model) {
		int result = rs.delete(rno);
		model.addAttribute("result", result);

		return "reserv/delete";
	}

	@RequestMapping("updateForm")
	public String updateForm(int rno, Model model) {
		Reserv reserv = rs.select(rno);
		model.addAttribute("reserv", reserv);
		return "reserv/updateForm";
	}

	@RequestMapping("reservUpdate") // 데이터 체크후 변경
	public String reservUpdate(Reserv reserv, Model model) {
		List<Reserv> list = rs.chk(reserv);
		if (list == null || list.size() == 0) {
			int result = rs.update(reserv);
			model.addAttribute("result", result);
		}
		model.addAttribute("list", list);
		return "reserv/reservUpdate";
	}

	@RequestMapping("reservAdmin")
	public String reservAdmin() {
		return "reserv/reservAdmin";
	}

}
