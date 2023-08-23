<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>덕에듀::멘토링신청</title>
    <%@ include file="../head.jsp" %>
    <link rel="stylesheet" href="<%=headPath%>/css/sub.css">
    <style>
        h2 { font-family: KCC-Ganpan; font-size:48px; }
        form { font-family: omyu_pretty; font-size: 30px; }
    </style>
</head>
<body>
<div class="wrap">
    <header class="hd" id="hd">
        <%@ include file="../header.jsp" %>
    </header>
    <div  class="contents" id="contents">
        <div class="sub">
            <h2>커뮤니티</h2>
        </div>
        <div class="breadcrumb">
            <p><a href="/"> HOME </a> &gt; <a href="<%=headerPath%>/board/boardList.jsp"> 커뮤니티 </a> &gt; <span> 멘토링 신청 </span></p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">멘토링 신청</h2>
                <form action="addBoardPro.jsp" method="post">
                    <input type="hidden" value="2" name="boardType" id="boardType">
                    <table class="table tb2">
                        <tbody>
                        <tr>
                            <th><label for="title">제목</label></th>
                            <td><input type="text" class="inData" name="title" id="title" required></td>
                        </tr>
                        <tr>
                            <th>
                                <label for="content">내용</label>
                            </th>
                            <td>
                                <textarea name="content" id="content" cols="100" rows="100" maxlength="990" class="inData">
1. 이름 :
 2. 학교/학년 :
 3. 성별 :
 4. 연락처 :
 5. 신청사유 :
                                </textarea>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="btn_group">
                        <button type="submit" class="inBtn inBtn1">신청하기</button>
                        <button type="reset" class="inBtn inBtn1" onclick="location.href='qnaList.jsp'">돌아가기</button>
                    </div>
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