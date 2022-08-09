<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/assets/js/swiper.min.js"></script>
<script type="text/javascript" src="/assets/js/style.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


<link href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" type="text/css">


<title>myPointCarge</title>

</head>

<body>

	<p>테스트</p>

	<div class="card-body bg-white mt-0 shadow">
		<p style="font-weight: bold">카카오페이 현재 사용가능</p>
		<label class="box-radio-input"><input type="text" name="cp_item" value=""><span></span></label> <label class="box-radio-input"><input type="radio" name="cp_item"
			value="200"><span>200원</span></label> <label class="box-radio-input"><input type="radio" name="cp_item" value="15000"><span>15,000원</span></label> <label class="box-radio-input"><input
			type="radio" name="cp_item" value="20000"><span>20,000원</span></label> <label class="box-radio-input"><input type="radio" name="cp_item" value="25000"><span>25,000원</span></label> <label
			class="box-radio-input"><input type="radio" name="cp_item" value="30000"><span>30,000원</span></label> <label class="box-radio-input"><input type="radio" name="cp_item"
			value="35000"><span>35,000원</span></label> <label class="box-radio-input"><input type="radio" name="cp_item" value="40000"><span>40,000원</span></label> <label class="box-radio-input"><input
			type="radio" name="cp_item" value="50000"><span>50,000원</span></label>
		<p style="color: #ac2925; margin-top: 30px">
			카카오페이의 최소 충전금액은 5,000원이며 <br />최대 충전금액은 50,000원 입니다.
		</p>
		<button type="button" class="btn btn-lg btn-block  btn-custom" id="charge_kakao">충 전 하 기</button>
	</div>

</body>

<script>
	$('#charge_kakao').click(function() {
		// getter
		var IMP = window.IMP;
		IMP.init('imp61401216');
		var money = $('input[name="cp_item"]').val();
		console.log(money);
		var buyer = '유지은';
		
		
		IMP.request_pay({
			pg : 'kakao',
			merchant_uid : 'merchant_' + new Date().getTime(),

			name : '포인트충전',
			amount : money,
			buyer_email : 'iamport@siot.do',
			buyer_name : '유지은',
			buyer_tel : '010-1234-5678',
			buyer_addr : '인천광역시 부평구',
			buyer_postcode : '123-456'
		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
				$.ajax({
					type : "GET",
					url : "/member/testJ2", //충전 금액값을 보낼 url 설정
					data : {
						"amount" : money,
						"buyer" : buyer
					},
				});
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
			document.location.href = "/member/myPointMain"; //alert창 확인 후 이동할 url 설정
		});
	});
</script>


</html>

