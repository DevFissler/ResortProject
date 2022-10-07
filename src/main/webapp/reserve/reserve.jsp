<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<%
	String date = request.getParameter("date");
	String room = request.getParameter("room");
%>
 <form method="post" name="add">
    <table class="table table-bordered">
        <thead>
          <tr>
            <th colspan="2"><center><b>예약 페이지</b></center></th>
          </tr>
        </thead>
        <tbody>   
          <tr>
            <th scope="row" width="200px">성명</th>
            <td><input type="number" name="res_name" id="res_name" value="" ></td>
          </tr>
          <tr>
            <th scope="row">예약 일자</th>
            <td><input type="text" name="res_date" id="res_date" value="<%=date %>" readonly></td>
          </tr>
          <tr>
            <th scope="row">방 종류</th>
            <td><input type="text" name="room_type" id="room_type" value="<%=room %>" readonly></td>
          </tr>
          <tr>
            <th scope="row">전화 번호</th>
            <td><input type="text" name="res_tel" id="res_tel" value=""></td>
          </tr>
          <tr>
            <th scope="row">입금자 명</th>
            <td><input type="text" name="res_ipName" id="res_ipName" value="" ></td>
          </tr>
          <tr>
            <th scope="row">남기실 말</th>
            <td><input type="text" name="res_memo" id="res_memo" value="" ></td>
          </tr>        
        </tbody>
     </table>
 </form>
</body>
</html>