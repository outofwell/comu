package global.sesoc.boot;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import global.sesoc.boot.repository.BoardRepository;
import global.sesoc.boot.repository.FileRepository;
import global.sesoc.boot.repository.UserRepository;
import global.sesoc.boot.util.FileService;
import global.sesoc.boot.vo.Board;
import global.sesoc.boot.vo.Files;
import global.sesoc.boot.vo.Like;
import global.sesoc.boot.vo.Reply;
import global.sesoc.boot.vo.Subscribe;

@Controller
public class BoardController {

	@Autowired
	UserRepository userRepository;

	@Autowired
	BoardRepository boardRepository;

	@Autowired
	FileRepository fileRepository;

	@Autowired
	HttpSession session;

	@Autowired
	HttpServletRequest request;

	// MYPAGE : 글쓰기 페이지로 이동
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write() {
		session.removeAttribute("boardFile");
		return "write";
	}

	// MYPAGE : 글쓰기 페이지로 이동(드래그)
	@RequestMapping(value = "/dragwrite", method = RequestMethod.GET)
	public String write(int filenum) {
		if (filenum != 0) {
			Files file = fileRepository.loadFile(filenum);
			session.setAttribute("boardFile", file);
		}
		return "write";
	}

	// 글 쓰기
	@RequestMapping(value = "/writing", method = RequestMethod.POST)
	public String writing(MultipartFile upload, Board board) {

		System.out.println(board);

		// 이미지 파일 업로드 경로
		String uploadPath = request.getSession().getServletContext().getResourcePaths("/") + "/resources/covers";

		// 이미지 처리
		if (!upload.isEmpty()) {
			String savedFile = FileService.saveFile(upload, uploadPath);
			System.out.println(savedFile);
			// board.setOriginalfile(upload.getOriginalFilename());
			// board.setSavedfile(savedFile);
		} else {

		}
		if (board.getShared() == null) {
			board.setShared("unshare");
		}
		boardRepository.write(board);
		// session.setAttribute("message", "등록 완료");
		return "mypage";
	}

	// 글 목록 불러오기(개인) (ajax)
	@RequestMapping(value = "/boardList", method = RequestMethod.GET)
	public @ResponseBody ArrayList<Board> boardList(Model model) {
		String id = (String) session.getAttribute("loginId");
		ArrayList<Board> list = boardRepository.boardList(id);
		
		Board board = new Board();
		
		board.setUserid(id);
		
		List<Reply> replylist = boardRepository.replylist(board.getBoardnum());
		
		model.addAttribute("replylist", replylist);
		
		System.out.println("글 목록 당 댓글: " + replylist);
		
		return list;
	}

	// 글 목록(전체) ArrayList<Board> list() return "shared";
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list() {
		ArrayList<Board> list = boardRepository.list();
		return "shared";
	}

	// 글 수정 int updateBoard(Board board) return "mypage";
	@RequestMapping(value = "/updateBoard", method = RequestMethod.GET)
	public String updateBoard(Board board) {
		boardRepository.updateBoard(board);
		return "mypage";
	}

	// 글 삭제 int deleteBoard(int boardnum) return "mypage";
	@RequestMapping(value = "/deleteBoard", method = RequestMethod.GET)
	public String deleteBoard(int boardnum) {
		boardRepository.deleteBoard(boardnum);
		return "mypage";
	}

	// 글 검색 List<Board> searchBoard(Map<String, String> search) return "shared";
	@RequestMapping(value = "/searchBoard", method = RequestMethod.GET)
	public String searchBoard(@RequestParam(value = "searchTitle", defaultValue = "") String searchTitle,
			@RequestParam(value = "searchText", defaultValue = "") String searchText, Model model) {
		List<Board> searchBoard = boardRepository.searchBoard(searchTitle, searchText);

		model.addAttribute("searchBoard", searchBoard);
		model.addAttribute("searchTitle", searchTitle);
		model.addAttribute("searchText", searchText);

		return "shared";
	}

	// 댓글 등록 int writeReply(Reply reply) return "result"; //(ajax)성공여부 전송
	@RequestMapping(value = "/replyWrite", method = RequestMethod.GET)
	public String replyWrite(Reply reply, HttpSession session) {
		int result = 0;
		
		String loginId = (String) session.getAttribute("loginId");
		
		reply.setUserid(loginId);
		
		System.out.println("댓글 : " + reply);
		
		result = boardRepository.replyWrite(reply);
		
		return "redirect:shared?boardnum=" + reply.getBoardnum();
	}
	
	// 댓글 수정 int updateReply(Reply reply) return "result";
	@RequestMapping(value = "/updateReply", method = RequestMethod.GET)
	public String updateReply(Reply reply) {
		boardRepository.updateReply(reply);
		return "result";
	}

	// 댓글 삭제 int deleteReply(int Replynum) return "result";
	@RequestMapping(value = "/deleteReply", method = RequestMethod.GET)
	public String deleteReply(int Replynum) {
		int result = boardRepository.deleteReply(Replynum);
		
		System.out.println("삭제완료 ==> " + result + "개");
		
		return "shard";
	}

	// ****좋아요 리스트 (랭킹[기간별/전체/] / 특정사용자의LIKE리스트[나/남])

	// 좋아요 등록 int like(Like like) return "result";
	@RequestMapping(value = "/like", method = RequestMethod.GET)
	public String like(Like like) {
		boardRepository.like(like);
		return "result";
	}

	// 좋아요 리스트(랭킹) ArrayList<Like> likeList() return "result";
	@RequestMapping(value = "/rankList", method = RequestMethod.GET)
	public String rankList() {
		boardRepository.rankList();
		return "result";
	}

	// 좋아요 리스트(개인) ArrayList<Like> idList(String userid) return "result";
	@RequestMapping(value = "/idList", method = RequestMethod.GET)
	public String idList(String userid) {
		boardRepository.idList(userid);
		return "result";
	}

	// 좋아요 리스트() ArrayList<Like> likeList() return "result";
	@RequestMapping(value = "/likeList", method = RequestMethod.GET)
	public String likeList() {
		boardRepository.likeList();
		return "result";
	}

	// 구독 int writeSubscribe(Subscribe subscribe) return "result"
	@RequestMapping(value = "/writeSubscribe", method = RequestMethod.GET)
	public String writeSubscribe(Subscribe subscribe) {
		boardRepository.writeSubscribe(subscribe);
		return "result";
	}

	// 구독 리스트 ArrayList<Subscribe> subscribeList(String userid) return "";
	@RequestMapping(value = "/subscribeList", method = RequestMethod.GET)
	public String subscribeList(String userid) {
		boardRepository.subscribeList(userid);
		return "result";
	}

	// +음악 재생
}
