<%@page import="com.dto.student.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>StudentApp</title>
    <style>
    *{
    margin: 0%;
    padding: 0%;
    box-sizing: border-box;
}
.contain{
    width: 100%;
    height: auto;
}
header{
    background-color: #333;
    height: 50px;
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.main-header a{

    color: white;
    text-decoration: none;
    font-size: 1.8rem;
    font-weight: bold;

}
.navbar a{
    color: white;
    text-decoration: none;
    font-size: 1rem;
    font-weight: bold;
    
}
.navbar{
    width: 30%;
    display: flex;
    justify-content: space-evenly;
}
.dash{
    width: 100%;
    height: 100vh;
    background-color: rgb(202, 224, 216);
}
.main-user h1{
    color: #333;
    text-align: center;
    padding-top: 10px;
    font-size: 3rem;
    font-weight: bold;

}
.userdata h2{
    color: #333;

    margin-top: 10px;
    margin-left: 20px;
    font-size: 1.2rem;
    font-weight: bold;
}
.studentdata{
    width: 100%;
   
}

.table-data{
    width: 100%;
    display: flex;
    justify-content:space-between;
    align-items: center;
   
    
}
.table-containt td{
    width: 100%;
    text-align: center;
    border: 1px solid black;
    padding: 10px;
}
.table-data th{
    width: 100%;
    border: 1px solid black;
    text-align: center;
    padding: 10px;
    

}
.table-containt{
    width: 100%;
    display: flex;
    justify-content:space-between;
    align-items: center;
    background-color: white;
    border: 1px solid black;
    margin-top: 1px;
}
    </style>
</head>
<body>
<%Student s=(Student)session.getAttribute("student"); %>
    <div class="contain">
        <header>
            <div class="main-header">
                <a href="#">Welcome <%=s.getName()%></a>
            </div>
            <nav class="navbar">
                <a href="forgot.jsp">Reset password</a>
                <a href="#">Upadte data</a>
                <a href="#">Logout</a>
            </nav>
        </header>

        <section  class="dash">
            <div class="main-user">
                <h1>Dashboard</h1>
            </div>
            <div class="userdata">
                <h2>View your data</h2>
                <table class="studentdata">
                    <tr class="table-data">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Mail id</th>
                        <th>Branch</th>
                        <th>Location</th>
                    </tr>
                    <tr class="table-containt">
                        <td><%=s.getId()%> </td>
                        <td><%=s.getName()%> </td>
                        <td><%=s.getPhone()%> </td>
                        <td><%=s.getMailid()%> </td>
                        <td><%=s.getBranch() %> </td>
                        <td><%=s.getLocation()%> </td>
                    </tr>

                </table>
            </div>
        </section>

    </div>
</body>
</html>