<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="java.sql.*,javax.sql.*,java.io.*,java.net.*,org. w3c.dom.*,javax.xml.parsers.DocumentBuilder,javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.ParserConfigurationException" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script language="javascript">
        function inputCheck(){
            var myform = document.mod;
            var titleCheck = document.getElementById('title').value;
            var conCheck= document.getElementById('con').value;
            var num = document.getElementById('num').value;

            if( (titleCheck.indexOf('/')== -1) && (conCheck.indexOf('/')== -1) && (titleCheck.indexOf('>')== -1) && (conCheck.indexOf('>')== -1)  &&
                (titleCheck.indexOf('<')== -1) && (conCheck.indexOf('<')== -1)  && (titleCheck.length !=0) && (conCheck.length !=0)){
                
                myform.action = "updateDB.jsp";
                myform.submit();
            } else if ( !((titleCheck.indexOf('/')== -1) && (conCheck.indexOf('/')== -1) && (titleCheck.indexOf('>')== -1) && (conCheck.indexOf('>')== -1)  &&
                (titleCheck.indexOf('<')== -1) && (conCheck.indexOf('<')== -1))) {
                alert("입력값이 잘못되었습니다( < , > , / 사용이 제한되어있습니다!)");
            } else if ((titleCheck.length ==0) || (conCheck.length ==0)) {
                alert("입력값은 공백 일 수 없습니다");
            }
        }

        function del(){
            var myform = document.mod;
            myform.action = "deleteDB.jsp";
            myform.submit();
        }
    </script>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <%
    Date now=new Date(); 
    SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
    String a = request.getParameter("id");     
    
    Class.forName("com.mysql.jdbc.Driver"); //드라이버
    Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.23.90:33063/koposw23","root","koposw23"); //커넥션
    Statement stmt = conn.createStatement(); //스테이트먼트
    
    ResultSet rset = stmt.executeQuery("select * from bulletin where id = "+a+";");
    
    String id = "";
    String title ="";
    String con ="";
    String rcount ="";
    
    while (rset.next()){
    	id = rset.getString(1);
    	title = rset.getString(2);
    	con = rset.getString(4);
    	rcount = rset.getString(8);
    }
    

    %>
<div class="container-fluid">
    <form method="post" name="mod"><!--폼 하나 생성-->  
    <table class="table table-bordered">
        <thead>
          <tr>
            <th colspan="2" width=500>기존 글 수정</th>
             <td><input type="button" value="취소" onclick="location.href='allview.jsp?page=1'" style="margin-left:80px; margin-right: 20px;">
            <input type="button" value="삭제" onclick="del()" style="margin-right: 20px;">
            <input type="button" value="쓰기" onclick="inputCheck()" style="margin-right: 20px;"></td>
          </tr>
      
        </thead>
        <tbody>
          <tr>
            <th scope="row" width="100px">번호</th>
            <td colspan=2><input type="number" value="<%= id %>" readonly id="num" name="num"></td>
          </tr>
          <tr>
            <th scope="row">제목</th>
            <td colspan=2><textarea name="title" id="title" style="width: 100%; height:30px" maxlength="60"><%=title %></textarea></td>
          </tr>
          <tr>
            <th scope="row">작성일</th>
            <td colspan=2><input type="text" value="<%=format.format(now) %>" id="date" readonly></td>
          </tr>
          <tr>
            <th scope="row" colspan="3">내용</th>
          </tr>
          <tr>
            <td colspan="3" height="220px"><textarea name="con" id="con" style="width: 100%; height: 100%;"><%=con %></textarea><input type="hidden" value=<%=rcount  %> id=rCount name=rCount></td>
            
          </tr>
        </tbody>
      </table>
      </form>
     </div>

</body>
</html>