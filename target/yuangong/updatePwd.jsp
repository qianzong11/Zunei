<%--
  Created by IntelliJ IDEA.
  User: xuruifeng
  Date: 2021/1/13
  Time: 22:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
    <style>
        table tr{
            height: 50px;
        }
        table tr td:first-child{
            width:100px;
            text-align: right;
        }
        table tr td:last-child{
            width:350px;
            text-align: left;
        }
        span{
            color: red;
            font-size: 10px;
        }
        table{
            display: flex;
            margin-left: 770px;
        }
    </style>
</head>
<body>
<div align="center">
    <h1>修改密码</h1>
    <hr/>
    <form id="fo" method="post" action="account/doUpPwd">

        <table border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td>卡&nbsp;&nbsp;&nbsp;号:</td>
                <td>
                    <input name="accountNumber" value="${account.accountNumber}" class="account_number" readonly="readonly" id="account_number"/>
                </td>
            </tr>
            <tr>
                <td>原密码:</td>
                <td>
                    <input type="text" name="accountPwd" value="" id="account_pwd" onblur="checkAccount_pwd()"/>
                    <span id="account_pwdMess"></span>
                </td>
            </tr>
            <tr>
                <td>新密码:</td>
                <td>
                    <input type="text" name="password" id="password" onblur="checkPassword()"/>
                    <span id="passwordMess"></span>
                </td>
            </tr>
            <tr>
                <td>新密码:</td>
                <td>
                    <input type="text" name="password1" id="password1" onblur="checkPassword1()"/>
                    <span id="passwordMess1"></span>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 170px" colspan="2">
                    <input type="button" onclick="sub()" value="修改"/>
                </td>
            </tr>
        </table>
    </form>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    function sub(){
        if(checkAccount_pwd()&&checkPassword()&&checkPassword1()){
            alert("提交成功");
            $("#fo").submit();
        }else {
            alert("请按照要求填写后提交")
        }
    }
    function checkAccount_pwd(){
        var account_pwd=$("#account_pwd").val();
        var account_pwd1=${account.accountPwd};
        if(account_pwd==""){
            $("#account_pwdMess").html("密码不能为空");
            return false;
        }else{
            if(account_pwd!=account_pwd1){
                $("#account_pwdMess").html("输入的密码错误");
                return false;
            }else{
                $("#account_pwdMess").html("");
                return true;
            }
        }

    }
    function checkPassword() {
        var password=$("#password").val();
        var reg=/^\d{6}$/;
        if(password==""){
            $("#passwordMess").html("新密码不能为空");
            return false;
        }else {
            if(reg.test(password)==false){
                $("#passwordMess").html("密码必须为数字，长度为6位");
                return false;
            }else{
                $("#passwordMess").html("");
                return true;
            }
        }

    }
    function checkPassword1() {
        var password=$("#password").val();
        var password1=$("#password1").val();
        if(password1==""){
            $("#passwordMess1").html("新密码不能为空");
            return false;
        }else {
            if(password!=password1){
                $("#passwordMess1").html("两次输入的密码不相同");
                return false;
            }else {
                $("#passwordMess1").html("");
                return true;
            }
        }
    }
</script>
</body>
</html>
