package global.sesoc.boot.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.boot.dao.BoardDAO;
import global.sesoc.boot.vo.Board;
import global.sesoc.boot.vo.Like;
import global.sesoc.boot.vo.Reply;
import global.sesoc.boot.vo.Subscribe;

@Repository
public class BoardRepository {

	@Autowired
	SqlSession sqlSession;

	// 글 작성
	public int write(Board board) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);

		int result = 0;

		try {
			result = dao.write(board);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	// 글 목록(개인)
	public ArrayList<Board> boardList(String id) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		ArrayList<Board> list = new ArrayList<>();
		
		list = dao.boardList(id);
		
		return list;
	}

	// 글 목록(전체)
	public ArrayList<Board> list() {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		ArrayList<Board> list = new ArrayList<>();
		
		list = dao.list();
		
		return list;
	}

	// 글 수정
	public int updateBoard(Board board) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);

		int result = 0;

		try {
			result = dao.updateBoard(board);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	// 글 삭제
	public int deleteBoard(int boardnum) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);

		int result = 0;

		try {
			result = dao.deleteBoard(boardnum);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	// 글 검색 ?
	public Board searchBoard(String search) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		Board board = null;
		
		try {
			board = dao.searchBoard(search);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return board;
	}

	// 댓글 등록
	public int writeReply(Reply reply) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);

		int result = 0;

		try {
			result = dao.writeReply(reply);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	// 댓글 수정
	public int updateReply(Reply reply) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);

		int result = 0;

		try {
			result = dao.updateReply(reply);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	// 댓글 삭제
	public int deleteReply(int Replynum) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);

		int result = 0;

		try {
			result = dao.deleteReply(Replynum);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	// 좋아요 등록
	public int like(Like like) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		int result = 0;
		
		try {
			result = dao.like(like);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	// 좋아요 리스트(랭킹) ?
	public ArrayList<Like> rankList() {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		ArrayList<Like> list = new ArrayList<>();
		
		try {
			list = dao.rankList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	// 좋아요 리스트(개인)
	public ArrayList<Like> idList(String userid) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		ArrayList<Like> list = new ArrayList<>();
		
		try {
			list = dao.idList(userid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	// 좋아요 리스트 ?
	public ArrayList<Like> likeList() {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		ArrayList<Like> list = new ArrayList<>();
		
		try {
			list = dao.likeList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	// 구독
	public int writeSubscribe(Subscribe subscribe) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		int result = 0;
		
		try {
			result = dao.writeSubscribe(subscribe);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	// 구독 리스트
	public ArrayList<Subscribe> subscribeList(String userid) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		ArrayList<Subscribe> list = new ArrayList<>();
		
		try {
			list = dao.subscribeList(userid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
