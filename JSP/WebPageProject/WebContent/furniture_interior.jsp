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
			<img src="./media/furniture1.PNG" width="100" height="100"/>
			<p>대형전신거울06 실버미용실 인테리어쇼핑물 의류매장 <br/>
			가격: 200,000원
			</p>
			<input type="submit" name="f_i" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		<br/>
			<div id="product2">
			<img src="./media/furniture2.PNG" width="100" height="100"/>
			<p>최고급정품 10자 시중판매 BEST 공장직영 최저가 E1E0</br>
			가격: 200,000원
			</p>
			<input type="submit" name="f_i" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		<script>
			function alertfunc(){
				alert("쇼핑카트에 추가되었습니다!");
			}
		</script>
	</form>
</body>
</html>