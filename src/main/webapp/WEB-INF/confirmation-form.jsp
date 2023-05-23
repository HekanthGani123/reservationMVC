<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>  
<html>  
<body>  
<p>Your reservation is confirmed successfully. Please, re-check the details.</p>  
First Name : ${railway.firstName} <br>  
Last Name : ${railway.lastName}  <br>
Gender : ${railway.gender} <br>
Meals :
<ol>
 <c:forEach var= "meal" items= "${railway.food}" >
 <li> ${meal} </li>
 </c:forEach>
</ol>
Leaving From: ${railway.cityFrom }
Going To: ${railway.cityTo }
</body>  
</html>  