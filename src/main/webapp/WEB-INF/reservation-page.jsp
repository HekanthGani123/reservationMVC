<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>  
<html>  
<head>  
    <title>Reservation Form</title>  
</head>  
<h3>Railway Reservation Form</h3>  
<body>  
    <form:form action="submitForm" modelAttribute="railway">  
        First name: <form:input path="firstName" />         
        <br><br>  
        Last name: <form:input path="lastName" />  
        <br><br>  
        Gender:
        Male: <form:radiobutton path="gender" value="male"/>
        FeMale: <form:radiobutton path="gender" value="female"/>
        <br><br> 
        Meals:
        BreakFast <form:checkbox path="food" value="bf"/>
        <br><br> 
        Lunch <form:checkbox path="food" value="lunch"/>
        <br><br> 
        Dinner <form:checkbox path="food" value="dinner"/>
        <br><br> 
        Leaving From: <form:select path="cityFrom">
        <form:option value="Gunjur" label="Gunjur"></form:option>
        <form:option value="Varthur" label="Varthur"></form:option>
        <form:option value="Kodi" label="Kodi"></form:option>
        </form:select>
        <br><br>
        Going To: <form:select path="cityTo">
        <form:option value="Gunjur" label="Gunjur"></form:option>
        <form:option value="Varthur" label="Varthur"></form:option>
        <form:option value="Kodi" label="Kodi"></form:option>
        </form:select>
        <br><br>
        
        <input type="submit" value="Submit" />      
    </form:form>  
</body>  
</html>  