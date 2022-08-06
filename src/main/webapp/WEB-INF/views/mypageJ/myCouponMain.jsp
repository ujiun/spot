<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/assets/js/swiper.min.js"></script>
<script type="text/javascript" src="/assets/js/style.js"></script>

<link href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" type="text/css">


<title>myCouponMain</title>

</head>

<body>

	<div id="wrap">

		<!-- //header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

		<!-- //topNav -->
		<nav class="myPage_topNav">
			<div class="box1">
				<h2>yujieun님</h2>
			</div>
			<div class="box2">2</div>
			<div class="box3">3</div>
		</nav>

		<!-- //myPage main contents -->
		<main class="contents">

			<!-- //sideNav  -->
			<nav class="myPage_sideNav">
				<h2>마이페이지</h2>
				<!-- h2? -->
				<ul class="myPage_list">
					<li><a href="javascript:void(0);">드라이버 신청/정보</a></li>
					<li><a href="javascript:void(0);">이용 내역</a></li>
					<li><a href="javascript:void(0);">예약 내역</a></li>
					<li><a href="javascript:void(0);">문의 내역</a></li>
					<li><a href="./myPointMain2">포인트</a></li>
					<li><a href="./myCouponMain">쿠폰</a></li>
					<li><a href="./myPointRefundMain">환불 내역</a></li>
					<li class="myPage_list_last"><a href="javascript:void(0);">개인정보 수정</a></li>
				</ul>
			</nav>

			<!-- //section -->
			<section class="myPage_selection">
				<!-- //section-header -->
				<header class="myPage_header">
					<h3>쿠폰</h3>
					<p>나의 쿠폰 사용과 구매 내역입니다.</p>
					<ul>
						<li>드라이버 포인트 내역은 주행 완료 후 지급된 포인트입니다.</li>
						<li>유저 포인트 내역은 다른 드라이버의 차량을 이용 후 사용한 포인트입니다.</li>
						<li>그 외에도 이용수칙을 위반한 경우 차감 또는 추가 지급 될 수 있습니다.</li>
					</ul>
				</header>

				<!-- //section-article -->
				<article class="myPage_article">

					<div class="inputBox">
						<form>
							<input type="date" value="2022-08-02"> <span> - </span> <input type="date" value="2022-08-02">

							<!-- <label for="lecture">유형</label> -->
							<select id="option1" class="form-select" aria-label="Default select example">
								<option value=selected>유형</option>
								<option value="1">카풀정기권</option>
								<option value="2">히치하이크</option>
								<option value="3">메이트</option>
								<option value="4">카풀1회성</option>
								<option value="5"><span style="color: red">패널티</span></option>
							</select>

							<!-- <label for="lecture">참여주체</label> -->
							<select id="option1" class="form-select" aria-label="Default select example">
								<option value=selected>참여주체</option>
								<option value="1">드라이버</option>
								<option value="2">탑승자</option>
							</select>
							<div class="btns">
								<button type="button" class="myPage_btnB">조회하기</button>
								<a href="./myCouponBuy"><button type="button" class="myPage_btnY">쿠폰 구매하기</button></a>
							</div>
						</form>
					</div>

				</article>

				<!-- //section-article2 -->
				<article class="myPage_article2">
					<h4>쿠폰 사용 내역</h4>
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th>구매날짜</th>
								<th>사용내역</th>
								<th>구폰금액</th>
								<th>사용여부</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>2022.07.26</td>
								<td>S-oil 에쓰오일 서울대입구역점</td>
								<td>+3,000P</td>
								<td>미사용</td>
							</tr>
							<tr>
								<td>2</td>
								<td>2022.07.26</td>
								<td>S-oil 에쓰오일 서울대입구역점</td>
								<td>+3,000P</td>
								<td>미사용</td>
							</tr>
							<tr>
								<td>3</td>
								<td>2022.07.26</td>
								<td>S-oil 에쓰오일 서울대입구역점</td>
								<td>+3,000P</td>
								<td>미사용</td>
							</tr>
							<tr>
								<td>4</td>
								<td>2022.07.26</td>
								<td>S-oil 에쓰오일 서울대입구역점</td>
								<td>+3,000P</td>
								<td>미사용</td>
							</tr>
							<tr>
								<td>5</td>
								<td>2022.07.26</td>
								<td>S-oil 에쓰오일 서울대입구역점</td>
								<td>+3,000P</td>
								<td>미사용</td>
							</tr>
							<tr>
								<td>6</td>
								<td>2022.07.26</td>
								<td>S-oil 에쓰오일 서울대입구역점</td>
								<td>+3,000P</td>
								<td>미사용</td>
							</tr>
							<tr>
								<td>7</td>
								<td>2022.07.26</td>
								<td>S-oil 에쓰오일 서울대입구역점</td>
								<td>+3,000P</td>
								<td>미사용</td>
							</tr>
							<tr>
								<td>8</td>
								<td>2022.07.26</td>
								<td>S-oil 에쓰오일 서울대입구역점</td>
								<td>+3,000P</td>
								<td>미사용</td>
							</tr>
							<tr>
								<td>9</td>
								<td>2022.07.26</td>
								<td>S-oil 에쓰오일 서울대입구역점</td>
								<td>+3,000P</td>
								<td>미사용</td>
							</tr>
							<tr>
								<td>10</td>
								<td>2022.07.26</td>
								<td>S-oil 에쓰오일 서울대입구역점</td>
								<td>+3,000P</td>
								<td>미사용</td>
							</tr>
						</tbody>
					</table>

				</article>
			</section>
		</main>


		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>


</html>

