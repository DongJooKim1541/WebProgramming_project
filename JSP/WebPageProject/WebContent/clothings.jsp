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
			<img src="./media/clothes1.jpg" width="100" height="100"/>
			<p>에드워드MTM (기모, 프린팅) #남녀공용#레터링<br/>
			가격: 16,000원
			</p>
			<input type="submit" name="clothes" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		<br/>
			<div id="product2">
			<img src="./media/clothes2.jpg" width="100" height="100"/>
			<p>이키자수반티 #루즈핏#여름까지</br>
			가격: 16,000원
			</p>
			<input type="submit" name="clothes" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		<script>
			function alertfunc(){
				alert("쇼핑카트에 추가되었습니다!");
			}
		</script>
	</form>
</body>
</html>