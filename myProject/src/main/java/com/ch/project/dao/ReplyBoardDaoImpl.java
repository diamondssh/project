package com.ch.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.project.model.ReplyBoard;
@Repository
public class ReplyBoardDaoImpl implements ReplyBoardDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<ReplyBoard> list(int rbno) {
		
		return sst.selectList("rboardns.list",rbno);
	}

	@Override
	public void insert(ReplyBoard rb) {
		sst.insert("rboardns.insert",rb);
		
	}


}
