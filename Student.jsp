<%@ page import ="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<form action="Student.jsp">

	<table rowspan="2" colspan="2" >
		<tr>
			<td align="left">Add New Item :</td>
			<td><input type="text" name="item"></td>
			<td ><input type="submit" value="Submit" style="width:100%"></td>
		</tr>
	</table>
	</form> 
	
	<%
		List<String> items =(List<String>) session.getAttribute("myToDoList");
	    if(items==null){
	    	items=new ArrayList<String>();
	    	session.setAttribute("myToDoList",items);
	    	
	    }
	      
	    String theItem = request.getParameter("item");
	    if(theItem!=null && items.contains(theItem)==false){items.add(theItem);}    
	%>
	
	<hr>
	<b>To List Items :</b><br>
	<ol>
	<%
	for (String x:items){
		out.println("<li>"+x+"</li>");
	}
	%>
	</ol>


</body>
</html>