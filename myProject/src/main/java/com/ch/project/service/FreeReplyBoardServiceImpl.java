package com.ch.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.project.dao.FreeReplyBoardDao;
import com.ch.project.model.FreeReplyBoard;


@Service
public class FreeReplyBoardServiceImpl implements FreeReplyBoardService{
	@Autowired
	private FreeReplyBoardDao rbd;

	@Override
	public List<FreeReplyBoard> list(int rbno) {
		
		return rbd.list(rbno);
	}

	@Override
	public void insert(FreeReplyBoard rb) {
		rbd.insert(rb);
		
	}

	@Override
	public void delete(int rno) {
		rbd.delete(rno);
	}

	@Override
	public void update(FreeReplyBoard rb) {
		rbd.update(rb);
	}




}
