package com.ch.project.service;
import java.util.List;

import com.ch.project.model.FreeBoard;
public interface FreeBoardService {
	int total(FreeBoard board);

	List<FreeBoard> getList(FreeBoard fboard);

	FreeBoard select(int bno);

	void updateReadCount(int bno);

	int insert(FreeBoard fboard);

	int getMaxBno();

	int update(FreeBoard fboard);

	int delete(int bno);
	

}
