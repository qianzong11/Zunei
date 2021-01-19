<%--
  Created by IntelliJ IDEA.
  User: 25179
  Date: 2021/1/13
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>信息维护</title>
</head>
<body>
    <div align="center">
        <table border="1" cellpadding="1" cellspacing="1" width="700">
            <tr>
                <td>员工编号</td>
                <td>姓名</td>
                <td>年龄</td>
                <td>性别</td>
                <td>入职日期</td>
                <td>税前月薪</td>
                <td>部门</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${empList}" var="emp">
                <tr>
                    <td>${emp.empid}</td>
                    <td>${emp.empname}</td>
                    <td>${emp.age}</td>
                    <c:if test="${emp.sex==0}">
                        <td>男</td>
                    </c:if>
                    <c:if test="${emp.sex==1}">
                        <td>女</td>
                    </c:if>
                    <td>${emp.addtime}</td>
                    <td>${emp.wage}</td>
                    <td>${emp.department.depname}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/employee/toup?id=${emp.empid}">修改</a>
                        <a href="javascript:void(0)" onclick="del(this,${emp.empid})">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.12.4.js"></script>
    <script type="text/javascript">
        function del(dom,empId){
            let res=confirm("确定要删除吗?")
            if(res==true){
                $.post("../employee/delEmp","empId="+empId,function(data){

                    if(data=="true"){
                        alert("删除成功");
                        $(dom).parent().parent().remove();
                    }else{
                        alert("删除失败,请联系管理员");
                    }
                },"text");
            }

        }
    </script>

</body>
</html>
