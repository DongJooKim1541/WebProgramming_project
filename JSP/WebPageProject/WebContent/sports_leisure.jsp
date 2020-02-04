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
			<img src="./media/sports_product1.jpg" width="100" height="100"/>
			<p>[국내재고보유] 피나렐로 도그마 F10 168 설퍼 옐로
			PINARELLO DOG MA F10 168 Sulfur Yellow 2017<br/>
			가격: 6,200,000원
			</p>
			<input type="submit" name="s_l" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		<br/>
			<div id="product2">
			<img src="./media/sports_product2.jpg" width="100" height="100"/>
			<p>[해외] 콜나고 V2-r 블랙레드
			COLNAGO V2-r TNRD</br>
			가격: 6,200,000원
			</p>
			<input type="submit" name="s_l" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		<script>
			function alertfunc(){
				alert("쇼핑카트에 추가되었습니다!");
			}
		</script>
	</form>
</body>
</html>