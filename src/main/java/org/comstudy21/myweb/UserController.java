package org.comstudy21.myweb;

import javax.servlet.http.HttpSession;

import org.comstudy21.myweb.user.UserService;
import org.comstudy21.myweb.user.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/user")
public class UserController {
	@Autowired
	UserService userService;

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void login() {}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView login_ok(UserVO vo, ModelAndView mav, HttpSession session) {
		if (vo.getId() == null || vo.getId().equals("")) {
			throw new IllegalArgumentException("아이디는 반드시 입력해야 합니다.");
		}
		
		UserVO user = userService.getUserLoginChk(vo);
		
		session.setAttribute("loginUser", user);
		session.setAttribute("userId", user.getId());
		session.setAttribute("name", user.getName());
		mav.setViewName("redirect:login");
		
		return mav;
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "user/login";
	}
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String gohome(HttpSession session) {
		session.invalidate();
		
		return "home";
	}
	
	
}
