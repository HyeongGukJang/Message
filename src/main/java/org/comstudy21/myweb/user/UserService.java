package org.comstudy21.myweb.user;

import java.util.List;

public interface UserService {
	// CRUD 
	// 회원 등록
	public UserVO getUser(UserVO vo);
	
	public UserVO getUserLoginChk(UserVO vo);
	
	public List<UserVO> getUserList(UserVO vo);
}
