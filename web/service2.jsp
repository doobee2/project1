<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DUCKEDU::놀이치료</title>
    <%@ include file="head.jsp" %>
    <link rel="stylesheet" href="<%=headPath%>/css/sub.css">
    <style>

        .container {
            width: 800px;
            display: block;
            align-content: center;
            text-align: center;
            margin: 0 auto;
            line-height: 200%;
            font-size: 30px;
        }

        .con1 { margin: 50px 0; }
        .con2 { margin: 50px 0; }
        .con3 { margin: 50px 0; }
        img { width: 500px; }
        video { display: block;
            width: 500px;
            margin: 0 auto;}

        tit { font-size: 20px; }

        text {
            font-size: 20px;
            line-height: 180%;
        }
        text2 {
            text-align: left;
            font-size: 20px;
            line-height: 180%; }

    </style>
</head>
<body>
<div class="wrap">
    <header class="hd" id="hd">
        <%@ include file="header.jsp" %>
    </header>
    <div  class="contents" id="contents">
        <div class="sub">
            <h2>덕에듀 서비스</h2>
        </div>
        <div class="breadcrumb">
            <p><a href="/"> HOME </a> &gt; <a href="<%=headerPath%>/sample.jsp"> 서비스 </a> &gt; <span> 놀이치료 </span></p>
        </div>
        <section class="page" id="page1">


            <div class="container">
                <h3>놀이치료가 무엇인가요?</h3>
                <div class="video">
                    <video poster="/image/vedio/vd_s.png" controls loop>
                        <source src="/image/vedio/play.mp4" type="video/mp4">
                        <source src="/image/vedio/play.ovg" type="video/ogg">
                        <source src="/image/vedio/play.webm" type="video/webm">
                    </video>
                </div>
                <div class="intro">
                    <h1 class="tit">덕에듀만의 놀이치료</h1>
                    <p class="text">놀이와 성장을 한 번에, 덕에듀 놀이치료 <br>
                    아이의 입장에서 생각한 방식, 아이가 스트레스 받지 않는 교육<br>
                    덕에듀는 아이가 건강하게 성장할 수 있도록 지원합니다.</p>
                </div>


                    https://youtu.be/5mYG1tZKdLQ


                    <div class="con1">
                        <img src="/image/sub/img_block2.png" alt="덕에듀 놀이치료">
                        <h2 class="tit">“놀이”는 아이의 성장에 있어서 중요한 요소입니다. </h2>
                        <p class="text">특히 언어로 다 표현하지 못한 자신의생각과 마음을 놀이로 표현할 수 있기 때문에
                            놀이는 아이들의 “언어”라고 할 수 있습니다. 놀이를 통하여 즐거움을 경험하고,
                            제한에서 벗어나 다양한 시도와 경험을 해볼 수 있습니다.
                            놀이를 통한 다양한 경험과 시도를 통해 신체적 성장과 성숙을 할 수 있으며,
                            정서적 안정과 카타르시스를 놀이 속에서 경험할 수 있습니다.</p>
                    </div>

                    <div class="con2">
                        <img src="/image/sub/img_duck2.jpg" alt="덕에듀 놀이치료">
                        <h2 class="tit">놀이치료가 필요한 대상</h2>
                        <h3>우리아이도 놀이치료가 필요한가요?</h3>
                        <p class="text2">
                            ✔ 가정의 불화 혹은 부모와의 애착의 문제가 있는 아동 <br>
                            ✔ 심리적 충격, 스트레스로 인하여 정서가 불안정한 아동 <br>
                            ✔ 자존감이 낮은 아동 <br>
                            ✔ 지각과 움직임 등 행동 및 전반적 발달에 장애가 있거나 어려움이 있는 아동 <br>
                            ✔ 주의집중이 어려운 아동 <br>
                            ✔ 움직임이 서툴거나 충동적인 아동 <br>
                            ✔ 과잉행동으로 지적을 많이 받는 아동 <br>
                            ✔ 또래집단과 놀이의 경험 부족으로 인하여 사회성발달에 어려움이 있는 아동 <br></p>
                    </div>

                    <div class="con3">
                        <img src="image/sub/img_kids.jpg" alt="덕에듀 놀이치료">
                        <h2 class="tit">놀이치료 효과</h2>
                        <p class="text">대상과의 관계형성을 촉진하는 놀이 활동을 통하여 새로운 관계에서 어려움을 극복하는 방법을 배웁니다.
                            대상과의 관계하는 놀이를 통하여 거절 등 어려움을 경하며 어려움을 극복하는 방법과 내적인 힘을 기를 수 있습니다.
                            발달이 늦은 아동들은 놀이 속에서 다양한 자극을 경험해 보고 발달을 촉진을 도웁니다.
                            아동의 전반적인 발달 수준, 행동 및 사고의 특성과 내용, 감정표현, 갈등 등을 처리하는 방법을 배웁니다.
                            형제, 가족관계 및 또래관계에 필요한 긍정적인 행동기술을 배웁니다.
                            놀이를 통해 자연스럽게 언어표현력을 기를 수 있습니다.
                            긴장과 불안을 완화 할 수 있습니다.
                            부주의하거나 충동적인 아동들은 조절하는 방법과 긍정적인 사고를 하도록 돕습니다.</p>
                    </div></div>




        </section>
    </div>
    <footer class="ft" id="ft">
        <%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>