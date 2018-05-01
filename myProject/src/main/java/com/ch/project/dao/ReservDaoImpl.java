package com.ch.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.project.model.Reserv;

@Repository
public class ReservDaoImpl implements ReservDao {

	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<Reserv> list(String id) {

		return sst.selectList("reservns.list", id);
	}

	@Override
	public int insert(Reserv reserv) {

		return sst.insert("reservns.insert", reserv);
	}

	@Override
	public int delete(int rno) {

		return sst.delete("reservns.delete", rno);
	}

	@Override
	public int getMaxNum() {
		return sst.selectOne("reservns.getMaxNum");
	}

	@Override
	public Reserv select(int rno) {

		return sst.selectOne("reservns.select", rno);
	}

	@Override
	public int update(Reserv reserv) {

		return sst.update("reservns.update", reserv);
	}

	@Override
	public List<Reserv> chk(Reserv reserv) {

		return sst.selectList("reservns.chk", reserv);
	}

	@Override
	public String getName(String id) {

		return sst.selectOne("reservns.getName", id);
	}

	@Override
	public List<Reserv> listAll(Reserv reserv) {

		return sst.selectList("reservns.listAll", reserv);
	}

	@Override
	public int total(Reserv reserv) {

		return sst.selectOne("reservns.total", reserv);
	}

}
