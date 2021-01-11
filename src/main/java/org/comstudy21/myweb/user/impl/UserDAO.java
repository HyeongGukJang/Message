package org.comstudy21.myweb.user.impl;

import java.util.List;

import org.comstudy21.myweb.user.UserService;
import org.comstudy21.myweb.user.UserVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

// DAO(Data Access Object)
@Repository("userDAO")
public class UserDAO implements UserService {
	@Autowired
	SqlSessionTemplate mybatis;

	@Override
	public UserVO getUser(UserVO vo) {
		return mybatis.selectOne("org.comstudy21.myweb.UserMapper.getUser", vo);
	}
	
	@Override
	public List<UserVO> getUserList(UserVO vo) {
		return mybatis.selectList("org.comstudy21.myweb.UserMapper.getUserList", vo);
	}
	
	public UserVO getUserLoginChk(UserVO vo) {
		return mybatis.selectOne("org.comstudy21.myweb.UserMapper.getUserLoginChk", vo);
	}
}