<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%-- 1. 필요한 sql, db 패키지 임포트  --%>
<%@ page import="java.sql.*" %>
<%@ page import="com.duckedu.db.*" %>
<%@ include file="../encoding.jsp" %>
<%-- 2. 인코딩 및 보내온 데이터 받기 --%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=UTF-8");
    response.setCharacterEncoding("UTF-8");

    String title = request.getParameter("title");
    String author = request.getParameter("author");
    String content = request.getParameter("content");

    int cnt = 0;
    Connection conn = null;
    PreparedStatement pstmt = null;
    DBC con = new MariaDBCon();
    conn = con.connect();

    String sql = "insert into board(title, content, author) values (?, ?, ?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, title);
    pstmt.setString(2, content);
    pstmt.setString(3, author);


    int cnt = pstmt.executeUpdate();
    String script = "<script>";
    script += "history.go(-1);";
    script += "</script>";
    if(cnt>0){
        response.sendRedirect("/bboardList.jsp");
    } else {
        response.sendRedirect("addBoard.jsp");
    }
    con.close(pstmt, conn);
%>
