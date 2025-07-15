<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ParkingManagement.entity.Availability" %>
<%@ page import="java.util.Set, java.util.HashSet" %>

<!DOCTYPE html>
<html>
<head>
    <title>Parking Slots</title>
    <style>
        body {
            background-color: white;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
        }

        #nav-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #ffe0cc;
            padding: 10px 20px;
        }

        .nav-buttons {
            background-color: #ff6600;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .vehicle-slots {
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            justify-content: center;
            margin: 30px auto;
            max-width: 1200px;
        }

        .vehicle-type {
            text-align: center;
        }

        .slots {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            max-width: 240px;
            margin-top: 10px;
        }

        .slot {
            width: 40px;
            height: 40px;
            margin: 5px;
            border-radius: 5px;
            text-align: center;
            line-height: 40px;
            font-weight: bold;
            color: white;
        }

        .occupied {
            background-color: red;
        }

        .available {
            background-color: green;
        }

        .legend {
            text-align: center;
            margin-top: 30px;
        }

        .legend div {
            display: inline-block;
            margin: 0 15px;
        }

        .legend-box {
            width: 20px;
            height: 20px;
            display: inline-block;
            margin-right: 5px;
        }
      .nav-items {
    display: flex;
    justify-content: center;
    margin-top: 30px;
}

.nav-items .nav-buttons {
    width: 100px;
    height: 40px;
    background-color: #ff6600;
    color: white;
    font-size: 18px;
    border-radius: 5px;
    border: none;
    cursor: pointer;
}

    </style>
</head>

<body>

<div id="nav-bar">
    <h1>Parking Slot Management System</h1>
    <div>
        <button onclick="window.location.href='login'" class="nav-buttons">Logout</button>
        <button onclick="window.location.href='signup'" class="nav-buttons">Signup</button>
      
    </div>
</div>

<h1>Parking Slots</h1>

<%
    List<Availability> vehicleList = (List<Availability>) request.getAttribute("vehicle");

    Set<String> carSlots = new HashSet<>();
    Set<String> bikeSlots = new HashSet<>();
    Set<String> autoSlots = new HashSet<>();
    Set<String> truckSlots = new HashSet<>();

   
    if (vehicleList != null) {
        for (Availability av : vehicleList) {
            String slot = av.getSlotno(); // e.g., "C1", "B3", etc.
            if (slot != null) {
                slot = slot.toUpperCase(); // Normalize to uppercase for comparison
                if (slot.startsWith("C")) carSlots.add(slot);
                else if (slot.startsWith("B")) bikeSlots.add(slot);
                else if (slot.startsWith("A")) autoSlots.add(slot);
                else if (slot.startsWith("T")) truckSlots.add(slot);
            }
        }
    }
   

%>

<div class="vehicle-slots">
    <% String[] types = { "C", "B", "A", "T" }; String[] names = { "Car", "Bike", "Auto", "Truck" };
       Set[] allSlots = { carSlots, bikeSlots, autoSlots, truckSlots };
       for (int t = 0; t < types.length; t++) {
           String type = types[t];
           String label = names[t];
           Set<String> used = allSlots[t];
    %>
        <div class="vehicle-type">
            <h3><%= label %></h3>
            <div class="slots">
                <% for (int i = 1; i <= 20; i++) {
                    String slotId = type + i;
                    String cssClass = used.contains(slotId) ? "slot occupied" : "slot available";
                %>
                    <div class="<%= cssClass %>"><%= slotId %></div>
                <% } %>
            </div>
        </div>
    <% } %>
</div>

<!-- Legend -->
<div class="legend">
    <div><div class="legend-box" style="background-color: red;"></div>Occupied</div>
    <div><div class="legend-box" style="background-color: green;"></div>Available</div>
</div>
<div class="nav-items">
    <button onclick="window.location.href='home'" class="nav-buttons">Back</button>
</div>


</body>
</html>
