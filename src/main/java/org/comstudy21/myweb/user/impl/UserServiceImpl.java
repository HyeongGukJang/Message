package org.comstudy21.myweb.user.impl;

import java.util.List;

import org.comstudy21.myweb.user.UserService;
import org.comstudy21.myweb.user.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}

	@Override
	public UserVO getUserLoginChk(UserVO vo) {
		return userDAO.getUserLoginChk(vo);
	}
	
	public List<UserVO> getUserList(UserVO vo) {
		return userDAO.getUserList(vo);
	}
	
}
