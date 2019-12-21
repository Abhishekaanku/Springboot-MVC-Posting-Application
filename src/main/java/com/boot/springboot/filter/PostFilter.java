package com.boot.springboot.filter;

import com.boot.springboot.model.UserSession;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.*;
import java.io.IOException;


public class PostFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("abcdef");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("abcdef");
        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {

    }
}
