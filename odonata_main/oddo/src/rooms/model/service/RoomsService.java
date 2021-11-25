package rooms.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import rooms.model.DAO.RoomsDAO;
import rooms.model.vo.Rooms;
import sooksoimg.model.vo.sooksoImg;

public class RoomsService {
    
    private RoomsDAO rDAO = new RoomsDAO();
    
    public int insertRooms(Rooms r, ArrayList<sooksoImg> ImgList) {
        Connection conn = getConnection();
        
        int result1 = rDAO.insertRooms(conn, r);
        int result2 = rDAO.insertsooksoImg(conn, ImgList);
        
        if (result1 > 0 && result2 > 0) {
            commit(conn);
        } else {
            rollback(conn);
        }
        
        close(conn);
        
        return result1 + result2;
    }
    
    public int getListCount() {  
        Connection conn = getConnection();
        
        int listCount = rDAO.getListCount(conn);
        
        close(conn);
        
        return listCount;
    }
    
    public ArrayList selectTList(int i) {
        Connection conn = getConnection();
        
        ArrayList list = null;
        
        if (i == 1) {
            list = rDAO.selectRList(conn);	
        } else {
            list = rDAO.selectFList(conn);
        }
        
        close(conn);
        
        return list;
    }
}