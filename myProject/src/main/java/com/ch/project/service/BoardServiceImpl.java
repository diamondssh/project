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

	
}




