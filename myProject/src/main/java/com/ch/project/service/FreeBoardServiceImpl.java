package com.ch.project.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.project.dao.FreeBoardDAO;
import com.ch.project.model.FreeBoard;


@Service
public class FreeBoardServiceImpl implements FreeBoardService {
	@Autowired
	private FreeBoardDAO bd;
	
	@Override
	public List<FreeBoard> getList(FreeBoard fboard) {
		// TODO Auto-generated method stub
		return bd.getList(fboard);
	}

	@Override
	public int total(FreeBoard fboard) {
		// TODO Auto-generated method stub
		return bd.total(fboard);
	}

	@Override
	public FreeBoard select(int bno) {
		// TODO Auto-generated method stub
		return bd.select(bno);
	}

	@Override
	public void updateReadCount(int bno) {
		// TODO Auto-generated method stub
		bd.updateReadCount(bno);		
	}

	@Override
	public int insert(FreeBoard fboard) {
		// TODO Auto-generated method stub
		return bd.insert(fboard);
	}

	@Override
	public int getMaxBno() {
		// TODO Auto-generated method stub
		return bd.getMaxBno();
	}

	@Override
	public int update(FreeBoard fboard) {
		// TODO Auto-generated method stub
		return bd.update(fboard);
	}

	@Override
	public int delete(int bno) {
		// TODO Auto-generated method stub
		return bd.delete(bno);
	}

	
}




