<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ParkingManagement.entity.Availability" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Entries</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: white;
            font-family: Arial, sans-serif;
        }

        h1 {
            font-size: 32px;
            text-align: center;
            margin: 10px 0;
        }

        h2 {
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
            width: 80px;
            height: 35px;
            background-color: #ff6600;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }

        #nav-items {
            display: flex;
            gap: 15px;
        }

        .outdiv {
            width: 100%;
            padding: 20px;
            box-sizing: border-box;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            table-layout: auto;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: center;
            padding: 8px;
            word-wrap: break-word;
            white-space: normal;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .delete-button {
            background-color: #ff3333;
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .delete-button:hover {
            background-color: #cc0000;
        }

        .bottom-buttons {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        @media (max-width: 768px) {
            th, td {
                font-size: 12px;
                padding: 6px;
            }

            .nav-buttons {
                width: auto;
                font-size: 14px;
                padding: 6px 10px;
            }
        }
    </style>
</head>
<body>

    <div id="nav-bar">
        <h1>Parking Slot Management System</h1>
        <div id="nav-items">
            <button onclick="window.location.href='login'" class="nav-buttons">Logout</button>
            <button onclick="window.location.href='signup'" class="nav-buttons">Signup</button>
        </div>
    </div>

    <h2>Entry Details</h2>

    <div class="outdiv">
        <table>
            <tr>
                <th>Customer Id</th>
                <th>Register Number</th>
                <th>Vehicle type</th>
                <th>Customer Name</th>
                <th>Phone Number</th>
                <th>Color</th>
                <th>Model</th>
                <th>Address</th>
                <th>Entry Date</th>
                <th>Slot No</th>
                <th>Delete</th>
            </tr>

            <%
                List<Availability> vehicle = (List<Availability>) request.getAttribute("vehicle");
                if (vehicle != null && !vehicle.isEmpty()) {
                    for (Availability av : vehicle) {
            %>
                <tr>
                    <td><%= av.getCustomerid() %></td>
                    <td><%= av.getRegno() %></td>
                    <td><%= av.getVehicle() %></td>
                    <td><%= av.getCustomername() %></td>
                    <td><%= av.getPhonenumber() %></td>
                    <td><%= av.getColor() %></td>
                    <td><%= av.getModel() %></td>
                    <td><%= av.getAddress() %></td>
                    <td><%= av.getEntrydate() %></td>
                    <td><%= av.getSlotno() %></td>
                    <td>
                        <form action="/delete" method="post">
                            <input type="hidden" name="customerid" value="<%= av.getCustomerid() %>" />
                            <button class="delete-button" type="submit">Delete</button>
                        </form>
                    </td>
                </tr>
            <%
                    }
                } else {
            %>
                <tr><td colspan="11">No entries found.</td></tr>
            <%
                }
            %>
        </table>
    </div>

    <div class="bottom-buttons">
        <button onclick="window.location.href='home'" class="nav-buttons">Back</button>
    </div>

</body>
</html>
