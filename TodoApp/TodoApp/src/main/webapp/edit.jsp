<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<%@include file="navbar.jsp"%>
	<h1>This is edit page</h1>

	<%
	int noteId = Integer.parseInt(request.getParameter("note_id").trim());

	Session s = FactoryProvider.getFactory().openSession();

	Note note = (Note) s.get(Note.class, noteId);
	%>

	<form action="UpdateServlet" method="post">
	
	<input value="<%= note.getId()%>" name="noteId" type="hidden"/><br>
	
		<label for="title">Note Title</label> <input required="required"
			type="text" name="title" id="title" placeholder="Enter here" value="<%= note.getTitle() %>"/><br>
		<label for="content">Note Content</label>
		<textarea required="required" name="content" id="content"><%= note.getContent() %> </textarea>
		<br>
		<button type="submit">UpdtaeNote</button>
	</form>
</body>
</html>