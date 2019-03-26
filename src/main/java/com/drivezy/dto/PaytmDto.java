package com.drivezy.dto;

public class PaytmDto {
	protected String mid;
	protected String merchantKey;
	protected String industryType;
	protected String channelId;
	protected String website;
	protected String paytmUrl;
	protected String callBackUrl;
	protected String paytmChecksum;
	protected TransactionDto transactionDto;
	
	
	public TransactionDto getTransactionDto() {
		return transactionDto;
	}
	public void setTransactionDto(TransactionDto transactionDto) {
		this.transactionDto = transactionDto;
	}
	public String getCallBackUrl() {
		return callBackUrl;
	}
	public void setCallBackUrl(String callBackUrl) {
		this.callBackUrl = callBackUrl;
	}
	public String getPaytmChecksum() {
		return paytmChecksum;
	}
	public void setPaytmChecksum(String paytmChecksum) {
		this.paytmChecksum = paytmChecksum;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMerchantKey() {
		return merchantKey;
	}
	public void setMerchantKey(String merchantKey) {
		this.merchantKey = merchantKey;
	}
	public String getIndustryType() {
		return industryType;
	}
	public void setIndustryType(String industryType) {
		this.industryType = industryType;
	}
	public String getChannelId() {
		return channelId;
	}
	public void setChannelId(String channelId) {
		this.channelId = channelId;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getPaytmUrl() {
		return paytmUrl;
	}
	public void setPaytmUrl(String paytmUrl) {
		this.paytmUrl = paytmUrl;
	}
	
	
}
