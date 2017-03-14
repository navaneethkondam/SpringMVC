<%@ page import="com.pojo.employee.Employee" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<style type="text/css">  
div {
    height: 200px;
    width: 400px;
  

    position: fixed;
    top: 50%;
    left: 50%;
    margin-top: -100px;
    margin-left: -200px;
}  
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<%@ page isELIgnored="false" %>
</head>
<body>
<div>
<table>
<tr><td>Employee Details with Employee Id: <c:out value="${emp.id}"/> </td></tr>
<tr><td> Employee Name:<c:out value="${emp.name}"></c:out></td></tr>
 <tr><td>Employee Salary:<c:out value="${emp.salary}"></c:out></td></tr>
 <tr><td>Employee Designation:<c:out value="${emp.designation}"></c:out>  </td></tr>
    </table>
    
    <form action="emplist" method="get">
    <input type="submit" value="Back"/>
    </form> 
    </div> 
</body>
</html>