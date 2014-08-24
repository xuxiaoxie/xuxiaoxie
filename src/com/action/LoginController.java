package com.action;

import org.nutz.dao.impl.NutDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.message.MsgBody;
import com.entity.Account;

@Controller
public class LoginController extends BaseController {
	
	@Autowired
	private NutDao dao;
	
	@ResponseBody
	@RequestMapping("/login")
	public  MsgBody  login(){
	  if("admin".equals("admin")){
		  msgBody.setCode(1);
	  }else{
		  msgBody.setCode(0);
		  msgBody.setErrMsg("密碼錯誤！");
	  }
	  return msgBody;
	}

	@RequestMapping("/home")
	public String home(){
		
		Account account =new Account();
		account.setAppId("asasas");
		account.setAppSecret("secrate");
		dao.insert(account);
		
		return "home";
	}
}
