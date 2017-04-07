package global.sesoc.boot.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import global.sesoc.boot.vo.Board;
import global.sesoc.boot.vo.Files;
import global.sesoc.boot.vo.Like;
import global.sesoc.boot.vo.Reply;
import global.sesoc.boot.vo.Subscribe;

public interface BoardDAO {

	// 글 등록
	public int write(Board board) throws Exception;
	
	// 글 등록시 이미지 변경 ?
	public int fileUpdate(Files file) throws Exception;

	// 글 목록(개인)
	public ArrayList<Board> boardList(String id);

	// 글 목록(전체)
	public ArrayList<Board> list();

	// 글 수정
	public int updateBoard(Board board) throws Exception;

	// 글 삭제
	public int deleteBoard(int boardnum) throws Exception;

	// 글 검색
	public List<Board> searchBoard(Map<String, String> search) throws Exception;

	// 댓글 등록
	public int writeReply(Reply reply) throws Exception;

	// 댓글 수정
	public int updateReply(Reply reply) throws Exception;

	// 댓글 삭제
	public int deleteReply(int Replynum) throws Exception;

	// 좋아요 등록
	public int like(Like like) throws Exception;

	// 좋아요 리스트(랭킹)
	public ArrayList<Like> rankList() throws Exception;

	// 좋아요 리스트(개인)
	public ArrayList<Like> idList(String userid) throws Exception;

	// 좋아요 리스트
	public ArrayList<Like> likeList() throws Exception;

	// 구독
	public int writeSubscribe(Subscribe subscribe) throws Exception;

	// 구독 리스트
	public ArrayList<Subscribe> subscribeList(String userid) throws Exception;
}
