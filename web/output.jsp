<!--
    Henrik Berg, February 8th, 2018
    index.html
    This web application uses JSP and SQL to manipulate a database
-->

<!-- Importing libraries and API -->
<%@ page import = "java.io.*, java.util.*, java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Database Integration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="main.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        
        <!-- Setting the database source -->
        <sql:setDataSource var="database" driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/JSPDatabase" 
                           user="root" password="mysql1"
                           />
        
        <!-- Setting variables -->
        <c:set var="FirstName" value="${param.firstName}" />
        <c:set var="LastName" value="${param.lastName}" />
        <c:set var="YearOfBirth" value="${param.yearOfBirth}" />
        <c:set var="newFirstName" value="${param.newFirstName}" />
        <c:set var="newLastName" value="${param.newLastName}" />
        <c:set var="newYearOfBirth" value="${param.newYearOfBirth}" />
        <c:set var="oldFirstName" value="${param.oldFirstName}" />
        <c:set var="deleteFirstName" value="${param.deleteFirstName}" />
        
        <c:if test="${not empty FirstName}">
            <!-- Inserting into table -->
            <sql:update dataSource="${database}" var="counter">
                INSERT INTO TestTable VALUES ( ? , ? , ?);
                <sql:param value="${FirstName}" />
                <sql:param value="${LastName}" />
                <sql:param value="${YearOfBirth}" />
            </sql:update>
        </c:if>
    
        <c:if test="${not empty newFirstName}">
            <!-- Updating table -->
            <sql:update dataSource="${database}" var="counter">
                UPDATE TestTable SET FirstName = ?, LastName = ?, YearOfBirth = ? WHERE FirstName = ?;
                <sql:param value="${newFirstName}" />
                <sql:param value="${newLastName}" />
                <sql:param value="${newYearOfBirth}" />
                <sql:param value="${oldFirstName}" />
            </sql:update>
        </c:if>
        
        <c:if test="${not empty deleteFirstName}">
            <!-- Deleting from table -->    
            <sql:update dataSource="${database}" var="counter">
                DELETE FROM TestTable WHERE FirstName = ?;
                <sql:param value="${deleteFirstName}" />
            </sql:update>
        </c:if>
        
        <!-- Reading from table -->
        <sql:query dataSource="${database}" var="result">
            SELECT * FROM TestTable;
        </sql:query>
        
        <h1>Output</h1>
            
        <!-- Displaying a table -->
        <table style="text-align: center; border-collapse: collapse">
            <tr>
                <td><b>First Name</b></td>  
                <td><b>Last Name</b></td> 
                <td><b>Year of Birth</b></td>
            </tr>
            
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.FirstName}"/></td>
                    <td><c:out value="${row.LastName}"/></td>
                    <td><c:out value="${row.YearOfBirth}"/></td>
                </tr>
            </c:forEach>
        </table>
            
        <!-- Back button -->
        <form action="index.html">
            <br><br>
            <input type="submit" value="Back">
        </form>
    </body>
</html>
