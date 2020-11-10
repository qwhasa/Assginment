<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,org.bson.Document"%>
<%@ page import="com.mongodb.MongoClient,com.mongodb.client.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("pid");
String name = request.getParameter("pname");
double cost = Double.parseDouble(request.getParameter("pcost"));
String desc= request.getParameter("pdesc");

MongoClient mongo = new MongoClient( "localhost" , 27017 ); 
MongoDatabase database = mongo.getDatabase("productdb"); 
MongoCollection<Document> collection = database.getCollection("products"); 




Document search = new Document("name", name);
Document replacement = new Document("name", name)
		 .append("cost", cost)
		 .append("desc", desc);
 


collection.replaceOne(search,replacement);




out.println("Document inserted successfully");
response.sendRedirect("list.jsp");


%>
</body>
</html>