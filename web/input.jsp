<!--
    Henrik Berg, February 8th, 2018
    index.html
    This web application uses JSP and SQL to manipulate a database
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Input</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="main.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Input</h1>
        <!-- Submitting information for table input -->
        <form action="output.jsp">
            <p class="input">First Name:
            <input type="text" name="firstName"></p>
            <br><br>
            <p class="input">Last Name:
            <input type="text" name="lastName"></p>
            <br><br>
            <p class="input">Year Of Birth:
            <input type="number" name="yearOfBirth"></p>
            <br><br>
            <input type="submit">
        </form>
        <form action="index.html">
            <input type="submit" value="Back">
        </form>
    </body>
</html>
