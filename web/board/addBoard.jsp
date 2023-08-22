<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DUCKEDU::공지사항</title>
    <%@ include file="../head.jsp" %>
    <link rel="stylesheet" href="<%=headPath%>/css/sub.css">
</head>
<body>
<div class="container">
    <header class="hd" id="hd">
        <%@ include file="../header.jsp" %>
    </header>
    <div class="contents" id="contents">
        <div class="breadcrumb">
            <p><a href="/">HOME</a> &gt; <a href="/board/boardList.jsp">커뮤니티</a> &gt; <span>공지사항</span></p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">공지사항 글쓰기</h2>
                <hr>
                <form action="addBoardPro.jsp" method="post">
                    <table class="tb1">
                        <tbody>
                        <tr>
                            <th><label for="title">글 제목</label></th>
                            <td>
                                <input type="text" name="title" id="title" class="indata" required>
                                <input type="hidden" name="author" id="author" value="<%=sid %>">
                            </td>
                        </tr>
                        <tr>
                            <th><label for="content">글 내용</label></th>
                            <td><textarea rows="10" cols="80" name="content" id="content" class="indata2" maxlength="990" required></textarea></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="작성하기" class="inbtn">
                                <input type="reset" value="취소" class="inbtn">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </section>
    </div>
    <footer class="ft" id="ft">
        <%@ include file="../footer.jsp" %>
    </footer>
</div>
</body>
</html>