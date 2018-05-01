package com.ch.project.dao;

import java.util.List;

import com.ch.project.model.Reserv;

public interface ReservDao {

	List<Reserv> list(String id);

	int insert(Reserv reserv);

	int delete(int rno);

	int getMaxNum();

	Reserv select(int rno);

	int update(Reserv reserv);

	List<Reserv> chk(Reserv reserv);

	String getName(String id);

	List<Reserv> listAll(Reserv reserv);

	int total(Reserv reserv);

}
