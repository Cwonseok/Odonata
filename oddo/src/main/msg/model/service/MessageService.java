package main.msg.model.service;

import static main.common.JDBCTemplate.close;
import static main.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import main.msg.model.dao.MessageDAO;
import main.msg.model.vo.Message;
import main.msg.model.vo.PageInfo;

public class MessageService {
    
    private MessageDAO mDAO = new MessageDAO();
    
    public int getListCount(String userId) {
        Connection conn = getConnection();
        
        int listCount = mDAO.getListCount(conn, userId);
        
        close(conn);
        
        return listCount;
    }
    
    public ArrayList<Message> selectList(String userId, PageInfo pi) {
        Connection conn = getConnection();
        
        ArrayList<Message> list = mDAO.selectList(conn, userId, pi);
        
        close(conn);
        
        return list;
    }
    
    public Message selectMessage(int mId) {
        Connection conn = getConnection();
        
        Message msg = mDAO.selectMessage(conn, mId);
        
        close(conn);
        
        return msg;
    }

    public int insertMessage(Message msg) {
		Connection conn = getConnection();
		
		int result = mDAO.insertMessage(conn, msg);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
}
