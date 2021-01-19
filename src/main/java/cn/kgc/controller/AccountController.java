package cn.kgc.controller;

import cn.kgc.entity.Account;
import cn.kgc.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("account")
public class AccountController {
    @Autowired
    private AccountService accountService;
    @RequestMapping("login")
    public String login(String accountNumber, String accountPassword, HttpServletRequest request, Model model){
        Account account=accountService.login(accountNumber,accountPassword);
        if (account!=null){
            request.getSession().setAttribute("account",account);
            return "redirect:/index.jsp";
        } else {
            model.addAttribute("mess","账号或密码错误");
            return "redirect:/login.jsp";
        }
    }
    /**
     * 退出
     * @param
     * @return
     */
    @RequestMapping("logout")
    public String logout(HttpServletRequest request){
        request.getSession().removeAttribute("account");
        return "redirect:/login.jsp";
    }
    @RequestMapping("updatePwd")
    public String updatePwd(String accountNumber,HttpServletRequest request){
        Account account=accountService.findAccount(accountNumber);
        System.out.println(account.toString());
        request.getSession().setAttribute("account",account);
        return "redirect:/updatePwd.jsp";
    }

    @RequestMapping("doUpPwd")
    public String doUpPwd(String accountNumber,String password){
        Boolean result=accountService.modifyPwdByNum(accountNumber,password);
        if(result==true){
            return "redirect:/login.jsp";
        }else {
            return "redirect:/updatePwd.jsp";
        }

    }
}
