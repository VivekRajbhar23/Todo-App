<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="navbar.jsp" %>
</head>
<body>
<h1>This is addNotes page</h1>

<form action="SaveNotesServlet" method="post">
<label for="title">Note Title</label>
<input required="required" type="text" name="title" id="title" placeholder="Enter here"><br>
<label for="content">Note Content</label>
<textarea required="required" name="content" id="content"></textarea><br>
<button type="submit">AddNote</button>
</form>
</body>
</html>