package com.ch.project.service;

import java.util.List;

import com.ch.project.model.FreeReplyBoard;

public interface FreeReplyBoardService {

	List<FreeReplyBoard> list(int bno);

	void insert(FreeReplyBoard rb);

	void delete(int rno);

	void update(FreeReplyBoard rb);



}
