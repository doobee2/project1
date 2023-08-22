<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>그로우앤조이::연혁</title>
    <%@ include file="head.jsp" %>
    <link rel="stylesheet" href="<%=headPath%>/css/sub.css">
    <style>

    .text-box {
    align-items: center;
    width: 1200px;
    padding: 20px;
    margin: 0 auto;
    border: 1px solid #ccc;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.8s, transform 0.4s;
    display: block;
    }
    .text-box:hover {
    border: 5px solid #90dfdc;
    transform: scale(1.05);
    }
    .text-box-content {
    margin-left: 20px;
    }
    .title {
    font-family: SBAggroB;
    font-size: 50px;
    font-weight: bold;
    }
    .content {
    font-family: HakgyoansimWoojuR;
    font-size: 20px;
    color: #555;
    margin-top: 5px;
    }

        h2 { font-family: KCC-Ganpan; }
        .content { font-family: omyu_pretty; }


    </style>
</head>
<body>
<div class="wrap">
    <header class="hd" id="hd">
        <%@ include file="header.jsp" %>
    </header>
    <div  class="contents" id="contents">
        <div class="sub">
            <h2>회사소개</h2>
        </div>
        <div class="breadcrumb">
            <p><a href="/"> HOME </a> &gt; <a href="<%=headerPath%>/company01.jsp"> 회사소개 </a> &gt; <span> 연혁 </span></p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">연혁</h2>
            </div>
        </section>

        <div class="text-box">
            <div class="title">2024</div>
            <div class="text-box-content">
                <div class="content">
                    02.21. SAMSAM 장학생 취업 연계 협약 <br>
                    01.02. 2024 올해의 브랜드 최우수상 수상 <br>

                </div>
            </div>
        </div>

        <div class="text-box">
            <div class="title">2023</div>
            <div class="text-box-content">
                <div class="content">
                    08.22. 2023 서울시 후원 모범 브랜드 선정<br>
                    08.18. 덕에듀(Duck Edu) 홈페이지 오픈<br>
                    07.10. 교육서비스 개발 시작<br>
                    07.04. 교육브랜드 덕에듀(Duck Edu) 설립<br>

                </div>
            </div>
        </div>
    </div>
    <footer class="ft" id="ft">
        <%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>
