<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DUCKEDU::사업소개:멘토링</title>
    <%@ include file="head.jsp" %>
    <link rel="stylesheet" href="<%=headPath%>/css/sub.css">
    <style>

        .container {
            width: 1000px;
            display: block;
            align-content: center;
            text-align: center;
            margin: 0 auto;
            line-height: 200%;
            font-size: 30px;
            font-family: omyu_pretty;
            font-size: 20px; line-height: 180%;
        }

        .con { margin: 50px 100px; padding: 20px; border-top: 5px solid #eedca2; }
        img { width: 500px; }
        video { display: block;
            width: 500px;
            margin: 0 auto;}

        .edu_tit { font-weight:bold; font-size: 30px; }

        .text {
            font-size: 20px;
            line-height: 180%;
        }

        h2 { font-family: KCC-Ganpan; }

        p { font-size: 20px; }
        .btn { width: 150px;
            height: 37px;
            border: 3px solid #fdd141;
            border-radius: 4px;
            background-color: #fff4c5;
            font-size: 24px;
            text-align: center;
            display: block;
            margin: 40px auto;}

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
            <h2>사업소개</h2>
        </div>
        <div class="breadcrumb">
            <p><a href="/"> HOME </a> &gt; <a href="<%=headerPath%>/sample.jsp"> 사업소개 </a> &gt; <span> 멘토링 </span></p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">멘토링</h2>
            </div>

            <div class="container">
                <div class="con">
                    <img src="/image/sub/img_study.jpg" alt="멘토링">
                        <p class="edu_tit">멘토링이란?</p>
                        <p class="text">더 경험이 풍부하거나 더 전문적인 지식을 가진 사람(멘토)과 더 경험이 부족하거나 더 배우려는 사람(멘티) 간의 지원과 지도 관계를 말합니다.
                        </p>
                </div>
                    <div class="con">
                    <p class="edu_tit">멘토링 효과</p>
                    <p class="text">
                        ✔ 학습과 지식 전달 <br>
                        멘토는 자신의 경험과 지식을 멘티와 공유하여 학습을 지원합니다.<br><br>
                        ✔ 진로 개발 <br>
                        멘토의 조언을 받아 미래 계획을 수립하고 목표를 달성할 수 있습니다. <br><br>
                        ✔ 정서 지원 <br>
                        멘티는 멘토와의 관계에서 자신의 염려나 고민을 나눌 수 있습니다. 이를 통해 멘토는 멘티의 심리적인 지원 역할을 하며, 자신의 경험을 통해 조언과 조언을 제공합니다.<br><br>
                        ✔ 네트워킹 <br>
                        새로운 커넥션을 형성하고 비즈니스 또는 학문적인 기회를 발견할 수 있습니다.<br><br>
                        ✔성장과 자기개발 <br>
                        멘티는 멘토와의 상호 작용을 통해 더 나은 리더가 되고, 자기 개발에 기여하는 방법을 배울 수 있습니다. <br><br>
                    </p></div>
                    <div class="con">
                <img src="/image/sub/mento.jpg" alt="멘토링">
                    <p class="edu_tit">DUCK EDU에서는 아이들의 든든한 지원군이 되어줄 멘토와<br>
                    꿈을 향해 달려가고 싶은 멘티를 수시 모집하고 있습니다.<br>
                    많은 사랑과 관심 부탁드립니다.</p>
                        <div class="btn"><a href="<%=headerPath %>/qna/qnaList.jsp">신청하러가기</a></div>
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