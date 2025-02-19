<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Table - Brand</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/untitled.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <script src="https://code.jquery.com/jquery-3.5.1.js"
            integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>

<H1>수정 페이지</H1>

<div id="wrapper">
    <!--사이드 네비바 include-->
    <%@include file="/views/adminCommon/side_navi.jsp" %>

    <!-- 컨텐츠 영역 -->
    <div class="d-flex flex-column" id="content-wrapper">
        <div id="content">
            <!--상단 네비바 include-->
            <%@include file="/views/adminCommon/top_navi.jsp" %>
            <div class="card shadow">
                <div class="col-xxl-1">
                    <div id="page" class="page"></div>
                </div>
                <section class="article-clean">
                    <div class="container" id="writeForm">
                        <div class="row text-capitalize" style="padding-top: 70px;height: auto;padding-bottom: 15%;">
                            <div class="col-lg-10 col-xl-8 offset-lg-1 offset-xl-2" style="margin-top: -50px;">
                            	<form action="/adminNotice/fileUpload.do" method="post" enctype="multipart/form-data">
                                <section class="article-list">
                                    <div class="container" style="padding-top: -3px;">
                                        <p class="text-center">
                                            <span class="by">공지사항</span>
                                            <span class="date"></span>
                                        </p>

                                        <hr/>
                                        <input class="form-control-sm" name="noticeTitle" type="text"
                                               style="width: 80%;height: 20px;transform: translate(47px) scale(1.12);border-top-style: solid;border-top-color: rgb(237,237,237); border-right-style: solid;border-right-color: rgb(237,237,237);border-left-style: solid;border-left-color: rgb(237,237,237);margin-bottom: 0px;margin-top: 20px;"
                                               placeholder="제목을 입력하세요" />
                                        <div style="padding: 0px;padding-left: 0;margin: 48px 0px 0px 488.8px;margin-left: 69%;margin-top: 47px;margin-right: 0px;font-size: 12px;padding-right: 0px;">
                                            <div class="btn-group" role="group"
                                                 style="border-style: none;border-color: var(--bs-gray-100);margin-right: 26px;padding-right: 0px;margin-top: 0px;padding-top: 0px;"></div>
                                        </div>
                                        <div>
                                            <p class="text-center" style="margin-top: 0px;padding-top: 9px;">
                                                <span class="date" style="margin-left: 0;padding-left: 0px;transform: translate(-136px);margin-right: 70%;">
                                                    <input type="file" name="file" id="file">
                                                    <span id="size">
                                                    </span>
                                                </span>
                                            </p>
                                        </div>
                                    </div>
                                </section>
                                <hr/>
                                <div class="intro"></div>
                                <div class="text" style="padding-bottom: 8%;padding-top: 10px;">
                                    <textarea class="form-control-sm" name="noticeContent"
                                              style="width: 100%;height: 500px;" 
                                              maxlength="3000"></textarea>
                                    <figure class="figure d-block"></figure>
                                    <hr/>
                                    <button class="btn btn-light btn-sm" id="fileSubmitBtn"
                                            onclick="location.replace('/adminNotice/adminNoticeAllList.do');"
                                            type="submit" style="width: 61px;height: 28px;margin: 2px;padding: 2px 2px;padding-left: 3px;opacity: 1;filter: brightness(90%) contrast(200%) saturate(113%);margin-left: 90%;border-style: none;border-color: rgb(252,252,252);border-top-style: none;border-top-color: rgb(255,255,255);border-right-style: none;border-right-color: rgb(255,255,255);border-bottom-style: none;border-bottom-color: rgb(255,255,255);border-left-style: none;
                        border-left-color: rgb(255,255,255);font-size: 13px;text-align: center;
                        ">완료
                                    </button>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

		
		<script>
	document.getElementById('file').onchange =function(){
	var file = document.getElementById('file');
	var fileSize = file.files[].size/1024/1024;
	document.getElementById("size").innerHtml ="("+(fileSize.toFixed(3)+"MB)"};
	
	document.getElementById('fileSubmitBtn').onclick=function(){
		var file = document.getElementById('file');
		var fileSize = file.fies[0].size;
		if(fileSize>(50*1024*1024))
		{
			alert('업로드 가능한 최대사이즈는 50MB 입니다.')
			return false;
		}else
		{
			return true;
		}
		
	};


</script>











            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span><br><br>webmaster :&nbsp;<a
                            href="mailto:artsuwon@artsuwon.or.kr">artsuwon@artsuwon.or.kr</a><br>Copyrightⓒ2015 Suwon Philhamonic Orchestra &amp; Suwon City Chorale &amp; Suwon Civic Troupe<br><br></span>
                    </div>
                </div>
            </footer>
        </div>
        <a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </div>
    <script src="//<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/theme.js"></script>
</body>
</html>