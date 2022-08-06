package com.spot.mate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/member/*")
public class Mypage {

	//myPointMain
	@RequestMapping(value = "/myPointMain", method = RequestMethod.GET)
	public String myPointMain() {
		System.out.println("myPointMain");

		return "mypageJ/myPointMain";
	}

	
	//myPointMain 레이아웃 다시
	@RequestMapping(value = "/myPointMain2", method = RequestMethod.GET)
	public String myPointMain2() {
		
		return "mypageJ/myPointMain2";
	}
	
	//myPointCarge
	@RequestMapping(value = "/myPointCarge", method = RequestMethod.GET)
	public String myPointCarge() {
		
		return "mypageJ/myPointCarge";
	}
	
	//myPointRefundMain
	@RequestMapping(value = "/myPointRefundMain", method = RequestMethod.GET)
	public String myPointRefundMain() {
		
		return "mypageJ/myPointRefundMain";
	}
	
	//myPointRefundForm
	@RequestMapping(value = "/myPointRefundForm", method = RequestMethod.GET)
	public String myPointRefundForm() {
		
		return "mypageJ/myPointRefundForm";
	}
	
	//myCouponMain
	@RequestMapping(value = "/myCouponMain", method = RequestMethod.GET)
	public String myCouponMain() {
		
		return "mypageJ/myCouponMain";
	}
	
	//myCouponBuy
	@RequestMapping(value = "/myCouponBuy", method = RequestMethod.GET)
	public String myCouponBuy() {
		
		return "mypageJ/myCouponBuy";
	}
	
	//myCouponUse
	@RequestMapping(value = "/myCouponUse", method = RequestMethod.GET)
	public String myCouponUse() {
		
		return "mypageJ/myCouponUse";
	}

}
