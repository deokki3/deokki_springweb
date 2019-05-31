package org.deokki.letter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class LetterDao {
	
	static final String ADD_LETER = "INSERT letter(title,content,senderId,senderName,receiverId,receiverName) VALUES(?,?,?,?,?,?)";
	
	static final String LIST_RECEIVER = "SELECT letterId,title,senderId,senderName,cdate FROM letter WHERE receiverId=?";
	
	static final String LIST_SENDER = "SELECT letterId,title,receiverId,receiverName,cdate FROM letter WHERE senderId=?";
	
	static final String GET_LETTER = "SELECT letterId,title,content,senderId,senderName,receiverId,receiverName,cdate from letter" 
														+ "	where letterId=? and(senderId= ? or receiverId=?)";
	static final String DELETE_LETTER = "DELETE FROM Letter WHERE letterId=? and (senderId=? or receiverId=?)";

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	RowMapper<Letter> letterRowMapper = new BeanPropertyRowMapper<>(
			Letter.class);
	
	
	/**
	 * 보낸 목록
	 */
	 public List<Letter> listSender(String senderId){
		 return jdbcTemplate.query(LIST_SENDER, letterRowMapper, senderId);
		 
	 }
	 
	 /**
	  * 받은 목록
	  */
	 public List<Letter> listReceiver(String receiverId) {
		 return jdbcTemplate.query(LIST_RECEIVER, letterRowMapper, receiverId);
	 }
	 
	 /**
	  * 편지 조회
	  */
	 public Letter getLetter(String letterId,String memberId) {
		 return jdbcTemplate.queryForObject(GET_LETTER, letterRowMapper, letterId, memberId, memberId);
	 }
	 /**
	  * 편지 등록
	  */
	 public int addLetter(Letter letter) {
		 return jdbcTemplate.update(ADD_LETER, letter.getTitle(),letter.getContent(),letter.getSenderId(),
				 letter.getSenderName(),letter.getReceiverId(),letter.getReceiverName());
	 }
	 /**
	  * 편지 삭제
	  */
	 
	 public int deleteLetter(String letterId,String memberId) {
		 return jdbcTemplate.update(DELETE_LETTER, letterId, memberId, memberId);
	 }

}
