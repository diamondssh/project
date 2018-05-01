package com.ch.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.project.model.FreeBoard;

@Repository
public class FreeBoardDAOImpl implements FreeBoardDAO{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<FreeBoard> getList(FreeBoard fboard) {
		// TODO Auto-generated method stub 
		return sst.selectList("fboardns.list",fboard);
	}

	@Override
	public FreeBoard select(int bno) {
		// TODO Auto-generated method stub
		return sst.selectOne("fboardns.select",bno);
	}

	@Override
	public void updateReadCount(int bno) {
		// TODO Auto-generated method stub
		sst.update("fboardns.updateReadCount",bno);
	}

	@Override
	public int insert(FreeBoard fboard) {
		// TODO Auto-generated method stub
		return sst.insert("fboardns.insert",fboard);
	}

	@Override
	public int getMaxBno() {
		// TODO Auto-generated method stub
		return sst.selectOne("fboardns.maxbno");
	}

	@Override
	public int update(FreeBoard fboard) {
		// TODO Auto-generated method stub
		return sst.update("fboardns.update",fboard);
	}

	@Override
	public int delete(int bno) {
		// TODO Auto-generated method stub
		return sst.delete("fboardns.delete", bno);
	}

	@Override
	public int total(FreeBoard fboard) {
		// TODO Auto-generated method stub
		return sst.selectOne("fboardns.total", fboard);
	}

	
}
