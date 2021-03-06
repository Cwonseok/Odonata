<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.vo.User, java.util.ArrayList, msg.model.vo.*"%>
<%
    Message msg = (Message)request.getAttribute("msgDetail");
%>
<%@ page import="user.model.vo.User" %>
<%
  User loginUser = (User)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
  </script>
  <script src="<%= request.getContextPath() %>/js/jquery-3.6.0.min.js"></script>

  <link rel="shortcut icon" href="<%= request.getContextPath() %>/img/airbnb.ico" type="image/x-icon" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />

  <link rel="stylesheet" href="<%= request.getContextPath() %>/style/navi.css" />

  <title>내 쪽지함</title>

  <style>
    /* html, body {
      height: 100%;
      width: 100%;
    } */
    #message {
      background: lightgray;
      height: 200px;
    }

    #messageBox {
      background: lightgray;
      height: 400px;
    }

    #messageText,
    #messageTB {
      width: 100%;
    }
  </style>
</head>

<body>
<header>
  <nav class="main-navi" style="background: #f2bba7">
    <a href="<%= request.getContextPath() %>">
      <div class="logo">
        <img src="<%= request.getContextPath() %>/img/public_img/logo.png" width="80px" height="80px" alt="잠자리"
          class="mx-2" />
      </div>
      <%-- 로그인 / 마이페이지 / 로그아웃 --%>
      <div class="roginmenu">
        <% if(loginUser == null) { %>
        <button type="button" onclick="location.href='<%= request.getContextPath() %>/loginForm.us'"
          class="item menusolo hostdg">
          로그인/회원가입
        </button>
        <% } else { %>
        <div id="userInfo" align="right">
          <%-- <label> <%= loginUser.getUser_name() %> 님의 방문을 환영합니다. </label>
          <br clear="all"> --%>
          <div class="menu">
            <%-- <input type="button" class="item menusolo hostdg" value="내 정보 보기" onclick="location.href='<%= request.getContextPath() %>/myPage.me'">
            --%>
            <input type="button" class="item menusolo hostdg" value="로그 아웃"
              onclick="location.href='<%= request.getContextPath() %>/logout.me'">
          </div>
        </div>
        <div class="button" type="button" onclick="location.href='<%= request.getContextPath() %>/myPageForm.us'">
          <img class="profile" src="<%= request.getContextPath() %>/img/public_img/profile.png" alt="마이페이지"
            id="profile" />
        </div>
        <% } %>
      </div>

      <%-- 로그인 / 마이페이지 / 로그아웃 끝 --%>
    </a>

    <%-- <div class="menu">
        <button
          type="button"
          onclick="location.href='login.html'"
          class="item menusolo hostdg"
        >
          로그인/회원가입
        </button>
        <div class="item menusolo"></div>
        <div class="item menuset">
          <button
            class="mypage"
            type="button"
            onclick="location.href='login.html'"
            class="item menusolo hostdg"
          >
            <i class="fas fa-user-circle"></i>
          </button>
        </div>
      </div> --%>
  </nav>
</header>

  <div class="container-fluid">
    <div class="row mx-auto my-4">
      <div class="col px-5">
        <h2>쪽지</h2>
      </div>
    </div>

    <div class="mx-5">
      <button type="button" class="btn btn-secondary btn-sm btn-block"
        onclick="location.href='<%= request.getContextPath() %>/msgInsert.ms'">
        작성하기
      </button>
      <button type="button" class="btn btn-secondary btn-sm btn-block" onclick="deleteMSG();">
        삭제하기
      </button>
    </div>

    <div class="row mx-auto my-2 mb-4">
      <div class="col px-5 mx-5" id="messageBox">
        <table class="table table-border" id="messageDetail">
          <thead>
            <tr>
              <th>제목</th>
              <th colspan="3"><%= msg.getMessage_Title() %></th>
            </tr>
            <tr>
              <th>보낸이</th>
              <td><%= msg.getSend_Id() %></td>
              <th>보낸 시간</th>
              <td><%= msg.getSendTime() %></td>
            </tr>
            <tr>
              <td colspan="4">
                <div class="form">
                  <textarea class="form-control" id="msgContent" name="msgContent" style="height: 240px"
                    readonly><%= msg.getMessage_Text() %></textarea>
                </div>
              </td>
            </tr>
          </thead>
          <tbody>
            <div style="display:none;" id="msgCode"><%= msg.getMessage_Code() %></div>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</body>
<script>
  function deleteMSG() {
    var bool = confirm('정말로 삭제하시겠습니까?');
    var mId = $('#msgCode').text();
    if (bool)
      location.href = '<%= request.getContextPath() %>/deleteMessage.ms?mId=' + mId;
  }
</script>

</html>