package com.tireshoppingmall.home.admin.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaDAO {

	@Autowired
	private SqlSession ss;

	public void getAllQna(HttpServletRequest req) {
		List<QnaDTO> qna = ss.getMapper(AdminBoardMapper.class).getAllQna();
		req.setAttribute("qna", qna);
	}

	public void searchQnA(QnaSearchDTO qnaSearchDTO, HttpServletRequest req) {
		List<QnaDTO> qna = ss.getMapper(AdminBoardMapper.class).searchQnA(qnaSearchDTO);
		req.setAttribute("qna", qna);
	}

	public void insertQnAReply(QnaReplyDTO qnaReplyDTO, HttpServletRequest req) {
		qnaReplyDTO.setQ_reply_board_no(req.getParameter("q_no"));
		if(ss.getMapper(AdminBoardMapper.class).insertQnAReply(qnaReplyDTO)==1) {
			ss.getMapper(AdminBoardMapper.class).updateQna(qnaReplyDTO);
		};
		
		
	}

	public QnaReplyDTO getReply(QnaReplyDTO qnaReplyDTO) {
		return ss.getMapper(AdminBoardMapper.class).getReply(qnaReplyDTO);
	}
	
}