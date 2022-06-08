package com.example.framwork.Service;

import java.util.List;

import com.example.framwork.DTO.BoardDTO;

public interface BoardService {
	String create(BoardDTO boardDTO);
	BoardDTO selectDetail(BoardDTO boardDTO);
	int deleteById(BoardDTO boardDTO);
	int updateById(BoardDTO boardDTO);
	List<BoardDTO> selectBoards();
	List<BoardDTO> searchByContent(String content);
}
