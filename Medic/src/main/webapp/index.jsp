<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title><%= application.getAttribute("appName") %></title>
    <link rel="stylesheet" href="index.css">  </head>
<body>

<nav>
    <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="services.jsp">Services</a></li>
        <li><a href="contact.jsp">Contact Us</a></li>
        <li><input type="text" placeholder="Search..." id="searchBox"></li>
    </ul>
</nav>

<header class="hero">
    <h1><%= application.getAttribute("appName") %></h1>  <h2>Never Miss a Dose Again!</h2> 
    <p>Take control of your health with personalized medication reminders.</p>
    <button>Download Now</button>
    <button>Get Started for Free</button>
</header>

<section class="benefits">
    <h2>Benefits of Using Our App</h2>
    <div class="benefit-card">
        <h3>Improved Medication Adherence</h3>
        <p>Reduce the risk of missed doses and stay on track with your treatment plan.</p>
    </div>
    <div class="benefit-card">
        <h3>Manage Multiple Prescriptions</h3>
        <p>Easily organize and track all your medications in one convenient place.</p>
    </div>
    <div class="benefit-card">
        <h3>Avoid Missed Doses</h3>
        <p>Receive timely reminders to ensure you take your medication as prescribed.</p>
    </div>
</section>


<section class="features">
    <h2>Key Features</h2>
    <ul>
        <li>Add medications with ease</li>
        <li>Set customizable reminders</li>
        <li>Track medication history</li>
        <li>(Add more features here)</li>
    </ul>
</section>

<section class="trust">
    <h2>Trust & Security</h2>
    <p>We take your privacy and data security seriously. Your information is always protected.</p>
    </section>

<section class="cta">
    <h2>Get Started Today!</h2>
    <button>Download Now</button>
    <button>Learn More</button>
</section>

</body>
</html>