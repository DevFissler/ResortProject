<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
td {
	font-size: 12;
	text-align: center;
}

a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	
}

a:active {
	text-decoration: none;
}
</style>
<script language='javascript' type="text/javascript">
    var muCnt = 5;
    function fncShow(pos){
      var i = 0;
      for(i; i < muCnt; i++){
        var obj = document.getElementById("menu" + i);
        var obj2 = document.getElementById("m" + i);
        if(i == pos){
          obj.style.display = "";
          obj2.style.color = "#ff0000";
        } else{
          obj.style.display = 'none';
          obj2.style.color = "#000000";
        }
      }
    }
	
    function fncHide(pos){
		var obj = document.getElementById("menu"+pos);
		obj.style.display = 'none';
	}
</script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body bgcolor="#ffffff">
<div class="container-fluid" style=padding-top:20px>
		<table cellpadding='0' cellspacing='1' border='0' width='100%' >
			<tr>
				<td width='150'><a href='./intro/main.jsp' target=main><img
						src="./assets/mainLogo.png" width='140' height='30' border='0' ></a></td>
				<td>
					<table cellpadding='0' cellspacing='1' border='0' width='800'
						height='60'>
						<tr height="30">
							<td width="100" onmouseover="fncShow(0);" id="m0"><b>
									객실 정보</b></td>
							<td width="100" onmouseover="fncShow(1);" id="m1"><b>
									리조트 위치 안내</b></td>
							<td width="100" onmouseover="fncShow(2);" id="m2"><b>
									주변여행지</b></td>
							<td width="100" onmouseover="fncShow(3);" id="m3"><b>
									예약하기</b></td>
							<td width="100" onmouseover="fncShow(4);" id="m4"><b>
									리조트소식</b></td>
							<td width="100"></td>
						</tr>
						<tr height="30">
							<td colspan='6'>
								<table id='menu0' style='display: none;' cellpadding='0'
									cellspacing='0' border='0' width='800' height='30'>
									<tr>
										<td width='43'></td>
										<td width='1000' style='text-align: left;'><!-- <a
											href='./intro/main.jsp' target=main> 
										<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'> 리조트</span>
										</a> --> <a href='./intro/room1.jsp' target=main> 
										<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'> 스위트
													</span>
										</a> <a href='./intro/room2.jsp' target=main> 
										<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 이그제큐티브
													</span>
										</a> <a href='./intro/room3.jsp' target=main> 
										<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 스탠다드
													</span>
										</a></td>
									</tr>
								</table>

								<table id='menu1' style='display: none;' cellpadding='0'
									cellspacing='0' border='0' width='800' height='30'>
									<tr>
										<td width='105'></td>
										<td width='500' style='text-align: left;'><a
											href='./transportation/location.html' target=main> 
											<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>리조트 위치</span>
										</a> <a href='./transportation/byPTrans.html' target=main> 
									<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 리조트 찾아오시는 법</span>
										</a> </td>
									</tr>
								</table>


								<table id='menu2' style='display: none;' cellpadding='0'
									cellspacing='0' border='0' width='800' height='30'>
									<tr>
										<td width='232'></td>
										<td width='400' style='text-align: left;'><a
											href='./near/yonggung.jsp' target=main> 
										<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'> 해동 용궁사</span>
										</a> <a href='./near/bs_kj.jsp' target=main> 
										<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 부산 & 경주 투어</span>
										</a> <a href='./near/yacht.jsp' target=main> 
										<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 요트 투어 </span>
										</a></td>
									</tr>
								</table>

								<table id='menu3' style='display: none;' cellpadding='0'
									cellspacing='0' border='0' width='800' height='30'>
									<tr>
										<td width='606'></td>
										<td width='500' style='text-align: left;'><a
											href='./reserve/reserve2.jsp' target=main> 
										<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'> 예약 상황</span>
										<!-- </a> <a href='d_02.html' target=main> <span
												onmouseover=this.style.color=
												'#ff0000' onmouseout=this.style.color='#000000'>|
													예약하기</span>  -->
										</a> <a href='./auth/admin.jsp' target=main> 
										<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 관리자 페이지</span>
										</a> <a href='./auth/adminLO.jsp' target=main> 
										<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 관리자 로그아웃 </span>
										</a></td>
									</tr>
								</table>

								<table id='menu4' style='display: none;' cellpadding='0'
									cellspacing='0' border='0' width='800' height='30'>
									<tr>
										<td width='588'></td>
										<td width='250' style='text-align: left;'>
										<a href='./gongji/allview.jsp?page=1' target=main> 
										<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>리조트 공지사항</span>
										</a> <a href='./review/allview.jsp?page=1' target=main> 
										<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 이용 후기 </span>
										</a></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
</div>
</body>
</html>