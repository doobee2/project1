<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DUCKEDU::사업소개:부모교육</title>
    <%@ include file="head.jsp" %>
    <link rel="stylesheet" href="<%=headPath%>/css/sub.css">
    <style>
        @font-face {
            font-family: 'HakgyoansimWoojuR';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }
        @font-face {
            font-family: 'SBAggroB';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        .container {
            width: 900px;
            display: block;
            margin: 0 auto;
        }

        /* div 블록 스타일 */
        .con {
            width: 800px;
            text-align: center;
            line-height: 180%;
            color: black;
            border-top: 5px solid #eedca2;
            padding: 50px;
            transition: background-color 0.3s; /* 마우스 호버 효과 */
        }

        /* 마우스 호버 효과 스타일 */
        .con:hover {
            background-color: #f3e6bc;
        }

        .edu_tit {
            margin: 50px auto;
            font-weight: bold;
            font-size: 30px;
        }

        h2 { font-family: KCC-Ganpan; }
        .container { font-family: omyu_pretty; }
        .text { text-align: center; font-size: 24px; }
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
            <p><a href="/"> HOME </a> &gt; <a href="<%=headerPath%>/sample.jsp"> 사업소개 </a> &gt; <span> 부모교육 </span></p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">부모교육</h2>
            </div>

            <div class="container">
                    <div class="con">
                        <h3 class="edu_tit">아이 성장에 부모의 역할은 중요합니다.</h3>
                        <img src="/image/sub/news.png" alt="기사발췌">
                    </div>
                    <div class="con">
                        <p class="edu_tit">부모교육은 왜 필요할까요?</p>

                    <p class="text">
                        ✔아이의 발달 지원 <br>
                        부모교육은 부모들이 아이의 신체적, 정서적, 사회적, 인지적 발달을 어떻게 지원할 수 있는지에 대한 정보와 도구를 제공합니다. 이를 통해 부모는 자녀의 성장과 학습을 최대한 잘 지원할 수 있습니다.<br><br>
                        ✔양육 기술 습득 <br>
                        부모교육은 부모들이 효과적인 양육 기술을 습득하고, 아이들의 행동 및 감정에 대해 더 잘 이해하도록 돕습니다. <br><br>
                        ✔충돌 해결 능력 강화 <br>
                        부모교육은 가정 내 충돌을 다루는 방법과 대화 기술을 개발하는 데 도움을 줄 수 있습니다. 이를 통해 가정 내 갈등을 줄이고, 가정 분위기를 개선할 수 있습니다.<br><br>
                        ✔아동 안전 보장 <br>
                        부모교육은 아동 안전 및 보호에 관한 정보를 제공하며, 아동학대 예방과 대처 방법을 가르쳐줍니다.<br><br>
                        ✔사회적 지원 <br>
                        부모교육 프로그램은 부모들 간의 지원 네트워크를 형성하는 데 도움을 줄 수 있습니다. 부모들은 서로의 경험을 공유하고, 어려움을 함께 극복하는데 도움을 주며, 사회적 연결성을 높일 수 있습니다.<br><br>
                        ✔부모의 책임감 강화 <br>
                        부모교육은 부모들이 자녀의 양육에 대한 책임감을 높이고, 더 나은 부모가 되기 위한 동기부여를 제공합니다.<br><br>
                        ✔학업 성적 향상 <br>
                        부모교육은 부모가 자녀의 학업을 지원하는 방법에 대한 정보를 제공할 수 있어, 자녀의 학업 성적 향상에 도움을 줄 수 있습니다.<br><br>
                    </p></div>
                    <div class="con">
                            <p class="edu_tit">Duck Edu만의 부모교육</p>
                            <h3 class="text">Duck Edu에서는 육아 스킬 강화 프로그램, 부모-아동 상호작용 강화 프로그램, 특수 양육 프로그램, 청소년 양육 프로그램을 진행하고 있습니다.</h3>
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