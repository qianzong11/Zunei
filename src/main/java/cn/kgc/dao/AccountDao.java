package cn.kgc.dao;

import cn.kgc.entity.Account;
import org.apache.ibatis.annotations.Param;

public interface AccountDao {
    /**
     * 根据账号查询账户
     */
    Account getAccountByNum(String accountNumber);
    /**
     * 根据账号修改密码
     */
    Integer updatePwdByNum(@Param("accountNumber")String accountNumber, @Param("accountPwd")String accountPwd);
}
