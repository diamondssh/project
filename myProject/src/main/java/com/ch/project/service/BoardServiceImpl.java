package com.ch.project.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.project.dao.BoardDAO;
import com.ch.project.model.Board;


@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO bd;
	
	@Override
	public List<Board> getList() {
		// TODO Auto-generated method stub
		return bd.getList();
	}

	@Override
	public int total(Board board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Board select(int bno) {
		// TODO Auto-generated method stub
		return bd.select(bno);
	}

	@Override
	public void updateReadCount(int bno) {
		// TODO Auto-generated method stub
		bd.updateReadCount(bno);		
	}

	@Override
	public int insert(Board board) {
		// TODO Auto-generated method stub
		return bd.insert(board);
	}

	@Override
	public int getMaxBno() {
		// TODO Auto-generated method stub
		return bd.getMaxBno();
	}

	@Override
	public int update(Board board) {
		// TODO Auto-generated method stub
		return bd.update(board);
	}

	@Override
	public int delete(int bno) {
		// TODO Auto-generated method stub
		return bd.delete(bno);
	}

	
}




