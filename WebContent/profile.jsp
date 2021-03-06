<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@ page errorPage="errorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" href="nomnom.png">
<title>Моят профил</title>
<style>
body {
    background-color: lightgrey;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 30%;
}

button:hover {
    opacity: 0.8;
}
</style>
</head>
<body>
<%@ include file="menu.jsp" %>

<% if (session.getAttribute("logged") != null && (Boolean)session.getAttribute("logged")) { %>
	<h1> Здравей, <%= session.getAttribute("username") %>! </h1>
	<h3> Как си днес? </h3>
	<h3> Какво искаш да направиш?</h3>
	<a href="index.jsp"><button>Върни ме на началната страница</button></a>
	<a href="Logout"><button type="submit" method="get">Излез от профила</button></a>
	<a href="userrecipes.jsp"><button>Разгледай добавени си рецепти</button></a>
	<a href="AddRecipe.jsp"><button>Добави рецепта</button></a>
	<% } else { %>
	<jsp:forward page="login.jsp"></jsp:forward>
	<%} %>
	
</body>
</html>