<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DUCKEDU::후원안내</title>
    <%@ include file="head.jsp" %>
    <link rel="stylesheet" href="<%=headPath%>/css/sub.css">

    <style>
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

        .dona_tit {
            margin: 50px auto;
            font-weight: bold;
            font-size: 30px;
        }

        h2 { font-family: KCC-Ganpan; }
        .container { font-family: omyu_pretty; }
        .text { text-align: center; font-size: 24px; }

        .donate {
            width: 200px;
            height: 40px;
            background-color: #83d508;
            border-radius: 4em;
            font-size: 30px;
            padding: 10px;
            display: block;
            margin: 0 auto;
        }
    </style>
</head>



<body>
<div class="wrap">
    <header class="hd" id="hd">
        <%@ include file="header.jsp" %>
    </header>
    <div  class="contents" id="contents">
        <div class="sub">
            <h2>나눔의손길</h2>
        </div>
        <div class="breadcrumb">
            <p><a href="/"> HOME </a> &gt; <a href="<%=headerPath%>/company01.jsp"> 나눔의손길 </a> &gt; <span> 후원안내 </span></p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">후원안내</h2>
            </div>

            <div class="container">
                 <div class="con">
                    <p class="dona_tit">일반후원</p>
                    <p class="text">
                        매월 일정금액을 정해서 자유롭게 후원 <br>
                        아동의 생활비, 교육비, 운영비, 시설보수유지비 등에 사용됩니다.
                    </p>
                    <p class="dona_tit">결연후원</p>
                    <p class="text">
                        아동과 결연을 맺어 아동의 계좌로 직접 후원. <br>
                        후원금은 아동의 개별 교육비 또는 퇴소 후 자립기금으로 사용됩니다.
                    </p>
                    <p class="dona_tit">후원방법</p>
                    <p class="text">
                        우리은행 : 1002-000-000 예금주 : 덕에듀<br>
                        농      협 : 350-0000-0000 예금주 : 덕에듀<br>
                        국민은행 : 2000-1004-1004 예금주 : 덕에듀
                    </p>
                    <p class="dona_tit">후원금 입금방법</p>
                    <p class="text">
                        자동이체<br>
                        은행에 방문하셔서 후원자님의 계좌와 본원 또는 아동의 계좌번호를 알려 주시면 계좌간 자동이체가 가능합니다. <br>
                        자동이체 금액과 이체기간은 후원자님께서 결정할 수 있습니다. 매달 직접 은행에 가시는 번거로움이 없어집니다.<br>
                        (준비물 : 통장, 도장, 신분증)<br><br>
                        계좌이체<br>
                        직접 전달<br>
                        본원에 방문하여 직접 후원할 수 있습니다.<br><br>
                        온라인기부<br>
                        은행에 가시기 번거로우신 분들과 현금이 아닌 다른 결재방법으로 후원하길 원하시는 분들은 다음 사이트를 통해 쉽고 편리하게 후원하실 수 있습니다.
                    </p>
                     <p class="dona_tit">네이버 회원이신 분은 네이버 공익포털사이트 '해피빈'을 통해서 온라인 기부에 참여하실 수 있습니다.</p>
                     <p class="donate">
                         <a href="https://happybean.naver.com/donation/DonateHomeMain#theme=3" target="_blank">기부하러가기</a>
                     </p>
                     
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
