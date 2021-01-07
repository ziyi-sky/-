<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>  
  <base href="<%=basePath%>">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>后台登陆页面</title>
    
	<style type="text/css">
	* {
            box-sizing: border-box;
        }
        body {
        	
            background-size: 100% 100%;
        	background-attachment: fixed;
       		background-repeat: no-repeat;	
            background-image: url(images/admin/1.jpg)
       		
            
         }
        .wrap {
            filter:alpha(opacity=0);width:100px;height:100px
        }
        .container {
            width: 60%;
            margin: 0 auto;
        }
        .container h1 {
            text-align: center;
            color: #FFFFFF;
            font-weight: 500;
        }
        .container input {
            width: 320px;
            display: block;
            height: 36px;
            border: 0;
            outline: 0;
            padding: 6px 10px;
            line-height: 24px;
            margin: 32px auto;
            -webkit-transition: all 0s ease-in 0.1ms;
            -moz-transition: all 0s ease-in 0.1ms;
            transition: all 0s ease-in 0.1ms;
        }
        .container input[type="text"] , .container input[type="password"]  {
            background-color: #FFFFFF;
            font-size: 16px;
            color: #50a3a2;
        }
        .container input[type='submit'] {
            font-size: 16px;
            letter-spacing: 2px;
            color: #666666;
            background-color: #FFFFFF;
        }
        .container input:focus {
            width: 400px;
        }
        /*.container input[type='submit']:hover {
            cursor: pointer;
            width: 400px;
        }*/
        .to_login{
            color: #a7c4c9;
        }
        .text{
            color: #e2dfe4;
        }
        .wrap ul {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -20;
        }
        .wrap ul li {
            list-style-type: none;
            display: block;
            position: absolute;
            bottom: -120px;
            width: 15px;
            height: 15px;
            z-index: -8;
            border-radius: 50%;
            box-shadow: inset -30px -30px 75px rgba(204, 180, 180, 0.2),
            inset 0px 0px 5px rgba(202, 190, 190, 0.5),
            inset -3px -3px 5px rgba(190, 146, 146, 0.5),
            0 0 20px rgba(241, 240, 240, 0.75);
            background-color:rgba(241, 238, 238, 0.15);
            animotion: square 25s infinite;
            -webkit-animation: square 25s infinite;
        }
        .wrap ul li:nth-child(1) {
            left: 0;
            animation-duration: 10s;
            -moz-animation-duration: 10s;
            -o-animation-duration: 10s;
            -webkit-animation-duration: 10s;
        }
        .wrap ul li:nth-child(2) {
            width: 40px;
            height: 40px;
            left: 10%;
            animation-duration: 15s;
            -moz-animation-duration: 15s;
            -o-animation-duration: 15s;
            -webkit-animation-duration: 11s;
        }
        .wrap ul li:nth-child(3) {
            left: 20%;
            width: 25px;
            height: 25px;
            animation-duration: 12s;
            -moz-animation-duration: 12s;
            -o-animation-duration: 12s;
            -webkit-animation-duration: 12s;
        }
        .wrap ul li:nth-child(4) {
            width: 50px;
            height: 50px;
            left: 30%;
            -webkit-animation-delay: 3s;
            -moz-animation-delay: 3s;
            -o-animation-delay: 3s;
            animation-delay: 3s;
            animation-duration: 12s;
            -moz-animation-duration: 12s;
            -o-animation-duration: 12s;
            -webkit-animation-duration: 12s;
        }
        .wrap ul li:nth-child(5) {
            width: 60px;
            height: 60px;
            left: 40%;
            animation-duration: 10s;
            -moz-animation-duration: 10s;
            -o-animation-duration: 10s;
            -webkit-animation-duration: 10s;
        }
        .wrap ul li:nth-child(6) {
            width: 75px;
            height: 75px;
            left: 50%;
            -webkit-animation-delay: 7s;
            -moz-animation-delay: 7s;
            -o-animation-delay: 7s;
            animation-delay: 7s;
        }
        .wrap ul li:nth-child(7) {
            left: 60%;
            width: 30px;
            height: 30px;
            animation-duration: 8s;
            -moz-animation-duration: 8s;
            -o-animation-duration: 8s;
            -webkit-animation-duration: 8s;
        }
        .wrap ul li:nth-child(8) {
            width: 90px;
            height: 90px;
            left: 70%;
            -webkit-animation-delay: 4s;
            -moz-animation-delay: 4s;
            -o-animation-delay: 4s;
            animation-delay: 4s;
        }
        .wrap ul li:nth-child(9) {
            width: 50px;
            height: 50px;
            left: 80%;
            animation-duration: 20s;
            -moz-animation-duration: 20s;
            -o-animation-duration: 20s;
            -webkit-animation-duration: 20s;
        }
        .wrap ul li:nth-child(10) {
            width: 75px;
            height: 75px;
            left: 90%;
            -webkit-animation-delay: 6s;
            -moz-animation-delay: 6s;
            -o-animation-delay: 6s;
            animation-delay: 6s;
            animation-duration: 30s;
            -moz-animation-duration: 30s;
            -o-animation-duration: 30s;
            -webkit-animation-duration: 30s;
        }
        @keyframes square {
            0% {
                -webkit-transform: translateY(0);
                transform: translateY(0)
            }
            100% {
                bottom: 400px;
                -webkit-transform: translateY(-500);
                transform: translateY(-500)
            }
        }
        @-webkit-keyframes square {
            0% {
                -webkit-transform: translateY(0);
                transform: translateY(0)
            }
            100% {
                bottom: 400px;
                -webkit-transform: translateY(-500);
                transform: translateY(-500)
            }
        }
        .login-form{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  width: 350px;
  padding: 60px 40px;
  background-color: rgba(255,255,255,.8);
  box-shadow: 0 15px 20px rgba(0,0,0,.2);
  border-radius: 20px;
}
.login-form h2{
  margin: 0 0 40px;
  padding: 0;
  text-align: center;
}
.login-form .form-input{
  position: relative;
  margin: 20px 0;
}
.login-form .form-input input{
  outline: none;
  height: 32px;
  padding: 10px;
  box-sizing: border-box;
  width: 100%;
  border:1px solid rgba(0,0,0,.5);
  background: transparent;
  font-size: 15px;
  border-radius: 5px;
}
.login-form .form-input input[type='submit']{
  background-color: #e91e63;
  color: #fff;
  border: none;
  height: 40px;
  cursor: pointer;
  vertical-align:middle;
  text-align:center;
}
.login-form .form-input input[type='submit']:hover{
  background-color: #0090ff;
}
.login-form a{
  margin-top: 30px;
  color:#5a6268;
  font-size: 13px;
  font-weight: 700;
  text-decoration-line: none;
}
.login-form .forget {
  color: rgb(170,133,177);
}

