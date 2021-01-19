package cn.kgc.controller;

import cn.kgc.entity.Employee;
import cn.kgc.service.EmployeeService;
import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (Employee)表控制层
 *
 * @author makejava
 * @since 2021-01-13 09:55:03
 */
@Controller
@RequestMapping("/employee")
public class EmployeeController {
    /**
     * 服务对象
     */
    @Resource
    private EmployeeService employeeService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Employee selectOne(Integer id) {
        return this.employeeService.queryById(id);
    }

    /**
     * 查询所有员工
     */
    @RequestMapping("queryAllEmp")
    public String queryAllEmp(Model model){
        List<Employee> employeeList=employeeService.findAllEmp();
        model.addAttribute("empList",employeeList);
        return "emplist";
    }
    /**
     * 删除员工
     */
    @RequestMapping("delEmp")
    @ResponseBody
    public String delEmp(Integer empId){
        boolean b=employeeService.deleteById(empId);
        System.out.println(b);
//        Map<String,Boolean> resultMap=new HashMap<>();
//        resultMap.put("result",b);
        if (b){
            return "true";
        }else {
            return "false";
        }
    }


    @RequestMapping("addEmp")
    public String addEmp(Employee employee){
        Employee emp=employeeService.insert(employee);
        if (emp!=null){
            return "redirect:queryAllEmp";
        }else{
            return "forward:addemp.jsp";
        }

    }

    @RequestMapping("toup")
    public String toup(Model model,@RequestParam("id") Integer id){
        Employee employee = employeeService.queryById(id);
        model.addAttribute("employee",employee);
        return "upemp";
    }
    @RequestMapping("doup")
    public String doup(Employee employee, HttpServletResponse response) throws IOException {
        Employee update = employeeService.update(employee);
        if(update!=null){
            response.getWriter().print("<script>alert('修改成功')</script>");
        }else {
            response.getWriter().print("<script>alert('修改失败')</script>");
        }
        return "redirect:/employee/queryAllEmp";
    }
}