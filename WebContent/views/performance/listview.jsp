<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>공연일정</title>
      <!-- CSS for include -->
    <link rel="stylesheet" type="text/css" href="/assets/style/contentframe.css" />
    <link rel="stylesheet" type="text/css" href="/assets/style/tag-color.css" />
    <link rel="stylesheet" type="text/css" href="/views/performance/listview.css" />
    <style>
      content {
        width: 100%;
        height: 100%;
        overflow: hidden;
      }
    </style>
  </head>

  <body>
    <!-- Header -->
    <%@ include file="/include/_header.jsp" %>

    <content>
      <!-- Local Navi Bar-->
      <div class="nav_div">
        <nav id="LNB" class="LNB">
          <ul class="nav-menu">
            <li class="menu-item menu-img">
              <a href=""><img src="/assets/icon/home.svg" /></a>
            </li>
            <li class="menu-item">
              <a href=""><b>공연/예매</b></a>
              <ul class="nav-submenu">
                <li class="submenu-item">
                  <a href=""><strong>공연/예매</strong></a>
                </li>
                <li class="submenu-item"><a href="">교육</a></li>
                <li class="submenu-item"><a href="">오케스트라</a></li>
                <li class="submenu-item"><a href="">시향소식</a></li>
                <li class="submenu-item"><a href="">기관소개</a></li>
              </ul>
            </li>
            <li class="menu-item">
              <a href=""><b>공연일정</b></a>
              <ul class="nav-submenu">
                <li class="submenu-item">
                  <a href=""><strong>공연일정</strong></a>
                </li>
                <li class="submenu-item"><a href="">공연소개</a></li>
                <li class="submenu-item"><a href="">예매안내</a></li>
              </ul>
            </li>
            <li class="menu-item hide">
              <a href="">test</a>
              <ul class="nav-submenu">
                <li class="submenu-item">
                  <a href=""><strong>공연일정</strong></a>
                </li>
                <li class="submenu-item"><a href="">공연소개</a></li>
                <li class="submenu-item"><a href="">예매안내</a></li>
              </ul>
            </li>
          </ul>
        </nav>
      </div>

      <div class="wrapper">
        <!-- 공연일정 -->
        <div class="content-title">
          <h2>공연일정</h2>
        </div>
        <!-- 공연타입 선택 -->
        <div class="content-type">
          <h3>공연타입 선택</h3>
          <ul>
            <li category="all" class="all-border-color" onclick="resetCategory();">ALL</li>
            <li category="regular" class="regular-border-color" onclick="filterByCategory('정기공연');">정기공연</li>
            <li category="citizen" class="citizen-border-color" onclick="filterByCategory('시민공연');">시민공연</li>
            <li category="tour" class="tour-border-color" onclick="filterByCategory('순회공연');">순회공연</li>
            <li category="outside" class="outside-border-color" onclick="filterByCategory('외부공연');">외부공연</li>
            <li category="education" class="education-border-color" onclick="filterByCategory('교육공연');">교육공연</li>
          </ul>
        </div>

        <!-- 공연목록 -->
        <div class="list-container">
          <div class="performance">
            <!-- items -->
            <div class="perf-item">
              <div class="title">
                <span>12.10</span>
                <span>금요일</span>
                <span>19:30</span>
                <span>은평문화예술회관 공연장</span>
              </div>
              <div class="detail">
                <div class="image">
                  <img src="/upload/show/default.gif" />
                </div>
                <div class="content">
                  <div class="tag tag_purple">
                    <span>시민공연</span>
                    <span>찾아가는음악회</span>
                  </div>
                  <div>
                    <span><h2>미라클 서울-그래도 크리스마스</h2></span>
                  </div>
                  <div class="list">
                    <dl>
                      <dt>지휘자</dt>
                      <dd>데이비드 이</dd>
                      <dt>협연자</dt>
                      <dd>존 노<br />111<br />222</dd>
                      <dt>프로그램</dt>
                      <dd>베토벤</dd>
                      <dt>가격</dt>
                      <dd>무료</dd>
                      <dt>협찬사</dt>
                      <dd>하나</dd>
                    </dl>
                  </div>
                  <div class="buttons">
                    <div class="detailBtn"><span>자세히 보기</span></div>
                    <div class="reserveBtn"><span>예매하기</span></div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- CALENDAR -->
          <div class="calendar" id="calendar-mini">
            <%@ include file="/include/_calendar-mini.jsp" %>
          </div>
        </div>
      </div>
    </content>

    <!-- footer -->
    <%@ include file="/include/_footer.jsp" %>

    <!-- jQuery Library -->
    <script src="https://code.jquery.com/jquery-3.6.0.js" 
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" 
      crossorigin="anonymous"></script>
    <script src="/views/performance/listview.js" ></script>
  </body>
</html>
