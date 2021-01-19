package cn.kgc.entity;

import java.io.Serializable;

/**
 * (Department)实体类
 *
 * @author makejava
 * @since 2021-01-13 09:55:00
 */
public class Department implements Serializable {
    private static final long serialVersionUID = 613406894324403288L;

    private Integer depid;

    private String depname;


    public Integer getDepid() {
        return depid;
    }

    public void setDepid(Integer depid) {
        this.depid = depid;
    }

    public String getDepname() {
        return depname;
    }

    public void setDepname(String depname) {
        this.depname = depname;
    }

}