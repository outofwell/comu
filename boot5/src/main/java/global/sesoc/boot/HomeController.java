package global.sesoc.boot;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import global.sesoc.boot.repository.BoardRepository;
import global.sesoc.boot.repository.FileRepository;
import global.sesoc.boot.repository.UserRepository;
import global.sesoc.boot.util.FileService;
import global.sesoc.boot.vo.Board;
import global.sesoc.boot.vo.Files;
import global.sesoc.boot.vo.User;

@Controller
public class HomeController {
	
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	BoardRepository boardRepository;
	
	@Autowired
	FileRepository fileRepository;
	
	@Autowired
	HttpSession session;
	
	//이미지 파일 업로드 경로
	final String uploadPath = "/covers";
	

	//======페이지 이동 START
	@RequestMapping(value = "/", method = RequestMethod.GET)	//로그인 전 메인 페이지
	public String home() {
		return "home";
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)	//로그인 후 메인 페이지
	public String main() {
		return "main";
	}
	
	@RequestMapping(value = "/loginpage", method = RequestMethod.GET)
	public String loginpage() {
		return "login";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		return "join";
	}

	@RequestMapping(value = "/comu", method = RequestMethod.GET)
	public String comu(HttpSession session) {
		session.removeAttribute("file");
		return "comu";
	}

	@RequestMapping(value = "/hicu", method = RequestMethod.GET)
	public String hicu() {
		return "hicu";
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage() {
		String id = (String)session.getAttribute("loginId");
		ArrayList<Board> list = boardRepository.boardList(id);
		session.setAttribute("boardlist", list);
		return "mypage";
	}

	@RequestMapping(value = "/shared", method = RequestMethod.GET)
	public String shared() {
		ArrayList<Board> list = boardRepository.list();
		System.out.println(list);
		session.setAttribute("boardList", list);
		return "shared";
	}

	@RequestMapping(value = "/howto", method = RequestMethod.GET)
	public String howto() {
		return "howto";
	}

	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public String testing() {
		return "aboutus";
	}
	//======페이지 이동 END
	
	
	//=====테스트 페이지 START
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test() {
		return "testing";
	}
	
	@RequestMapping(value = "/test2", method = RequestMethod.GET)
	public String test2() {
		return "testing2";
	}
	//======테스트 페이지 END

	
}
