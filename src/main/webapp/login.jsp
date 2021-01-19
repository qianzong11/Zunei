<%--
  Created by IntelliJ IDEA.
  User: 25179
  Date: 2021/1/12
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
    <div align="center">
        <h1>登录</h1>
        <hr/>
        <c:if test="${mess!=null}">
            <p>${mess}</p>
        </c:if>
        <form method="post" action="account/login">
            账号:<input onblur="checkNumber()" name="accountNumber" class="accountNum" id="accountNumber"/><br/><br/>
            密码:<input onblur="checkPwd()" type="password" name="accountPassword" class="accountPwd"/><br/><br/>
            <input type="submit" value="提交"/>
        </form>
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.12.4.js"></script>
        <script type="text/javascript">
            function checkNumber() {
                // alert("1231233")
                let aa=$(".accountNum").val();
                let reg = /^\d{6,12}$/;
                if(aa==null){
                    alert("卡号不能为空");
                }else{
                    if(reg.test(aa)==false){
                        alert("卡号必须为6-12位");
                    }else{

                    }
                }
            }
            function checkPwd() {
                let bb=$(".accountPwd").val();
                if(bb==null){
                    alert("密码不能为空");
                }else{
                    if(bb.length<6 || bb.length>6){
                        alert("密码必须为6位");
                    }else{

                    }
                }
            }
        </script>








<%--    <div align="center">--%>
<%--        <h1>登录</h1>--%>
<%--        <hr/>--%>
<%--        <c:if test="${mess!=null}">--%>
<%--            <p>${mess}</p>--%>
<%--        </c:if>--%>
<%--        <form method="post" action="account/login">--%>
<%--            卡号:<input name="accountNumber" onblur="checkNumber()" class="accountNum" id="accountNumber" /><span class="accountNumMess"></span><br><br>--%>
<%--            密码:<input type="password" onblur="checkPwd()" name="accountPassword" class="accountPwd"/><span class="accountPwdMess"></span><br><br>--%>
<%--            <input type="submit" value="提交" />--%>
<%--        </form>--%>
<%--    </div>--%>
<%--    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.12.4.js"></script>--%>
<%--    <script type="text/javascript">--%>
<%--        function checkNumber() {--%>
<%--            // alert("1231233")--%>
<%--            let aa=$(".accountNum").val();--%>
<%--            let reg = /^\d{16}$/;--%>
<%--            if(aa==null){--%>
<%--                alert("卡号不能为空");--%>
<%--            }else{--%>
<%--                if(reg.test(aa)==false){--%>
<%--                    alert("卡号必须为16位");--%>
<%--                }else{--%>

<%--                }--%>
<%--            }--%>
<%--        }--%>
<%--        function checkPwd() {--%>
<%--            let bb=$(".accountPwd").val();--%>
<%--            if(bb==null){--%>
<%--                alert("密码不能为空");--%>
<%--            }else{--%>
<%--                if(bb.length<6 || bb.length>6){--%>
<%--                    alert("密码必须为6位");--%>
<%--                }else{--%>

<%--                }--%>
<%--            }--%>
<%--        }--%>
<%--    </script>--%>
</body>
</html>
