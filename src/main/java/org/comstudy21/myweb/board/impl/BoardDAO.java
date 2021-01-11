package org.comstudy21.myweb.board.impl;

import java.util.List;

import org.comstudy21.myweb.board.BoardService;
import org.comstudy21.myweb.board.BoardVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("boardDAO")
public class BoardDAO implements BoardService {
	@Autowired
	SqlSessionTemplate mybatis;

	@Override
	public void insertBoard(BoardVO vo) {
		mybatis.insert("org.comstudy21.myweb.BoardMapper.insertBoard", vo);
	}

	@Override
	public void updateBoard(BoardVO vo) {
		mybatis.insert("org.comstudy21.myweb.BoardMapper.updateBoard", vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		mybatis.insert("org.comstudy21.myweb.BoardMapper.deleteBoard", vo);
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		return mybatis.selectOne("org.comstudy21.myweb.BoardMapper.getBoard", vo);
	}

	@Override
	public List<BoardVO> getBoardList(BoardVO vo) {
		return mybatis.selectList("org.comstudy21.myweb.BoardMapper.getBoardList", vo);
	}
	
}