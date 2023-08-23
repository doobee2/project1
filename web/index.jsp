<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="com.duckedu.vo.*" %>
<%@ page import="com.duckedu.db.*" %>
<%@ page import="com.duckedu.dto.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.duckedu.dto.Board" %>

<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String sql = "";

    DBC con = new MariaDBCon();
    conn = con.connect();

    //공지사항 불러오기
    List<Board> boardList = new ArrayList<>();
    try {
        sql = "select * from board order by bno desc";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, 2);
        rs = pstmt.executeQuery();
        while(rs.next()){
            Board bd = new Board();
            bd.setBno(rs.getInt("bno"));
            bd.setTitle(rs.getString("title"));
            bd.setContent(rs.getString("content"));
            bd.setAuthor(rs.getString("author"));
            bd.setResdate(rs.getString("resdate"));
            bd.setCnt(rs.getInt("cnt"));
            boardList.add(bd);
        }
    } catch (SQLException e) {
        System.out.println("공지사항 SQL 문 오류");

    }


%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DUCK EDU</title>
    <%@ include file="head.jsp" %>

    <!-- 스타일 초기화 : reset.css 또는 normalize.css -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">

    <!-- 필요한 폰트를 로딩 : 구글 웹 폰트에서 폰트를 선택하여 해당 내용을 붙여 넣기 -->
    <link rel="stylesheet" href="google.css">
    <link rel="stylesheet" href="fonts.css">

    <!-- 필요한 플러그인 연결 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="common.css">
    <link rel="stylesheet" href="hd.css">
    <link rel="stylesheet" href="/css/main.css">
    <style>

        /* 본문 영역 스타일 */
        .contents { clear:both; }
        .contents::after { content:""; clear:both; display:block; width:100%; }
        .vs { clear:both; width:100%; min-height:600px; position:relative; overflow:hidden; }
        .img_box { position:relative; width: 100%; height:600px; overflow:hidden; }
        .img_box li { visibility:hidden; opacity:0;  transition-duration:0.7s;
            transition-delay:0.1s;    width:100%; height:600px;  }
        .img_box li .bg_box { width:100vw; height:600px; background-repeat: no-repeat;
            background-position:center center; background-size:cover; position:absolute;
            left: 0; top: 0; z-index:5; }
        .img_box li.active .bg_box { z-index:6; }
        .img_box li.item1 .bg_box { background-image: url("/image/main/vs1.jpg"); }
        .img_box li.item2 .bg_box { background-image: url("/image/main/vs2.jpg"); }
        .img_box li .vs_tit {
            position:absolute; top: 300px; right: 200px; z-index:10;
            font-family: KCC-Ganpan; font-weight: 300; font-size: 60px; line-height: 1.3; }
        .img_box li .vs_tit strong { font-weight: 500; }

        .img_box li.active { visibility: visible; opacity: 1; }
        .vs_tit { font-size:60px; color:#fff; }
        .btn_box li .vs_btn { display:block; width: 12px; height: 12px;
            background-color:rgba(255,255,255,0.8); border:2px solid #fff;
            position:absolute; top:100px; left: 100px; z-index:14; cursor:pointer;
            border-radius:50%; }
        .btn_box li.item2 .vs_btn { left: 132px; }
        .btn_box li.active .vs_btn { background-color: #fff; border:2px solid #333; }
        .vs_ra { display:none; }

        .play_btn { display:block; width: 12px; height: 12px; position:absolute;
            top:98px; left: 164px; z-index:14; cursor:pointer; color: #fff;
            border:0;  background-color: transparent; font-weight: 900; }
        .play_btn:after { content:"| |"; }
        .play_btn.active:after { content:"▶"; }

        .page { clear:both; width: 100vw; height: 100vh; position:relative; }
        .page::after { content:""; display:block; width: 100%; clear:both; }

        .page_wrap { clear:both; width: 1200px; height: auto; margin:0 auto; }
        .page_tit { font-family: omyu_pretty; font-size:48px; text-align: center; padding-top:1.75em; }

        #page1 { background-color: #f1f2f1;
            background-image:url("./images/bg_social_ptn01.png");
            background-position:15vw 63vh; background-repeat: no-repeat; }

        .pic_lst { font-family: omyu_pretty; clear:both; width: 1200px; margin: 60px auto; }
        .pic_lst li { width: 45%; margin-right:26px; height: 400px; float:left;
            background-repeat: no-repeat; background-position:center center;
            filter:brightness(90%); margin-top:30px; transition:0.4s;
            box-shadow:12px 12px 12px #999; overflow:hidden;  }
        .pic_lst li:hover { filter:brightness(140%); margin-top: -10px; }
        .pic_lst li a { display:block; width: 96%; height: 376px; margin: 11px;
            border:1px solid #fff; color:#fff; }
        .pic_lst li:last-child { margin-right: 0; }
        .pic_lst li.item1 { background-image: url("./image/sub/img_study.jpg"); background-size: cover}
        .pic_lst li.item2 { background-image: url("./image/sub/img_kids.jpg"); background-size: cover}


        .pic_com { padding-left: 20px; padding-top: 20px; font-size:40px; line-height: 160%;}
        .pic_tit { padding-left: 20px; padding-top: 20px; font-size:20px; line-height: 160%; }
        .pic_arrow { display:block; width:110px; height:10px; border-bottom:1px solid #fff;
            margin-top: 20px; margin-left: -12px; transition:0.4s; position:relative; }
        .pic_lst li:hover a .pic_arrow { margin-left:20px; }
        .pic_arrow::after { content:""; display:block; width: 10px; height: 10px;
            position:absolute; right:0; top: 0; border-bottom:1px solid #fff; transform-origin:100% 100%;
            transform:rotate(45deg); display:none; }
        .pic_lst li:hover a .pic_arrow::after { display:block; }


    </style>

    <link rel="stylesheet" href="ft.css">
    <script>document.onkeydown = function() { return false; }</script>
</head>
<body>
<div class="wrap">
    <header class="hd" id="hd">
        <%@ include file="header.jsp" %>
    </header>
    <div class="contents" id="contents">
        <figure class="vs">
            <ul class="img_box">
                <li class="item1 active">
                    <input type="radio" name="vs_ra" id="vs_ra1" class="vs_ra" checked>
                    <div class="bg_box"></div>
                    <h2 class="vs_tit">놀면서 배우는 Duck Edu,<br>
                        <strong>즐거운 학습을 시작해보세요!</strong></h2>
                </li>
                <li class="item2">
                    <input type="radio" name="vs_ra" id="vs_ra2" class="vs_ra">
                    <div class="bg_box"></div>
                    <h2 class="vs_tit">"어린 마음, 큰 꿈, 함께 성장!"<br>
                        <strong>모든 아이들의 꿈을 응원합니다.</strong>
                    </h2>
                </li>
            </ul>
            <ul class="btn_box">
                <li class="item1 active"><label for="vs_ra1" class="vs_btn"></label></li>
                <li class="item2"><label for="vs_ra2" class="vs_btn"></label></li>
            </ul>
            <button type="button" class="play_btn"></button>
        </figure>
        <script>
            $(function(){
                $(".btn_box li .vs_btn").click(function(){
                    var par = $(this).parents("li").index();
                    $(".img_box li").removeClass("active");
                    $(".img_box li").eq(par).addClass("active");
                    $(".btn_box li").removeClass("active");
                    $(".btn_box li").eq(par).addClass("active");
                });
                var sw = 1;
                var int1 = setInterval(function(){
                    if(sw==1){
                        autoplay(1);
                        sw = 0;
                    } else {
                        autoplay(0);
                        sw = 1;
                    }
                }, 3500);

                function autoplay(n){
                    $(".img_box li").removeClass("active");
                    $(".img_box li").eq(n).addClass("active");
                    $(".btn_box li").removeClass("active");
                    $(".btn_box li").eq(n).addClass("active");
                }

                $(".play_btn").click(function(){
                    if($(this).hasClass("active")){
                        $(this).removeClass("active");
                        sw = 1;
                        int1 = setInterval(function(){
                            if(sw==1){
                                autoplay(1);
                                sw = 0;
                            } else {
                                autoplay(0);
                                sw = 1;
                            }
                        }, 3500);
                    } else {
                        $(this).addClass("active");
                        sw = 0;
                        clearInterval(int1);
                    }
                });
            });
        </script>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit"><span class="txtColor1">DuckEdu</span><span class="txtColor2">Service</span></h2>
                <ul class="pic_lst">
                    <li class="item1">
                        <a href="">
                            <p class="pic_com">멘토링</p>
                            <h3 class="pic_tit">아이와 대학생과의 1:1 매칭 멘토링을 통해 정서지원과 맞춤 학습을 제공합니다.</h3>
                            <span class="pic_arrow"></span>
                        </a>
                    </li>
                    <li class="item2">
                        <a href="">
                            <p class="pic_com">부모교육</p>
                            <h3 class="pic_tit">우리 아이가 바르게 성장할 수 있도록 부모님께 필요한 교육을 학습해보세요.</h3>
                            <span class="pic_arrow"></span>
                        </a>
                    </li>

                </ul>
            </div>
        </section>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit"><span class="txtColor1">DuckEdu</span><span class="txtColor2">Community</span></h2>
                <ul class="board_lst">
                    <li class="item1">
                        <div class="board_tit">
                            <h3>공지사항</h3>
                            <a href="<%=headerPath%>/board/boardList.jsp" class="btn_more">+</a>
                        </div>
                        <ul class="board_con">
                            <%
                                if(boardList.size() > 0){
                                    for(Board bd : boardList) {
                                        String dateStr = bd.getResdate().substring(0, 10);
                                        String title = "";
                                        if(bd.getTitle().length() > 70) {
                                            title = bd.getTitle().substring(69) + "...";
                                        } else {
                                            title = bd.getTitle();
                                        }
                            %>
                            <li><a href="<%=headerPath %>/board/getBoard.jsp?bno=<%=bd.getBno() %>"><%=title %><span class="date"><%=dateStr %></span></a></li>
                            <% } } else { %>
                            <li class="no_date">
                                등록된 공지사항이 없습니다.
                            </li>
                            <% } %>
                        </ul>
                    </li>
                </ul>
            </div>
        </section>


        <script>
            $(function(){
                $(".sl-btn-box .btn.next").click(function(){
                    var ln = parseInt($(".card_lst").css("margin-left"));
                    if(ln>-1110) {
                        var mv = ln - 370;
                        $(".card_lst").not(":animated").animate({"margin-left":mv+"px"});
                    }
                });
                $(".sl-btn-box .btn.prev").click(function(){
                    var ln = parseInt($(".card_lst").css("margin-left"));
                    if(ln<0){
                        var mv = ln + 370;
                        $(".card_lst").not(":animated").animate({"margin-left":mv+"px"});
                    }
                });
            });
        </script>
    </div>
    <footer class="ft" id="ft">
        <%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>