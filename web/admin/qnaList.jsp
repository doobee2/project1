<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.*" %>
<%@ page import="com.duckedu.db.*" %>
<%@ page import="com.duckedu.vo.*" %>
<%@ include file="../encoding.jsp" %>
<%
    //2. DB 연결
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    DBC con = new MariaDBCon();
    conn = con.connect();

    String sql = "SELECT a.qno AS qno, a.title AS title, a.content AS content, a.author AS author, a.resdate AS resdate, a.cnt as cnt, a.lev AS lev, a.par AS par, b.name AS name FROM qna a, member b WHERE a.author=b.id order BY a.par DESC, a.lev ASC, a.qno ASC";
    pstmt = conn.prepareStatement(sql);
    rs = pstmt.executeQuery();

    List<Qna> qnaList = new ArrayList<>();
    while(rs.next()){
        Qna qna = new Qna();
        qna.setQno(rs.getInt("qno"));
        qna.setTitle(rs.getString("title"));
        qna.setContent(rs.getString("content"));
        qna.setAuthor(rs.getString("author"));
        qna.setResdate(rs.getString("resdate"));
        qna.setCnt(rs.getInt("cnt"));
        qna.setLev(rs.getInt("lev"));
        qna.setPar(rs.getInt("par"));
        qna.setName(rs.getString("name"));
        qnaList.add(qna);
    }
    con.close(rs, pstmt, conn);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>그로우앤조이::관리자페이지-문의관리</title>
    <%@ include file="../head.jsp" %>
    <link rel="stylesheet" href="<%=headPath%>/css/admin.css">
</head>
<body>
<div class="admin_wrap">
    <header class="admin_hd" id="adminHd">
        <%@ include file="/admin/adminHeader.jsp" %>
    </header>
    <div class="admin_contents" id="adminContents">
        <h2>문의 관리</h2>
        <div class="container">
            <table class="table tb1" id="myTable">
                <thead>
                <tr>
                    <th class="item1">글번호</th><th class="item2">제목</th>
                    <th class="item3">작성자</th><th class="item4">작성일</th>
                </tr>
                </thead>
                <tbody>
                <%
                    if(qnaList.size() > 0) {
                        SimpleDateFormat ymd = new SimpleDateFormat("yy-MM-dd");
                        int tot = qnaList.size();
                        for(Qna q:qnaList) {
                            Date d = ymd.parse(q.getResdate());
                            String date = ymd.format(d);
                %>
                <tr>
                    <td class="item1"><%=tot %></td>
                    <td class="item2">
                        <% if(q.getLev()==0) { %>
                        <a href="qnaGet.jsp?qno=<%=q.getQno()%>"><%=q.getTitle() %></a>
                        <% } else { %>
                        <a style="padding-left:30px;" href="qnaGet.jsp?qno=<%=q.getQno()%>">[답변]<%=q.getTitle() %></a>
                        <% } %>
                    </td>
                    <td class="item3"><%=q.getAuthor()%></td>
                    <td class="item4"><%=date %></td>
                </tr>
                <%
                        tot--;
                    }
                } else {
                %>
                <tr><td colspan="4">등록된 문의가 없습니다.</td></tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
