 <!--에러나면 이 페이지 띄워라-->
 <!DOCTYPE html>
 <html lang="en">
 <%@ page contentType="text/html; charset=utf-8" %>
 <%@ page import="java.sql.*, javax.sql.*, java.io.*, java.net.*" %>
 <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
 <head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Document</title>
 </head>
 <body>
     <% //JSP문 시작
        
 
        Class.forName("com.mysql.jdbc.Driver"); //드라이버
        Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.23.90:33063/koposw23","root","koposw23"); //커넥션
        Statement stmt = conn.createStatement(); //스테이트먼트

        String getId = request.getParameter("num");
        String rCount = request.getParameter("rCount");
        
        String QueryTxt2="";
        QueryTxt2="delete from bulletin where recount like ? ";
    
        PreparedStatement pst = conn.prepareStatement(QueryTxt2);
        String names = rCount+'%';
        pst.setString(1, names);
        pst.execute();
        
        stmt.close();
        conn.close();
       %> <!--jsp문 종료-->
       <script>
            alert("<%=getId %> 번 글이 삭제 되었습니다.")
            window.location="allview.jsp?page=1";
        </script>
 </body>
 </html>