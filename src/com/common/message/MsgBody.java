package com.common.message;

public class MsgBody {

	private Integer code;//消息代码，1为成功，其他为失败！
	private String errMsg;//消息体
	
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getErrMsg() {
		return errMsg;
	}
	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}
	
}
