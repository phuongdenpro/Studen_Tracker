<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

</script>
</head>
<body>
<!-- Step 1: Create HTML form -->
<form action="todo-demo.jsp" method="post">
	Add new item: <input type="text" name="theItem" />	
	<input type="submit" value="Submit" />
</form>
<!-- Step 2: Add new item to "To Do" list -->
<%	// get the TO DO items from the session
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	// if the TO DO items doesn't exist, then create a new one
	if (items == null) {
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);}	
	// see if there is form data to add
	String theItem = request.getParameter("theItem");
	if (theItem != null) {
		items.add(theItem);	
		}
%>
<!-- Step 3: Display all "To Do" item from session -->
<hr>
<b>To List Items:</b> <br/>
<ol>
<%	for (String temp : items) {
		out.println("<li>" + temp + "</li>");}
%>
</ol>
</body>
</html>