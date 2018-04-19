package com.ch.project.service;

import java.util.List;

import com.ch.project.model.ReplyBoard;

public interface ReplyBoardService {

	List<ReplyBoard> list(int bno);

	void insert(ReplyBoard rb);

}
