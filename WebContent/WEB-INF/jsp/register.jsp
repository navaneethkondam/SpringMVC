
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

</head>
<body>
<div>
<h1>Welcome page</h1>
<h2>Register New Employee</h2>
       <form action="register" method="post" >  
      	<table > 
         <tr>  
          <td>Name : </td> 
          <td><input type="text" name="name" /></td>
         </tr>  
         <tr>  
          <td>Salary :</td>  
          <td><input type="text" name="salary"  /></td>
         </tr> 
         <tr>  
          <td>Designation :</td>  
          <td><input type="text" name="designation"  /></td>
         </tr> <tr></tr>
         <tr>  
          <td> </td>  
          <td><input type="submit" value="Save" /></td>  
         </tr>  
        </table>  
       </form>  
    </div>  
</body>
</html>