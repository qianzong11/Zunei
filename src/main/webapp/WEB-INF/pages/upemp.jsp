<%--
  Created by IntelliJ IDEA.
  User: EDZ
  Date: 2021/1/12
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/employee/doup" method="post">
    <input value="${employee.empid}" name="empid" style="display: none">
    <table border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td>姓名:</td>
            <td><input type="text" name="empname" value="${employee.empname}" /></td>
        </tr>
        <tr>
            <td>年龄:</td>
            <td><input type="number" name="age" value="${employee.age}" /></td>
        </tr>
        <tr>
            <td>性别:</td>
            <c:if test="${employee.sex==0}">
                <td>男</td>
            </c:if>
            <c:if test="${employee.sex==1}">
                <td>女</td>
            </c:if>
        </tr>
        <tr>
            <td>所属部门:</td>
            <c:if test="${employee.depid==1}">
                <td>人事部</td>
            </c:if>
            <c:if test="${employee.depid==2}">
                <td>行政部</td>
            </c:if>
            <c:if test="${employee.depid==3}">
                <td>产品开发部</td>
            </c:if>
            <c:if test="${employee.depid==4}">
                <td>后勤部</td>
            </c:if>
        </tr>
        <tr>
            <td>入职日期:</td>
            <td><input type="date" name="addtime" value="${employee.addtime}"/></td>
        </tr>
        <tr>
            <td>税前月薪:</td>
            <td><input type="number" name="wage" value="${employee.wage}"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="修改" />
                <input type="reset" value="取消" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
