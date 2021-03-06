<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ page errorPage="errorPage.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" href="nomnom.png">
<title>Insert title here</title>
</head>
<style>
body {
    background-color: lightgrey;
}
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password], input[type=email] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 25%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 100px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 8px;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}

</style>
<body>
<%@ include file="menu.jsp" %>

<% if (session.getAttribute("logged") != null && (Boolean)session.getAttribute("logged")) { %>
	<jsp:forward page="profile.jsp"></jsp:forward>
<%} else {%>
	<form class= "form-signin" action="RegisterServlet" method = "POST">
	
	  <div class="container">
	  	<h2 class="form-signin-heading">Регистрация на нов потребител</h2>
	    <label><b>Потребителско име</b></label>
	    <input type="text" placeholder="Въведете потребителско име(минимум 5 символа)" name="username" required>
	    <label><b>Парола</b></label>
	    <input type="password" placeholder="Въведете парола, която съдържа главна буква и число" name="password" required>
	    <label><b>Повторете паролата</b></label>
	    <input type="password" placeholder="Повторете паролата" name="password" required>
	     <label><b>Собствено име</b></label>
	    <input type="text" placeholder="Въведете собствено име" name="firstname" required>
	    <label><b>Фамилия</b></label>
	    <input type="text" placeholder="Въведете фамилия" name="lastname" required> 
	    <label><b>Имейл адрес</b></label>
	    <input type="email" placeholder="Въведете имейл" name="email" required>
	    <button type="submit">Регистрация</button>
	  </div>
	</form>
	<form method="link" action="login.jsp">
		<div class="container" style="background-color:#f1f1f3">
  	 	 <button type="submit" class="cancelbtn">Отказ</button>
 		 </div>
	</form>
	<form method="link" action="index.jsp">
<div class="container"> 
  <button type="submit">Върни ме на началната страница</button>
</div>
</form>
 <% } %>
  </body>
</html>