.login-form .register {
  color: orangered;
  padding-left:110px;
}
	</style>
<!-- 	<script type="text/javascript">
	//确定按钮
	function gogo(){
		document.forms[0].submit();
	}
	//取消按钮
	function cancel(){
		document.forms[0].action = "";
	} -->
	</script>
  </head>
  <body>
  	<form:form action="admin/login" modelAttribute="auser" method="post">
	<div class="wrap">
            <div class="container">
                    <div class="login-form">
                <h2>Login</h2>
                <div class="form-input">
                	<form:input path="aname" placeholder="用户名"  />	             
                </div>
                <div class="form-input">
                    <form:password path="apwd" placeholder="密码" maxlength="20"/>
                </div>
                <div class="form-input">
                    <input type="submit" name="登录" value="登录">               
                </div>                
            </div>
            </div>
            <ul>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
	 <%-- <table>
		<tr>
			<td colspan="2"><img src="images/admin/login.gif"></td>
		</tr>
		<tr>
			<td>姓名：</td>
			<td>
				<form:input path="aname" cssClass="textSize"/>
			</td>
		</tr>
		<tr>
			<td>密码：</td>
			<td>
				<form:password path="apwd" cssClass="textSize" maxlength="20"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="image" src="images/admin/ok.gif" onclick="gogo()" >
				<input type="image" src="images/admin/cancel.gif" onclick="cancel()" >
			</td>
		</tr>
	</table>  --%>
	</form:form>
	
  </body>
</html>
