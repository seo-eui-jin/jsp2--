package com.sej.app.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sej.app.board.vo.BoardVO;
import com.sej.app.mybatis.config.MyBatisConfig;

public class BoardDAO {
	SqlSessionFactory sessionFactory = MyBatisConfig.getSqlsession_f();
	SqlSession sqlSession;
	
	public BoardDAO() {
		sqlSession = sessionFactory.openSession(true);
	}
	
	//게시글 목록
	public List<BoardVO> getList(int startRow, int endRow) {
		Map<String, Integer> pageMap = new HashMap<String, Integer>();
		pageMap.put("strarRow", startRow);
		pageMap.put("endRow", endRow);
		
		return sqlSession.selectList("Board.getList", pageMap);
	}
}
