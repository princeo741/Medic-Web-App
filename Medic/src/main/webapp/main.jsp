<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>MEDIC APP</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
    <header>
        <h1>MEDIC APP</h1>
        <div class="top-right">
            <button class="icon-button" onclick="location.href='settings.jsp'"><i class="fas fa-cog"></i></button>
            <button class="icon-button" onclick="location.href='profile.jsp'"><i class="fas fa-user"></i></button>
        </div>
    </header>
    <main>
        <div class="center-left">
            <h2>Medication Action</h2>
            <button class="action-button" onclick="location.href='add_medication.jsp'">Add</button>
            <button class="action-button" onclick="location.href='remove_medication.jsp'">Remove</button>
            <button class="action-button" onclick="location.href='update_medication.jsp'">Update</button>
        </div>
        <div class="center-middle">
            <h2>Today's Medication</h2>
            <ul>
                <!-- Display list of medications from database here -->
                <%
                    // Assume a DAO layer is used to retrieve the list of medications
                    List<Medication> medications = MedicationDAO.getTodaysMedications();
                    for (Medication medication : medications) {
                %>
                <li><%= medication.getName() %></li>
                <%
                    }
                %>
            </ul>
        </div>
        <div class="center-right">
            <h2>Week/Month Medication Schedule</h2>
            <!-- Display calendar view of medications from database here -->
            <div id="calendar"></div>
        </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var calendarEl = document.getElementById("calendar");
            var calendar = new FullCalendar.Calendar(calendarEl, {
                // Assume a DAO layer is used to retrieve the list of medications
                events: MedicationDAO.getMedicationSchedule()
            });
            calendar.render();
        });
    </script>
</body>
</html>