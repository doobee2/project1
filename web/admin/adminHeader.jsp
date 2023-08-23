<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    String adminPath = request.getContextPath() + "/admin";
    String admin_login = (String) session.getAttribute("id");
    String scriptStr = "";

    boolean check_admin = admin_login != null && admin_login.equals("admin");

    if(!check_admin) {
        scriptStr = "<script>";
        scriptStr += "alert('잘못된 접근입니다.');";
        scriptStr += "location.href='/index.jsp';";
        scriptStr += "</script>";
        out.println(scriptStr);
    }
%>
<div class="admin_hd_wrap" id="adminHdWrap">

        <img src="../image/common/logo_big.png" alt="덕에듀 로고타입" class="adm_logo">

    <nav id="adminHdGnb">
        <h2>환영합니다, 관리자님!</h2><br>
        <h2>덕에듀 관리자 페이지 입니다.</h2><br><br>
        <ul class="menu">
            <li class="item1">
                <a href="<%=adminPath %>/memberList.jsp" class="dp1">회원 관리</a>
            </li>
            <li class="item2">
                <a href="<%=adminPath %>/qnaList.jsp" class="dp1">멘토링 신청 관리</a>
            </li>
            <br>
            <li class="item3">
                <a href="<%=headPath %>/index.jsp" class="dp1">홈으로</a>
            </li>
        </ul>
    </nav>
</div>

<script>
</script>