<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.util.Map"%>
<%@page import="products.Product"%>
<%@page import="recipe.RecipeException"%>
<%@page import="recipe.RecipeManager"%>
<%@page import="java.util.HashSet"%>
<%@page import="recipe.Recipe"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
        <%@ page errorPage="errorPage.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" href="nomnom.png">
<title>Добави рецепта</title>
</head>
<style>
body {
    background-color: lightgrey;
}
form {
    border: 3px solid #f1f1f1;
}
.style1 {
	width: 20%;
}

input[type=text] {
    width: 50%;
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

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

</style>
<body>
<%@ include file="menu.jsp" %>
<%!
private HashSet<Recipe> getRecipes() throws RecipeException{
HashSet<Recipe> allRecipes = new HashSet<>();
allRecipes.addAll(RecipeManager.getInstance().getRecipes());
return allRecipes;
}
%>

<%for(Recipe recipe : getRecipes()) {
%>

<h2><u>Име: </u><%=recipe.getName()%> </br>
<u>Трудност: </u><%=(recipe.getDifficulty() == 1?"лесна":recipe.getDifficulty() == 2?"средна":"трудна")%> </br>
<u>Тип: </u><%=(recipe.getType() == 1?"предястие":recipe.getType() == 2?"основно":"десерт")%> </br>
<u>Продукти: </u>
<%for(Map.Entry<Product, Integer> p : recipe.getProducts().entrySet()) {%>
<ul>
<li><%=p.getKey().getName() %> - <%=p.getValue() %></li>
</ul>
<%} %>
<u>Описание: </u><%=recipe.getDescription() %> </br>
<u>Време за приготвяне: </u><%=recipe.getDuration() %>
</h2>

<%}%>

</body>
</html>