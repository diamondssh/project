package com.ch.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.project.model.FreeReplyBoard;
@Repository
public class FreeReplyBoardDaoImpl implements FreeReplyBoardDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<FreeReplyBoard> list(int rbno) {
		
		return sst.selectList("frboardns.list",rbno);
	}

	@Override
	public void insert(FreeReplyBoard rb) {
		sst.insert("frboardns.insert",rb);
		
	}

	@Override
	public void delete(int rno) {
		sst.delete("frboardns.delete",rno);
	}

	@Override
	public void update(FreeReplyBoard rb) {
		sst.update("frboardns.update",rb);
		
	}


}
