package com.drivezy.service;

import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.drivezy.bo.PaytmBo;
import com.drivezy.dto.TransactionDto;
import com.paytm.pg.merchant.CheckSumServiceHelper;

@Service
public class PaytmService {
	@Value("${MID}")
	private String mid;
	@Value("${MERCHANT_KEY}")
	private String merchantKey;
	@Value("${INDUSTRY_TYPE_ID}")
	private String industryTypeId;
	@Value("${CHANNEL_ID}")
	private String channelId;
	@Value("${WEBSITE}")
	private String website;
	@Value("${PAYTM_URL}")
	private String paytmUrl;
	@Value("${CALL_BACK_URL}")
	private String callBackUrl;
	
	public PaytmBo initiatePayment(TransactionDto transactionDto) {
		String paytmChecksum = null;
		PaytmBo paytmBo;
		paytmBo = new PaytmBo();
		paytmBo.setMid(mid);
		paytmBo.setChannelId(channelId);
		paytmBo.setIndustryType(industryTypeId);
		paytmBo.setMerchantKey(merchantKey);
		paytmBo.setPaytmUrl(paytmUrl);
		paytmBo.setWebsite(website);
		paytmBo.setCallBackUrl(callBackUrl);
		
		paytmChecksum = generateChecksum(transactionDto);
		
		paytmBo.setPaytmChecksum(paytmChecksum);
		
		return paytmBo;
	}
	
	public String generateChecksum(TransactionDto transactionDto) {
		TreeMap<String,String> parameters;
		String paytmChecksum = null;
		
		parameters = new TreeMap<String,String>();
		parameters.put("MID",mid);
		parameters.put("ORDER_ID", transactionDto.getOrderId());
		parameters.put("CUST_ID", transactionDto.getCustomerId());
		parameters.put("INDUSTRY_TYPE_ID",industryTypeId);
		parameters.put("CHANNEL_ID",channelId);
		parameters.put("TXN_AMOUNT", String.valueOf(transactionDto.getAmount()));
		parameters.put("WEBSITE",website);
		parameters.put("CALLBACK_URL", callBackUrl);
		
		
		try {
			paytmChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum(merchantKey, parameters);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return paytmChecksum;
	}
}
