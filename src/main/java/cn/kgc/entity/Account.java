package cn.kgc.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 账户实体类
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Account {
    private Integer id;
    private String accountNumber;
    private String accountPwd;
    private Double accountMoney;
    private Integer accountStatus;
    private String creationTime;
}
