package org.comstudy21.myweb.common;

import org.comstudy21.myweb.board.BoardVO;
import org.comstudy21.myweb.message.MessageVO;
import org.comstudy21.myweb.message.PageMaker;
import org.comstudy21.myweb.user.UserVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MyBatisEx {

	public static void main(String[] args) {
		GenericXmlApplicationContext ctx = 
				new GenericXmlApplicationContext("applicationContext.xml");
		
		SqlSessionTemplate mybatis = (SqlSessionTemplate)ctx.getBean("mybatis");
		
		BoardVO board = mybatis.selectOne("org.comstudy21.myweb.BoardMapper.getBoard", 1);
		
		UserVO user = mybatis.selectOne("org.comstudy21.myweb.UserMapper.getUser", "user1");
		
		MessageVO message = mybatis.selectOne("org.comstudy21.myweb.MessageMapper.getMessage", 1);

		MessageVO send_message = mybatis.selectOne("org.comstudy21.myweb.MessageMapper.send_getMessage", 1);
		
		PageMaker count = mybatis.selectOne("org.comstudy21.myweb.MessageMapper.listCount", 1);
	}

}