package payment.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import payment.model.dao.PaymentDAO;
import payment.model.vo.Payment;

public class PaymentService {
    
    private PaymentDAO pDAO = new PaymentDAO();
    
    public int insertPayment(Payment payment) {
        Connection conn = getConnection();
        
        int result = pDAO.insertPayment(conn, payment);
        
        if (result > 0) {
            commit(conn);
        } else {
            rollback(conn);
        }
        
        close(conn);
        
        return result;
    }
    
}

