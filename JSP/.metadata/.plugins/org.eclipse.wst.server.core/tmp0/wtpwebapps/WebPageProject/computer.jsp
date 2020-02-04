<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
		.best #left{
			background-color:yellow;
		}
		.submain #left{
			background-color:blue;
		}
		.best #right{
			background-color:yellow;
		}
		.submain #right{
			background-color:blue;
		}
		div#left{
			width: 550px;
			margin-top: 20px;
			float: left;
		}
		div#right{
			padding:0px;
			margin-top: 20px;
			margin-left:10px;
			float: left;
		}
</style>
</head>
<body>
	<form method="post" action="./shopcart.jsp">
		<section class="best">
		<div id="left">
			<img src="./media/computer.jpg" width="100" height="100"/>
			<p>심플하고 슬림한 본체에 
			코어 i5 3470과 지포스 GT630을 장착<br/>
			CPU: 인텔 코어 i5 3470<br/>
			가격: 1,200,000원
			</p>
			<input type="submit" name="computer" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		<div id="right">
			<img src="./media/notebook.png" width="100" height="100"/>
			<p>Full-HD로 선명한 화면, 
			ISP패널로 시야각도 좋다!<br/>
			CPU: 인텔 코어 i7 3630 QM</br>
			가격: 1,200,000원
			</p>
			<input type="submit" name="computer" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		</section>
		<section class="submain">
		<div id="left">
			<img src="./media/computer.jpg" width="100" height="100"/>
			<p>심플하고 슬림한 본체에 
			코어 i5 3470과 지포스 GT630을 장착<br/>
			CPU: 인텔 코어 i5 3470<br/>
			가격: 1,200,000원
			</p>
			<input type="submit" name="computer" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		<div id="right">
			<img src="./media/notebook.png" width="100" height="100"/>
			<p>Full-HD로 선명한 화면, 
			ISP패널로 시야각도 좋다!<br/>
			CPU: 인텔 코어 i7 3630 QM</br>
			가격: 1,200,000원
			</p>
			<input type="submit" name="computer" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		</section>
		<section class="submain">
		<div id="left">
			<img src="./media/computer.jpg" width="100" height="100"/>
			<p>심플하고 슬림한 본체에 
			코어 i5 3470과 지포스 GT630을 장착<br/>
			CPU: 인텔 코어 i5 3470<br/>
			가격: 1,200,000원
			</p>
			<input type="submit" name="computer" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		<div id="right">
			<img src="./media/notebook.png" width="100" height="100"/>
			<p>Full-HD로 선명한 화면, 
			ISP패널로 시야각도 좋다!<br/>
			CPU: 인텔 코어 i7 3630 QM</br>
			가격: 1,200,000원
			</p>
			<input type="submit" name="computer" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		</section>
	</form>
	<script>
		function alertfunc(){
			alert("쇼핑카트에 추가되었습니다!");
		}
	</script>
</body>
</html>