package cn.kgc.entity;

import java.io.Serializable;

/**
 * (Employee)实体类
 *
 * @author makejava
 * @since 2021-01-13 09:55:02
 */
public class Employee implements Serializable {
    private static final long serialVersionUID = -87239056830026113L;

    private Integer empid;

    private String empname;

    private Integer age;

    private Integer sex;

    private Object addtime;

    private Object wage;

    private Integer depid;

    private Integer state=0;

    private Department department;

    /**
     * 一对一
     */
    public Department getDepartment() {
        return department;
    }
    public void setDepartment(Department department) {
        this.department = department;
    }

    public Integer getEmpid() {
        return empid;
    }

    public void setEmpid(Integer empid) {
        this.empid = empid;
    }

    public String getEmpname() {
        return empname;
    }

    public void setEmpname(String empname) {
        this.empname = empname;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Object getAddtime() {
        return addtime;
    }

    public void setAddtime(Object addtime) {
        this.addtime = addtime;
    }

    public Object getWage() {
        return wage;
    }

    public void setWage(Object wage) {
        this.wage = wage;
    }

    public Integer getDepid() {
        return depid;
    }

    public void setDepid(Integer depid) {
        this.depid = depid;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

}