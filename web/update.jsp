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
        <h1>Update</h1>
        <!-- Submitting information for updating table -->
        <form action="output.jsp">
            <p class="input">New First Name:
            <input type="text" name="newFirstName"></p>
            <br><br>
            <p class="input">New Last Name:
            <input type="text" name="newLastName"></p>
            <br><br>
            <p class="input">New Year Of Birth:
            <input type="text" name="newYearOfBirth"></p>
            <br><br><br><br>
            <p class="input">Old First Name:
            <input type="text" name="oldFirstName"></p>
            <br><br>
            <input type="submit">
        </form>
        <form action="index.html">
            <input type="submit" value="Back">
        </form>
    </body>
</html>
