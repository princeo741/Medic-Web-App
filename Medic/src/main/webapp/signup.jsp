<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medic App - Sign Up</title>
    <link rel="stylesheet" href="signup.css">  </head>
<body>

<header class="header">
    <img src="ImageDB/Logo.jpg" alt="Medic App Logo" class="logo">
    <h1>Medic App</h1>
</header>

<section class="signup-form">
    <h2>Sign Up for Medic App</h2>
    <form action="registerServlet" method="post">  <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" required>  </div>
        <div class="form-group">
            <label for="email">Email Address:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-group">
            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>
        </div>
        <button type="submit">Sign Up</button>
    </form>
</section>

<footer class="footer">
    <p>&copy; 2024 Medic App. All Rights Reserved.</p>
</footer>

</body>
</html>
