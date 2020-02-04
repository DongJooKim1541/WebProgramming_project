<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Shopcart</title>
<style>
	body{
		height: 100%;
		background-color: #F3F1E9;
	}
	table{
		width: 100%;
		border-collapse: collapse;
		text-align: center;
	}
	table caption{
		color: red;
	}
</style>
</head>
<body onload="countCom(); countClothes(); countAlbum(); countMovie(); countS_l(); countF_i(); countFood();">
	<% 
	// 한글 깨짐을 방지하기 위한 인코딩 처리
    request.setCharacterEncoding("euc-kr");
	// getParameter()를 이용해 넘겨진 파라미터 값을 얻어올 수 있다.
    // 파라미터 값을 얻을때 name= 에 지정해둔 값과 동일한 값을 인자로 지정해야 된다.
    String com = request.getParameter("computer");
    String clothes = request.getParameter("clothes");
    String album = request.getParameter("album");
    String movie = request.getParameter("movie");
    String s_l = request.getParameter("s_l");
    String f_i = request.getParameter("f_i");
    String food = request.getParameter("food");
	%>
	<table border="1">
		<caption>Shopping Cart</caption>
		<tr>
		<th>품목</th>
		<th>수량</th>
		<th>합계</th>
		</tr>
		<tr>
		<td>컴퓨터</td>
		<td><input type="number" id="com1" value=0 onclick="func1()"></td>
		<td><input type="text" size="6" id="com2" value="0"></td>
		</tr>
		<tr>
		<td>의류</td>
		<td><input type="number" id="clothes1" min=0 step=1 value=0 onclick="func2()"></td>
		<td><input type="text" size="6" id="clothes2" value="0"></td>
		</tr>
		<tr>
		<td>음악</td>
		<td><input type="number" id="music1" min=0 step=1 value=0 onclick="func3()"></td>
		<td><input type="text" size="6" id="music2" value="0"></td>
		</tr>
		<td>앨범</td>
		<td><input type="number" id="album1" min=0 step=1 value=0 onclick="func4()"></td>
		<td><input type="text" size="6" id="album2" value="0"></td>
		</tr>
		<tr>
		<td>영화</td>
		<td><input type="number" id="movie1" min=0 step=1 value=0 onclick="func5()"></td>
		<td><input type="text" size="6" id="movie2" value="0"></td>
		</tr>
		<tr>
		<td>스포츠/레저</td>
		<td><input type="number" id="s_l1" min=0 step=1 value=0 onclick="func6()"></td>
		<td><input type="text" size="6" id="s_l2" value="0"></td>
		</tr>
		<tr>
		<td>가구/인테리어</td>
		<td><input type="number" id="f_i1" min=0 step=1 value=0 onclick="func7()"></td>
		<td><input type="text" size="6" id="f_i2" value="0"></td>
		</tr>
		<tr>
		<td>식품</td>
		<td><input type="number" id="food1" min=0 step=1 value=0 onclick="func8()"></td>
		<td><input type="text" size="6" id="food2" value="0"></td>
		</tr>
	</table>
	<input type="button" value="계산" onclick="calculate()"/>
	<input type="submit" value="구매" onclick="purchase()"/>
	<input type="reset" value="초기화" onclick="reset()"/>
	<footer>
	<br/>
	<a href="index.jsp">Back to Home</a>
	<br/>
	Copyright (c) 2018 Web Shop
	</footer>
	<script>
		function countCom(){
			var comCount;
			var param='<%=com%>';
			if(param=="null"){
				comCount=0;
			}
			else{
				comCount=1;
			}
			document.getElementById("com1").value=comCount;
			document.getElementById("com2").value=comCount*1200000;
		}
		function countClothes(){
			var clothesCount;
			var param='<%=clothes%>';
			if(param=="null"){
				clothesCount=0;
			}
			else{
				clothesCount=1;
			}
			document.getElementById("clothes1").value=clothesCount;
			document.getElementById("clothes2").value=clothesCount*16000;
		}
		function countAlbum(){
			var albumCount;
			var param='<%=album%>';
			if(param=="null"){
				albumCount=0;
			}
			else{
				albumCount=1;
			}
			document.getElementById("album1").value=albumCount;
			document.getElementById("album2").value=albumCount*18900;
		}
		function countMovie(){
			var movieCount;
			var param='<%=movie%>';
			if(param=="null"){
				movieCount=0;
			}
			else{
				movieCount=1;
			}
			document.getElementById("movie1").value=movieCount;
			document.getElementById("movie2").value=movieCount*9000;
		}
		function countS_l(){
			var s_lCount;
			var param='<%=s_l%>';
			if(param=="null"){
				s_lCount=0;
			}
			else{
				s_lCount=1;
			}
			document.getElementById("s_l1").value=s_lCount;
			document.getElementById("s_l2").value=s_lCount*6200000;
		}
		function countF_i(){
			var f_iCount;
			var param='<%=f_i%>';
			if(param=="null"){
				f_iCount=0;
			}
			else{
				f_iCount=1;
			}
			document.getElementById("f_i1").value=f_iCount;
			document.getElementById("f_i2").value=f_iCount*200000;
		}
		function countFood(){
			var foodCount;
			var param='<%=food%>';
			if(param=="null"){
				foodCount=0;
			}
			else{
				foodCount=1;
			}
			document.getElementById("food1").value=foodCount;
			document.getElementById("food2").value=foodCount*15000;
		}
		var count1;
		function func1(){
			if(document.getElementById("com1").value>=0){
				count1=document.getElementById("com1").value;
				document.getElementById("com2").value=count1*1200000;
			}
		}
		var count2;
		function func2(){
			if(document.getElementById("clothes1").value>=0){
				count2=document.getElementById("clothes1").value;
				document.getElementById("clothes2").value=count2*16000;
			}
		}
		var count3;
		function func3(){
			if(document.getElementById("music1").value>=0){
				count3=document.getElementById("music1").value;
				document.getElementById("music2").value=count3*1000;
			}
		}
		var count4;
		function func4(){
			if(document.getElementById("album1").value>=0){
				count4=document.getElementById("album1").value;
				document.getElementById("album2").value=count4*18900;
			}
		}
		var count5;
		function func5(){
			if(document.getElementById("movie1").value>=0){
				count5=document.getElementById("movie1").value;
				document.getElementById("movie2").value=count5*9000;
			}
		}
		var count6;
		function func6(){
			if(document.getElementById("s_l1").value>=0){
				count6=document.getElementById("s_l1").value;
				document.getElementById("s_l2").value=count6*6200000;
			}
		}
		var count7;
		function func7(){
			if(document.getElementById("f_i1").value>=0){
				count7=document.getElementById("f_i1").value;
				document.getElementById("f_i2").value=count7*200000;
			}
		}
		var count8;
		function func8(){
			if(document.getElementById("food1").value>=0){
				count8=document.getElementById("food1").value;
				document.getElementById("food2").value=count8*15000;
			}
		}
		var sum=0;
		function calculate(){
			sum=sum+parseInt(document.getElementById("com2").value)+parseInt(document.getElementById("clothes2").value)+parseInt(document.getElementById("music2").value)+parseInt(document.getElementById("album2").value)+parseInt(document.getElementById("movie2").value)+parseInt(document.getElementById("s_l2").value)+parseInt(document.getElementById("f_i2").value)+parseInt(document.getElementById("food2").value);
			alert("총 금액"+sum+"원");
		}
		function purchase(){
			if(count1>0 || count2>0 || count3>0 || count4>0 || count5>0 || count6>0 || count7>0 || count8>0){
				alert("구매 완료하였습니다.");
			}
			else{
				alert("구매하지 못하였습니다.");
			}
		}
		function reset(){
			document.getElementById("com1").value = "0";
			document.getElementById("com2").value = "0";
			document.getElementById("clothes1").value = "0";
			document.getElementById("clothes2").value = "0";
			document.getElementById("music1").value = "0";
			document.getElementById("music2").value = "0";
			document.getElementById("album1").value = "0";
			document.getElementById("album2").value = "0";
			document.getElementById("movie1").value = "0";
			document.getElementById("movie2").value = "0";
			document.getElementById("s_l1").value = "0";
			document.getElementById("s_l2").value = "0";
			document.getElementById("f_i1").value = "0";
			document.getElementById("f_i2").value = "0";
			document.getElementById("food1").value = "0";
			document.getElementById("food2").value = "0";
		}
	</script>
</body>
</html>