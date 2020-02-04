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
			<img src="./media/movie1.jpg" width="100" height="100"/>
			<p>Coco(코코)</p>
			<p>&nbsp;평점 <meter value="0.919"></meter></p>
			<p>영원히 기억하고 싶은 황홀한 모험이 시작된다! 뮤지션을 꿈꾸는 소년 미구엘은 전설적인 가수 에르네스토의 기타에 손을 댔다 ‘죽은 자들의 세상’에 들어가게 된다.
			그리고 그곳에서 만난 의문의 사나이 헥터와 함께 상상조차 못했던 모험을 시작하게 되는데…
			과연 ‘죽은 자들의 세상’에 숨겨진 비밀은? 그리고 미구엘은 무사히 현실로 돌아올 수 있을까?
			<br/>
			가격: 9,000원
			</p>
			<input type="submit" name="movie" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		<br/>
			<div id="product2">
			<img src="./media/movie2.jpg" width="100" height="100"/>
			<p>신과함께 - 죄와 벌</p>
			<p>&nbsp;평점 <meter value="0.875"></meter></p>
			<p>저승 법에 의하면, 모든 인간은 사후 49일 동안 7번의 재판을 거쳐야만 한다.
			살인, 나태, 거짓, 불의, 배신, 폭력, 천륜
			7개의 지옥에서 7번의 재판을 무사히 통과한 망자만이 환생하여 새로운 삶을 시작할 수 있다. 
			“김자홍 씨께선, 오늘 예정 대로 무사히 사망하셨습니다”
			화재 사고 현장에서 여자아이를 구하고 죽음을 맞이한 소방관 자홍, 그의 앞에 저승차사 해원맥과 덕춘이 나타난다.
			자신의 죽음이 아직 믿기지도 않는데 덕춘은 정의로운 망자이자 귀인이라며 그를 치켜세운다.
			저승으로 가는 입구, 초군문에서 그를 기다리는 또 한 명의 차사 강림, 그는 차사들의 리더이자 앞으로 자홍이 겪어야 할 7개의 재판에서 변호를 맡아줄 변호사이기도 하다.
			염라대왕에게 천년 동안 49명의 망자를 환생시키면 자신들 역시 인간으로 환생시켜 주겠다는 약속을 받은 삼차사들, 그들은 자신들이 변호하고 호위해야 하는 48번째 망자이자 19년 만에 나타난 의로운 귀인 자홍의 환생을 확신하지만, 각 지옥에서 자홍의 과거가 하나 둘씩 드러나면서 예상치 못한 고난과 맞닥뜨리는데…
			누구나 가지만 아무도 본 적 없는 곳, 새로운 세계의 문이 열린다!</br>
			가격: 9,000원
			</p>
			<input type="submit" name="movie" value="쇼핑카트에 추가하기" onclick="alertfunc()"/>
		</div>
		<script>
			function alertfunc(){
				alert("쇼핑카트에 추가되었습니다!");
			}
		</script>
	</form>
</body>
</html>