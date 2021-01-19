package cn.kgc.service;

import cn.kgc.entity.Account;

public interface AccountService {
    /**
     * 登录
     */
    Account login(String accountNumber, String accountPassword);
    /**
     * 查询账户
     * @return
     */
    Account findAccount(String accountNumber);
    /**
     * 根据账号修改密码
     */
    Boolean modifyPwdByNum(String accountNumber, String accountPwd);
}
