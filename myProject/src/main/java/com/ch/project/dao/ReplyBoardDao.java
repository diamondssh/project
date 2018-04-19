package com.ch.project.dao;

import java.util.List;

import com.ch.project.model.ReplyBoard;

public interface ReplyBoardDao {

	List<ReplyBoard> list(int rbno);

	void insert(ReplyBoard rb);

	void delete(int rno);

	void update(ReplyBoard rb);



}
