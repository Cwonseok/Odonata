package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import filter.wrapper.EncryptWrapper;

/**
 * Servlet Filter implementation class EncryptFilter
 */
@WebFilter(servletNames = { "InsertUserServlet", "LoginServlet", "UpdatePwdServlet", "Pwdfind" })
public class EncryptFilter implements Filter {
    
    /**
     * Default constructor.
     */
    public EncryptFilter() {
    }
    
    /**
     * @see Filter#destroy()
     */
    public void destroy() {
    }
    
    /**
     * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
     */
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        // place your code here
        HttpServletRequest hsr = (HttpServletRequest) request;
        
        EncryptWrapper ew = new EncryptWrapper(hsr);
        
        // pass the request along the filter chain
        chain.doFilter(ew, response);
    }
    
    /**
     * @see Filter#init(FilterConfig)
     */
    public void init(FilterConfig fConfig) throws ServletException {
    }
}
