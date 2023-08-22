<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>덕에듀::인사말</title>
    <%@ include file="head.jsp" %>
    <link rel="stylesheet" href="<%=headPath%>/css/sub.css">
    <style>

        .int_img { width: 300px;
            display: block;
            margin: 50px auto;  }

        .page .intro .intro_con {
            font-family: omyu_pretty;
            font-size: 20px;
            text-align: center;
            width: 800px;
            height: 300px;
            display: block;
            margin: 50px auto;
            line-height: 180%; }

        h2 { font-family: KCC-Ganpan; }

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
            <p><a href="/"> HOME </a> &gt; <a href="<%=headerPath%>/company01.jsp"> 회사소개 </a> &gt; <span> 인사말 </span></p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">인사말</h2>
            </div>
            <div class="intro">
                <img src="/image/sub/bigduck.png" class="int_img">
                <div class="intro_con">
                교육브랜드 Duck Edu '덕'에 아이들이 바르게 성장하고, 즐거운 학습을 하길 바랍니다. <br>
                우리는 혁신적이고 포용적인 교육을 통해 어린이들의 개별 잠재력을 최대한 끌어올리고,<br>
                긍정적인 학습 경험을 제공하여 지속적인 성장과 발전을 촉진하며, <br>
                사회적, 감정적, 지적 영역에서 강한 기반을 구축하는 데 헌신하고 있습니다.<br>
                함께 어린이들을 세계적인 시민으로 키워내는 길을 개척하겠습니다.<br>
                </div>
            </div>

        </section>
    </div>
    <footer class="ft" id="ft">
        <%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>
