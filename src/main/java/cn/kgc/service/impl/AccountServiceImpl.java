package cn.kgc.service.impl;

import cn.kgc.dao.AccountDao;
import cn.kgc.entity.Account;
import cn.kgc.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements AccountService {
    @Autowired
    private AccountDao accountDao;
    @Override
    public Account login(String accountNumber, String accountPassword) {
        Account account=null;
        account=accountDao.getAccountByNum(accountNumber);
        if (account!=null){
            if (!account.getAccountPwd().equals(accountPassword)){
                account=null;
            }
        }
        return account;
    }

    @Override
    public Account findAccount(String accountNumber) {
        return accountDao.getAccountByNum(accountNumber);
    }

    @Override
    public Boolean modifyPwdByNum(String accountNumber, String accountPwd) {
        if(accountDao.updatePwdByNum(accountNumber,accountPwd)>0){
            return true;
        }else {
            return false;
        }
    }
}
