package com.drivezy.controller;

import java.util.Iterator;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.drivezy.been.PaytmResponseBeen;
import com.drivezy.bo.PaytmBo;
import com.drivezy.dto.PaytmDto;
import com.drivezy.dto.TransactionDto;
import com.drivezy.mapper.PaytmMapper;
import com.drivezy.service.PaytmService;

@Controller
public class PaytmController {
	@Autowired
	PaytmService paytmService;
	@Autowired
	PaytmMapper paytmMapper;
	
	@RequestMapping("/home.htm")
	public String home(Model model) {
		return "home";
	}
	
	@RequestMapping("/ride-now.htm")
	public String confirmRide(Model model,@RequestParam String image) {
		
		model.addAttribute("imgUrl", image);
		return "ride-now";
	}
	
	@RequestMapping("/pay.htm")
	public String initiatePayment(Model model, @ModelAttribute(name="amount")int amount) {
		TransactionDto transactionDto;
		PaytmDto paytmDto = null;
		PaytmBo paytmBo = null;
		
		Random randomGenerator = new Random();
		int randomInt = randomGenerator.nextInt(1000000);
		
		transactionDto = new TransactionDto();
		transactionDto.setAmount(amount);
		transactionDto.setOrderId("ORDS"+String.valueOf(randomInt));
		transactionDto.setCustomerId("CUS001");
		
		paytmBo = paytmService.initiatePayment(transactionDto);
		
		paytmDto = paytmMapper.paytmBoToPaytmDto(paytmBo);
		paytmDto.setTransactionDto(transactionDto);
		
		model.addAttribute("paytmDto", paytmDto);
		
		return "redirect";
	}
	
	@RequestMapping("/paytm-response.htm")
	public String paymentSuccess(Model model,HttpServletRequest request,@ModelAttribute PaytmResponseBeen paytmResponseBeen) {
		model.addAttribute("paytmResponseBeen",paytmResponseBeen);
		
		if(paytmResponseBeen.getRESPCODE().equals("01")) {
			return "success";
		}
		
		return "failed";
	}
}
