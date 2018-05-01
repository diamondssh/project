package com.ch.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.project.dao.ReservDao;
import com.ch.project.model.Reserv;

@Service
public class ReservServiceImpl implements ReservService {

	@Autowired
	private ReservDao rd;

	public List<Reserv> list(String id) {

		return rd.list(id);
	}

	@Override
	public int insert(Reserv reserv) {

		return rd.insert(reserv);
	}

	@Override
	public int delete(int rno) {

		return rd.delete(rno);
	}

	@Override
	public int getMaxNum() {
		return rd.getMaxNum();
	}

	@Override
	public Reserv select(int rno) {

		return rd.select(rno);
	}

	@Override
	public int update(Reserv reserv) {

		return rd.update(reserv);
	}

	@Override
	public List<Reserv> chk(Reserv reserv) {

		return rd.chk(reserv);
	}

	@Override
	public String getName(String id) {

		return rd.getName(id);
	}

	@Override
	public List<Reserv> listAll(Reserv reserv) {

		return rd.listAll(reserv);
	}

	@Override
	public int total(Reserv reserv) {
		
		return rd.total(reserv);
	}

}
