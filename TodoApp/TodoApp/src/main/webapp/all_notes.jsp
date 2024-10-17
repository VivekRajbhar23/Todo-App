<%@page import="java.util.List" %>
<%@page import="com.entities.*" %>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes:Todo App</title>
</head>
<body>
<%@include file="navbar.jsp" %>
<h1>All Notes:</h1>

<div class = "row">

<div class = "col-12">

<%
    Session s=FactoryProvider.getFactory().openSession();
    Query q=s.createQuery("from Note");
    List<Note> list=q.list();
    for(Note notes:list)
    {
    	%>
    	<div class="cardmt-3">
    	 <div class="card-body">
    	    
    	 <h5 class="card-title"><%= notes.getTitle() %></h5>
    	  <p class="card-text">
    	  <%= notes.getContent() %>
    	  </p>
    	  <p><b><%= notes.getAddedDate() %></b></p>
    	  <a href="DeleteServlet?note_id=<%= notes.getId() %>">Delete</a> 
    	  <a href="edit.jsp?note_id=<%= notes.getId()%>">Update</a> 
    	 </div>
    	</div>
    	 	
    	<%
    }
 
    s.close();
%>

</div>

</div>


</body>
</html>