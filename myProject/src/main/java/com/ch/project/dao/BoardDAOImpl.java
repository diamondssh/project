package com.ch.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.project.model.Board;

@Repository
public class BoardDAOImpl implements BoardDAO{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<Board> getList(Board board) {
		System.out.println("start = "+board.getStartRow());
		System.out.println("end = "+board.getEndRow());
		// TODO Auto-generated method stub
		return sst.selectList("boardns.list",board);
	}

	@Override
	public Board select(int bno) {
		// TODO Auto-generated method stub
		return sst.selectOne("boardns.select",bno);
	}

	@Override
	public void updateReadCount(int bno) {
		// TODO Auto-generated method stub
		sst.update("boardns.updateReadCount",bno);
	}

	@Override
	public int insert(Board board) {
		// TODO Auto-generated method stub
		return sst.insert("boardns.insert",board);
	}

	@Override
	public int getMaxBno() {
		// TODO Auto-generated method stub
		return sst.selectOne("boardns.maxbno");
	}

	@Override
	public int update(Board board) {
		// TODO Auto-generated method stub
		return sst.update("boardns.update",board);
	}

	@Override
	public int delete(int bno) {
		// TODO Auto-generated method stub
		return sst.delete("boardns.delete", bno);
	}

	@Override
	public int total(Board board) {
		// TODO Auto-generated method stub
		return sst.selectOne("boardns.total", board);
	}

	
}
