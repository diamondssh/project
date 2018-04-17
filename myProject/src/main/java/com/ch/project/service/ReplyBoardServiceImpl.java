package com.ch.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.project.dao.ReplyBoardDao;
import com.ch.project.model.ReplyBoard;


@Service
public class ReplyBoardServiceImpl implements ReplyBoardService{
	@Autowired
	private ReplyBoardDao rbd;

	@Override
	public List<ReplyBoard> list(int rbno) {
		
		return rbd.list(rbno);
	}


}
