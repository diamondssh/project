package com.ch.project.dao;

import java.util.List;

import com.ch.project.model.FreeReplyBoard;

public interface FreeReplyBoardDao {

	List<FreeReplyBoard> list(int rbno);

	void insert(FreeReplyBoard rb);

	void delete(int rno);

	void update(FreeReplyBoard rb);



}
