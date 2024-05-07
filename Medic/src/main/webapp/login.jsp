<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medic App - Login</title>
    <link rel="stylesheet" href="login.css">  </head>
<body>

<header class="header">
    <img src="ImageDB/Logo.jpg" alt="Medic App Logo" class="logo">
    <h1>Medic App</h1>
</header>

<section class="login-form">
    <h2>Login to Medic App</h2>
    <form action="loginServlet" method="post">  <div class="form-group">
            <label for="email">Email Address:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <button type="submit">Login</button>
        <span id="login-error" class="error-message"></span>
    </form>
</section>

<footer class="footer">
    <p>&copy; 2024 Medic App. All Rights Reserved.</p>
</footer>

<script>
const errorMessage = document.getElementById("login-error");

// Check if there's an error message in the URL query string (passed by loginServlet)
const urlParams = new URLSearchParams(window.location.search);
const error = urlParams.get("error");

if (error) {
  errorMessage.textContent = "Wrong username or password!";
}
</script>

</body>
</html>