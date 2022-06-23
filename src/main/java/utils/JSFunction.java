package utils;

import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

public class JSFunction {
	
	//Javascript함수를 통해 경고창을 띄우고 원하는 페이지로 이동한다. 
	public static void alertLocation(String msg, String url, JspWriter out) {
		/*
		Java클래스에서는 JSP의 내장객체를 사용할 수 없으므로 반드시 매개변수로
		전달받아 사용해야 한다. 
		여기서는 화면에 문자열을 출력하기 위해 out내장객체를 JspWriter 타입으로 
		받은 후 사용하고 있다. 
		*/
        try {
            String script = ""  
                          + "<script>"
                          + "    alert('" + msg + "');"
                          + "    location.href='" + url + "';"
                          + "</script>";
            out.println(script);
        }
        catch (Exception e) {}
    }
	//JS를 통해 경고창을 띄우고 뒤로 이동한다. 
    public static void alertBack(String msg, JspWriter out) {
        try {
            String script = ""
                          + "<script>"
                          + "    alert('" + msg + "');"
                          + "    history.back();"
                          + "</script>";
            out.println(script);
        }
        catch (Exception e) {}
    }
    public static String alertMsg(String msg, JspWriter out) {
        String script = "";
    	try {
            script = ""  
                    + "<script>"
                    + "    alert('" + msg + "');"
                    + "</script>";
            out.println(script);
        }
        catch (Exception e) {}
    	
    	return script;
    }
    
    /*
    이전 2개의 메서드는 JSP에서 out내장객체를 통해 Javascript 함수를 실행한다.
    아래는 서블릿에서 JS함수를 실행하기 위해 작성되므로 out 내장 객체 대신
    response 내장 객체를 통해 컨텐츠 타입을 설정한 후 JS코드를 출력한다.
     */
    public static void alertLocation(HttpServletResponse resp, String msg, String url) {
    	try {
    		//컨텐츠 타입을 설정
    		resp.setContentType("text/html;charset=UTF-8");
    		//PrintWriter 객체를 통해 스크립트를 서블릿에서 직접 출력한다.
    		PrintWriter writer = resp.getWriter();
    		String script = ""
    				+ "<script>"
                    + "    alert('" + msg + "');"
                    + "	   location.href='" + url + "';"
                    + "</script>";
    		writer.print(script);
    	}
    	catch (Exception e) {}
    }
    public static void alertBack(HttpServletResponse resp, String msg) {
    	try {
    		resp.setContentType("text/html;charset=UTF-8");
    		PrintWriter writer = resp.getWriter();
    		String script = ""
    				+ "<script>"
                    + "    alert('" + msg + "');"
                    + "	   history.back();"
                    + "</script>";
    		writer.print(script);
    	}
    	catch (Exception e) {}
    }
}



















