package com.ch.project.service;
import java.util.List;

import com.ch.project.model.Board;
public interface BoardService {
	int total(Board board);

	List<Board> getList();
	

}
