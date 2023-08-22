<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    String headerPath = request.getContextPath();
    String sid = session.getAttribute("id")!=null ? (String) session.getAttribute("id") : null;
%>
<div class="hd_wrap" id="hdWrap">
    <a href="<%=headerPath %>/" class="logo">
        <img src="<%=headerPath %>/image/common/logo.png" alt="덕에듀 로고타입">
    </a>
    <nav class="gnb" id="hdGnb">
        <ul class="menu">
            <li class="item1">
                <a href="<%=headerPath %>/company01.jsp" class="dp1">회사소개</a>
                <ul class="sub">
                    <li><a href="<%=headerPath %>/company01.jsp">인사말</a></li>
                    <li><a href="<%=headerPath %>/company02.jsp">연혁</a></li>
                    <li><a href="<%=headerPath %>/company03.jsp">오시는 길</a></li>
                </ul>
            </li>
            <li class="item2">
                <a href="<%=headerPath %>/service1.jsp" class="dp1">사업소개</a>
                <ul class="sub">
                    <li><a href="<%=headerPath %>/service1.jsp">멘토링</a></li>
                    <li><a href="<%=headerPath %>/service2.jsp">놀이치료</a></li>
                    <li><a href="<%=headerPath %>/service3.jsp">부모교육</a></li>
                </ul>
            </li>
            <li class="item3">
                <a href="<%=headerPath %>/board/boardList.jsp" class="dp1">커뮤니티</a>
                <ul class="sub">
                    <li><a href="<%=headerPath %>/board/boardList.jsp">공지사항</a></li>
                    <li><a href="<%=headerPath %>/qna/qnaList.jsp">멘토링신청</a></li>
                    <li><a href="<%=headerPath %>/faq/faqList.jsp">자주묻는질문</a></li>
                </ul>
            </li>
            <li class="item4">
                <a href="<%=headerPath %>/donate.jsp" class="dp1">후원봉사</a>
                <ul class="sub">
                    <li><a href="<%=headerPath %>/donate.jsp">후원문의</a></li>
                    <li><a href="<%=headerPath %>/donate.jsp">봉사신청</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <nav class="tnb">
        <ul class="menu">
            <% if(sid!=null) { %>
            <li><a href="<%=headerPath %>/member/logout.jsp">로그아웃</a></li>
            <li><a href="<%=headerPath %>/member/mypage.jsp">마이페이지</a></li>
            <% if(sid.equals("admin")) { %>
            <li><a href="<%=headerPath %>/admin/memberList.jsp">관리자페이지</a></li>
            <% } else { %>
            <li><a href="<%=headerPath %>/company03.jsp">오시는 길</a></li>
            <% } %>
            <% } else { %>
            <li><a href="<%=headerPath %>/member/login.jsp">로그인</a></li>
            <li><a href="<%=headerPath %>/member/term.jsp">회원가입</a></li>
            <li><a href="<%=headerPath %>/company03.jsp">오시는 길</a></li>
            <% } %>
        </ul>
    </nav>
</div>

<script>
    var gnb = document.getElementById("hdGnb");
    var hdWrap = document.getElementById("hdWrap");
    gnb.addEventListener("mouseover", function() {
        hdWrap.classList.add("hoverMenu");
    });

    gnb.addEventListener("mouseleave", function () {
        hdWrap.classList.remove("hoverMenu");
    });
</script>