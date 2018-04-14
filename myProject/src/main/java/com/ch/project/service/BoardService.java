package com.ch.project.service;
import java.util.List;

import com.ch.project.model.Board;
public interface BoardService {
	int total(Board board);

	List<Board> getList(Board board);

	Board select(int bno);

	void updateReadCount(int bno);

	int insert(Board board);

	int getMaxBno();

	int update(Board board);

	int delete(int bno);
	

}
