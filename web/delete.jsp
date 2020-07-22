<!--
    Henrik Berg, February 8th, 2018
    index.html
    This web application uses JSP and SQL to manipulate a database
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Index</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="main.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Delete</h1>
        <!-- Submitting information to delete a record from table -->
        <form action="output.jsp">
            <p class="input">First Name:
            <input type="text" name="deleteFirstName"></p>
            <br><br>
            <input type="submit" value="Delete">
        </form>
        <form action="index.html">
            <input type="submit" value="Back">
        </form>
    </body>
</html>
