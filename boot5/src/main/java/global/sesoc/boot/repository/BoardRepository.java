package global.sesoc.boot.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.boot.dao.BoardDAO;
import global.sesoc.boot.vo.Board;
import global.sesoc.boot.vo.Reply;

@Repository
public class BoardRepository {

	@Autowired
	SqlSession sqlSession;
	
	//글 작성
	public int write(Board board){
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		int result = 0;

		try {
			dao.write(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	//글 목록(개인)
	public ArrayList<Board> boardList(String id) {
		ArrayList<Board> list = new ArrayList<>();
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		list = dao.boardList(id);
		return list;
	}
	
	//글 목록(전체)
	public ArrayList<Board> list() {
		ArrayList<Board> list = new ArrayList<>();
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		list = dao.list();
		return list;
	}
	
	//글 수정
	public int updateBoard(Board board) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		int result = 0;
		
		try {
			dao.updateBoard(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	//글 삭제
	public int deleteBoard(int boardnum) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		int result = 0;
		
		try {
			dao.deleteBoard(boardnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	//글 검색
	
	
	//댓글 등록
	public int writeReply(Reply reply) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		int result = 0;
		
		try {
			dao.writeReply(reply);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	//댓글 수정
	public int updateReply(Reply reply) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		int result = 0;
		
		try {
			dao.updateReply(reply);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	//댓글 삭제
	public int deleteReply(int Replynum) {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		int result = 0;
		
		try {
			dao.deleteReply(Replynum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
