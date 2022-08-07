package com.spot.mate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/member/*")

public class MypageJ {

	///////////////////////////지은//////////////////////////////////

	// myPointMain
	@RequestMapping(value = "/myPointMain", method = RequestMethod.GET)
	public String myPointMain2() {

		return "mypageJ/myPointMain";
	}

	// myPointCarge
	@RequestMapping(value = "/myPointCarge", method = RequestMethod.GET)
	public String myPointCarge() {

		return "mypageJ/myPointCarge";
	}

	// myPointRefundMain
	@RequestMapping(value = "/myPointRefundMain", method = RequestMethod.GET)
	public String myPointRefundMain() {

		return "mypageJ/myPointRefundMain";
	}

	// myPointRefundForm
	@RequestMapping(value = "/myPointRefundForm", method = RequestMethod.GET)
	public String myPointRefundForm() {

		return "mypageJ/myPointRefundForm";
	}

	// myCouponMain
	@RequestMapping(value = "/myCouponMain", method = RequestMethod.GET)
	public String myCouponMain() {

		return "mypageJ/myCouponMain";
	}

	// myCouponBuy
	@RequestMapping(value = "/myCouponBuy", method = RequestMethod.GET)
	public String myCouponBuy() {

		return "mypageJ/myCouponBuy";
	}

	// myCouponUse
	@RequestMapping(value = "/myCouponUse", method = RequestMethod.GET)
	public String myCouponUse() {

		return "mypageJ/myCouponUse";
	}

	// myInfoChk
	@RequestMapping(value = "/myInfoChk", method = RequestMethod.GET)
	public String myInfoChk() {

		return "mypageJ/myInfoChk";
	}

	/////////////////////////// 려경//////////////////////////////////

	@RequestMapping(value = "/myDriverMain", method = RequestMethod.GET)
	public String myDriverMain() {
		System.out.println("드라이버메인");

		return "mypageJ/myDriverMain";

	}

	@RequestMapping(value = "/myDriverForm", method = RequestMethod.GET)
	public String myDriverForm() {
		System.out.println("드라이버폼");

		return "mypageJ/myDriverForm";
	}

	@RequestMapping(value = "/myDriverMain2", method = RequestMethod.GET)
	public String myDriverMain2() {
		System.out.println("드라이버메인2");

		return "mypageJ/myDriverMain2";

	}

	// 문의
	@RequestMapping(value = "/myQnaMain", method = RequestMethod.GET)
	public String myQnaMain() {
		System.out.println("Qna메인");

		return "mypageJ/myQnaMain";

	}

	@RequestMapping(value = "/myQnaWriteForm", method = RequestMethod.GET)
	public String myQnaWF() {
		System.out.println("Qna작성폼");

		return "mypageJ/myQnaWriteForm";

	}

	// 예약
	@RequestMapping(value = "/myReservationDriverMain", method = RequestMethod.GET)
	public String myReservationMain() {
		System.out.println("예약드라이버");

		return "mypageJ/myReservationDriverMain";

	}

	@RequestMapping(value = "/myReservationUserMain", method = RequestMethod.GET)
	public String myReservationUserMain() {
		System.out.println("예약유저");

		return "mypageJ/myReservationUserMain";
	}

	@RequestMapping(value = "/myUsageDriverMain", method = RequestMethod.GET)
	public String myUDMain() {
		System.out.println("드라이버이용내역");

		return "mypageJ/myUsageDriverMain";

	}

	@RequestMapping(value = "/myUsageUserMain", method = RequestMethod.GET)
	public String myUUMain() {
		System.out.println("유저이용내역");

		return "mypageJ/myUsageUserMain";

	}

}
