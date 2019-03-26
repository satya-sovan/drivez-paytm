package com.drivezy.mapper;

import org.springframework.stereotype.Component;

import com.drivezy.bo.PaytmBo;
import com.drivezy.dto.PaytmDto;

@Component
public class PaytmMapper {
	
	public PaytmDto paytmBoToPaytmDto(PaytmBo paytmBo) {
		PaytmDto paytmDto = null;
		
		paytmDto = new PaytmDto();
		paytmDto.setMid(paytmBo.getMid());
		paytmDto.setChannelId(paytmBo.getChannelId());
		paytmDto.setIndustryType(paytmBo.getIndustryType());
		paytmDto.setMerchantKey(paytmBo.getMerchantKey());
		paytmDto.setMid(paytmBo.getMid());
		paytmDto.setPaytmUrl(paytmBo.getPaytmUrl());
		paytmDto.setWebsite(paytmBo.getWebsite());
		paytmDto.setCallBackUrl(paytmBo.getCallBackUrl());
		paytmDto.setPaytmChecksum(paytmBo.getPaytmChecksum());
		
		return paytmDto;
	}
}
