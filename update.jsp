<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,org.bson.Document"%>
<%@ page import="com.mongodb.MongoClient,com.mongodb.client.*" %>
<html>
<body>
<h2>Update document</h2>
<%

String id = request.getParameter("id");

%>



<form action="edit.jsp" method="post">



Enter id
<input type="text" name="pid" value="<%=id%>"/><br>
Enter ProductName
<input type="text" name="pname" /><br>
Enter ProductCost
<input type="text" name="pcost"/><br>
Enter ProductDesc
<input type="text" name="pdesc"/><br>
<input type="submit" value="update"/>


</form>


</body>
</html>
