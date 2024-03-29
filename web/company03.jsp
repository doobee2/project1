<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DUCKEDU::오시는길</title>
    <%@ include file="head.jsp" %>
    <link rel="stylesheet" href="<%=headPath%>/css/sub.css">
    <style>
        #map {
            width:1200px;
            height:600px;
            position:relative;
            margin:20px auto !important;
            overflow:hidden;
            }
        .maptext p {font-size: 24px;
            font-family: omyu_pretty;}
        .mapbox {
            display: block;
            margin: 0 auto;
            text-align: center;
            }
        .mapp img { margin: 20px auto; width: 50px; height: 50px; display: inline-block}
        .mapp a { margin: 10px}
        h2 { font-family: KCC-Ganpan; }
        h3 { font-size: 30px; font-family: KCC-Ganpan; }
    </style>

    <script type="text/javascript" src="http://dmaps.daum.net/map_js_init/v3.js"></script>
    <script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U0301/cssjs/JSON-js/fc535e9cc8/json2.min.js"></script>
</head>
<body>
<div class="wrap web guide" data-page_section="web" data-page_type="guide" data-title="Daum 지도 Web API 가이드">
    <header class="hd" id="hd">
        <%@ include file="header.jsp" %>
    </header>
    <div  class="contents" id="contents">
        <div class="sub">
            <h2>회사소개</h2>
        </div>
        <div class="breadcrumb">
            <p><a href="/"> HOME </a> &gt; <a href="<%=headerPath%>/company01.jsp"> 회사소개 </a> &gt; <span> 오시는길 </span></p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">오시는길</h2>
                <div class="maparea">
                    <div id="map" style="margin-left:140px;	margin-top:50px; width:800px;height:600px; background:#fdd141; text-align: center;"></div>
                    <script>
                        var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                            mapOption = {
                                center: new daum.maps.LatLng(37.4786713,126.8864968), // 지도의 중심좌표
                                level: 2 // 지도의 확대 레벨
                            };
                        var map = new daum.maps.Map(mapContainer, mapOption);
                        // 마커가 표시될 위치입니다
                        var markerPosition  = new daum.maps.LatLng(37.4786713,126.8864968);
                        // 마커를 생성합니다
                        var marker = new daum.maps.Marker({
                            position: markerPosition
                        });
                        // 마커가 지도 위에 표시되도록 설정합니다
                        marker.setMap(map);
                        var iwContent = '<div style="padding:5px 29px; background-color: #fdd141; font-size: 20px; font-weight: bold;">Duck Edu<br><a href="" style="color:blue;" target="_blank"></a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                            iwPosition = new daum.maps.LatLng(37.4786713,126.8864968); //인포윈도우 표시 위치입니다
                        // 인포윈도우를 생성합니다
                        var infowindow = new daum.maps.InfoWindow({
                            position : iwPosition,
                            content : iwContent
                        });
                        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
                        infowindow.open(map, marker);
                    </script>
                    <script type="text/javascript" src="http://m1.daumcdn.net/tiara/js/td.min.js"></script>
                    <script type="text/javascript">
                        var _tiq = 'undefined' !== typeof _tiq ? _tiq : [];
                        window._tiq = _tiq;
                        _tiq.push(['__trackPageview']);
                    </script>
                    <script type="text/javascript" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/mapapidoc/1421136453605/service.min.js">
                    </script>
                </div>
                <div class="mapbox">
                <div class="maptext">
                    <h3>DUCK EDU는 언제나 여러분을 환영합니다.</h3>
                    <p>서울 금천구 벚꽃로 309</p>
                    <p>tel : 02-1004-1004</p>
                </div>
                <div class="mapp">
                    <a href="https://naver.me/FzQ6Ofpu"><img src="/image/common/map1.png" alt="네이버지도 바로가기"></a>
                    <a href="https://place.map.kakao.com/21160721"><img src="/image/common/map2.png" alt="카카오맵 바로가기"></a>
                    <a href="https://goo.gl/maps/HBSjHapKuPdRNFmg9"><img src="/image/common/map3.png" alt="구글맵  바로가기"></a>
                </div>
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
