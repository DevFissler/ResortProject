<%@page import="java.sql.*,javax.sql.*,java.io.*,java.net.*,org. w3c.dom.*,javax.xml.parsers.DocumentBuilder,javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.ParserConfigurationException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<table>
<tr>
<td>날짜</td>
<td>VIP</td>
<td>디럭스</td>
<td>일반실</td>
</tr>
	<%
		Date now=new Date(); 
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Class.forName("com.mysql.cj.jdbc.Driver"); //드라이버
		Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.23.90:33063/koposw23","root","koposw23"); //커넥션
		Statement stmt = conn.createStatement(); //스테이트먼트
		
		stmt.executeQuery("call reserve_recording();");
		
		ResultSet rset = stmt.executeQuery("select * from reserve_status;");
		
		while (rset.next()){
			
			int weekday = cal.get(Calendar.DAY_OF_WEEK);
			String korWeekDay="";
			
			switch (weekday) {
				case 1:
					korWeekDay="일";
					break;
				case 2:
					korWeekDay="월";
					break;
				case 3:
					korWeekDay="화";
					break;
				case 4:
					korWeekDay="수";
					break;
				case 5:
					korWeekDay="목";
					break;
				case 6:
					korWeekDay="금";
					break;
				case 7:
					korWeekDay="토";
					break;
			}
			
			String a ="";
			String b = "";
			String c = "";
			
			if (rset.getString(2).equals("예약가능")){
				a = "<a href='reserve.jsp?date="+sdf.format(cal.getTime())+"&room=1'>"+rset.getString(2);
			} else {
				a = rset.getString(2);
			}
			
			if (rset.getString(3).equals("예약가능")){
				b = "<a href='reserve.jsp?date="+sdf.format(cal.getTime())+"&room=2'>"+rset.getString(3);
			} else {
				b = rset.getString(3);
			}
			
			if (rset.getString(4).equals("예약가능")){
				c = "<a href='reserve.jsp?date="+sdf.format(cal.getTime())+"&room=3'>"+rset.getString(4);
			} else {
				c = rset.getString(4);
			}
			
			out.print("<tr><td>" + sdf.format(cal.getTime())+" ( "+ korWeekDay +" )</td><td>"+a+"</td><td>"+b+"</td><td>"+c+"</td></tr>");
			cal.add(cal.DATE,+1);
		}
		
		rset.close();
		stmt.close();
		conn.close();
		
	%>
</table>
</center>
</body>
</html>