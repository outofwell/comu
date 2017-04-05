package global.sesoc.boot.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.boot.dao.BoardDAO;
import global.sesoc.boot.dao.FileDAO;
import global.sesoc.boot.vo.Board;
import global.sesoc.boot.vo.Files;

@Repository
public class FileRepository {

	@Autowired
	SqlSession sqlSession;
	
	public int saveFile(Files file){
		FileDAO dao = sqlSession.getMapper(FileDAO.class);
		
		int result = 0;

		try {
			dao.saveFile(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public ArrayList<Files> fileList(){
		ArrayList<Files> list = new ArrayList();
		FileDAO dao = sqlSession.getMapper(FileDAO.class);
		try {
			list = dao.fileList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public Files loadFile(int filenum) {
		Files file = null;
		FileDAO dao = sqlSession.getMapper(FileDAO.class);
		try {
			file = dao.loadFile(filenum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return file;
	}

	public int updateFile(Files file) {
		int result = 0;
		FileDAO dao = sqlSession.getMapper(FileDAO.class);
		try {
			result = dao.updateFile(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int deleteFile(int filenum) {
		int result = 0;
		FileDAO dao = sqlSession.getMapper(FileDAO.class);
		try {
			result = dao.deleteFile(filenum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
}
