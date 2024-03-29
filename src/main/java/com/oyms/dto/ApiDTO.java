package com.oyms.dto;

import java.util.List;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ApiDTO<T> {
	private Integer code;// 状态码
	private Boolean isSuccess;// 状态
	private String message;// 消息
	private Object result;// 数据对象
	private List<T> data;// 数据
    private String token;
	private List<T> data2;
	
	
	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public Boolean getIsSuccess() {
		return isSuccess;
	}

	public void setIsSuccess(Boolean isSuccess) {
		this.isSuccess = isSuccess;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getResult() {
		return result;
	}

	public void setResult(Object result) {
		this.result = result;
	}

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public List<T> getData2() {
		return data2;
	}

	public void setData2(List<T> data2) {
		this.data2 = data2;
	}

	/**
	 * 无参构造器
	 */
	public ApiDTO() {
		super();
	}

	/**
	 * 只返回状态，状态码
	 * 
	 * @param statu
	 * @param code
	 * @param massege
	 */
	public ApiDTO(Boolean success, Integer code) {
		super();
		this.isSuccess = success;
		this.code = code;
	}

	/**
	 * 只返回状态，数据
	 * 
	 * @param statu
	 * @param code
	 * @param massege
	 */
	public ApiDTO(Boolean success, List<T> data) {
		super();
		this.isSuccess = success;
		this.data = data;
	}
	public ApiDTO(Boolean success, List<T> data,List<T> data2) {
		super();
		this.isSuccess = success;
		this.data = data;
		this.data2 = data2;
	}

	/**
	 * 只返回状态，状态码，消息
	 * 
	 * @param statu
	 * @param code
	 * @param massege
	 */
	public ApiDTO(Boolean success, Integer code, String massege) {
		super();
		this.isSuccess = success;
		this.code = code;
		this.message = massege;
	}

	/**
	 * 只返回状态，状态码，数据对象
	 * 
	 * @param statu
	 * @param code
	 * @param object
	 */
	public ApiDTO(Boolean success, Integer code, Object result) {
		super();
		this.isSuccess = success;
		this.code = code;
		this.result = result;
	}

	/**
	 * 返回全部信息即状态，状态码，消息，数据对象
	 * 
	 * @param statu
	 * @param code
	 * @param massege
	 * @param result
	 */
	public ApiDTO(Boolean success, Integer code, String massege, Object result) {
		super();
		this.isSuccess = success;
		this.code = code;
		this.message = massege;
		this.result = result;
	}
}
