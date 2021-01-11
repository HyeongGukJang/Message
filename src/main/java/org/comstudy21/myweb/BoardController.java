package org.comstudy21.myweb;

import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.comstudy21.myweb.board.BoardService;
import org.comstudy21.myweb.board.BoardVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	
	@Resource
	BoardService boardService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class.getSimpleName());
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write() {
		logger.info("/board/write 호출 ...");
		
		return "board/write";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write_ok(BoardVO vo) {
		logger.info("POST /board/write 호출 ...");
		System.out.println(vo);
		
		boardService.insertBoard(vo);
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String home(Locale locale, BoardVO vo, Model model) {
		logger.info("/board/list 호출 ...");
		
		List<BoardVO> list = boardService.getBoardList(vo);
		model.addAttribute("list", list);
		
		return "board/list";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(@RequestParam("seq") int seq, Model model) {
		logger.info("/board/detail 호출 ...");
		
		BoardVO board = boardService.getBoard(new BoardVO(seq));
		model.addAttribute("board", board);
		
		return "board/detail";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Locale locale, Model model) {
		logger.info("/board/search 호출 ...");
		
		return "board/search";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String modify(@RequestParam("seq") int seq, Model model) {
		logger.info("/board/modify 호출 ...");
		
		BoardVO board = boardService.getBoard(new BoardVO(seq));
		model.addAttribute("board", board);
		
		return "board/modify";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modify_ok(BoardVO vo, Model model) {
		logger.info("/board/modify 호출 ...");
		System.out.println(vo);
		boardService.updateBoard(vo);
		
		return "redirect:detail?seq="+vo.getSeq();
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(BoardVO vo, Model model) {
		logger.info("/board/delete 호출 ...");
		
		model.addAttribute("board", vo);
		
		return "board/delete";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete_ok(BoardVO vo, Model model) {
		logger.info("/board/delete 호출 ...");
		
		boardService.deleteBoard(vo);
		
		return "redirect:list";
	}
	
}
