<%-- 
    Document   : users
    Created on : 18-Oct-2022, 10:57:59 AM
    Author     : Arjun
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User</title>
    </head>
    <body>
        <h1>Welcome</h1>
        <h2>${message}</h2>
        <div class="container">
        <form action="" method="post" id="addUser">
            
            <input type="text" name="email" id="addEmail"><br>
            
            <input type="text" name="fName" id="addfName"><br>
            
            <input type="text" name="lName" id="addlName"><br>
            
            <select name="status" id="status">
                <option value="active" name="active">Active</option>
                <option value="inactive" name="inactive">Inactive</option>
            </select><br>
            
            <input type="text" name="addPsswd" id="addPsswd">
            
            <select name="type" id="roleType">
                <option value="System Admin">System Administrator</option>
                <option value="Regular User">Regular User</option>
                <option value="Company Admin">Company Administrator</option>
            </select>
            
            <input type="submit" value="addUser">
            <input type="hidden" name="action" value="add">
        </form>
        </div>
        <table>
            <thead>
                <tr>
                    <th>E-mail</th>
                    <th>First name</th>
                    <th>Last name</th>
                    <th>Role</th>
                    <th>Active</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.email}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.role.name}</td>
                        <td>${user.active}</td>
                        <td>
                        <input type="edit" value="edit">
                        <input type="delete" value="delete">
                        </td>
                    </tr>    
                </c:forEach>   
            </tbody>
        </table>
    </body>
</html>
