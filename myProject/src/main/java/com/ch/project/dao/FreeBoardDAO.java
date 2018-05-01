package com.ch.project.dao;

import java.util.List;

import com.ch.project.model.FreeBoard;

public interface FreeBoardDAO {

	List<FreeBoard> getList(FreeBoard fboard);

	FreeBoard select(int bno);

	void updateReadCount(int bno);

	int insert(FreeBoard fboard);

	int getMaxBno();

	int update(FreeBoard fboard);

	int delete(int bno);

	int total(FreeBoard fboard);


}
