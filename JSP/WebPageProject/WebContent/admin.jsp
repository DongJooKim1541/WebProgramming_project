<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/mystyle.css"/>
	<style>
		font.fonts{ text-decoration:line-through }
	</style>
</head>
<body>
	<nav>
		<h1>Admin Page</h1>
	</nav>
	<br>
	<fieldset>
		<legend>상품 등록</legend>
		<form name="item" method="post" action="./itemhandling.jsp">
			
			<br/>
			상품 <input type="text" name="item_name" placeholder="상품 이름"><br/><br/>
			상품번호 <input type="text" name="item_num" placeholder="상품 번호"><br/><br/>		
			가격 <input type="number" name="price" placeholder="상품 가격"><br/><br/>
			이미지 <input type="file" name="image" size=40>
			<input type="submit" value="업로드"><br><br>
		</form>
	</fieldset>
	<br><br>
	<fieldset>
		<legend>이번달 매출</legend>
		<br><br><br><br><br><br>
	</fieldset>
	<br><br>
	<fieldset>
		<legend>사용자 정보 열람하기</legend>
		<br><br><br><br><br><br>
	</fieldset>
</body>
</html>