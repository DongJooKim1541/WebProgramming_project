<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="./shopcart.jsp">
		<div id="product1">
			<img src="./media/food1.PNG" width="100" height="100"/>
			<p>LA갈비(3인분/그 유명한 스피드가정식,살살 녹는 choice급 미국산 맛보세요/홈파티,손님초대음식,생일상,생신음식,백일상,백일음식,집들이상차림,반조리식품,반조리요리,집들이요리)<br/>
			가격: 15,000원
			</p>
			<input type="submit" name="food" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		<br/>
			<div id="product2">
			<img src="./media/food2.PNG" width="100" height="100"/>
			<p>두부면 저칼로리 음식</br>
			가격: 15,000원
			</p>
			<input type="submit" name="food" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		<script>
			function alertfunc(){
				alert("쇼핑카트에 추가되었습니다!");
			}
		</script>
	</form>
</body>
</html>