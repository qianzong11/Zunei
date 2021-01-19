<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/1/13
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加员工</title>
</head>
<body>
<form action="employee/addEmp" method="post">
    <table border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td>姓名:</td>
            <td><input type="text" name="empname"/></td>
        </tr>
        <tr>
            <td>年龄:</td>
            <td><input type="text" name="age"/></td>
        </tr>
        <tr>
            <td>性别:</td>
            <td>
                <select name="sex">
                    <option value="-1">请选择</option>
                    <option value="0">男</option>
                    <option value="1">女</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>所属部门:</td>
            <td>
               <select name="depid">
                   <option value="-1">请选择</option>
                   <option value="1">人事部</option>
                   <option value="2">行政部</option>
                   <option value="3">产品开发部</option>
                   <option value="4">后勤部</option>
               </select>
            </td>
        </tr>
        <tr>
            <td>入职日期:</td>
            <td><input type="text" name="addtime"/></td>
        </tr>
        <tr>
            <td>税前月薪:</td>
            <td><input type="text" name="wage"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="添加"/>
                <input type="reset" value="取消"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
