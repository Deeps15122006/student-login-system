<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
</head>

<body>

    <h2>Student Login</h2>

    <form method="post" action="login.jsp">

        <label>Username:</label>
        <input type="text" name="username">

        <br><br>

        <label>Password:</label>
        <input type="password" name="password">

        <br><br>

        <input type="submit" value="Login">

    </form>

    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username != null && password != null) {

            if (username.equals("student") && password.equals("1234")) {
    %>

                <h3>Login Successful</h3>

                <p>Welcome, Student!</p>

                <a href="welcome.jsp">Go to Welcome Page</a>

    <%
            } else {
    %>

                <h3>Invalid Username or Password</h3>

    <%
            }
        }
    %>

</body>
</html>