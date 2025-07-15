<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>home-page</title>
</head>

<body>

<div id="nav-bar">
<h1>Parking Slot Management System</h1>
<div id="nav-items">
<button onclick="window.location.href='login'" class="nav-buttons">Logout</button>
<button onclick="window.location.href='signup'" class="nav-buttons">Signup</button>

               
</div>

</div>
<div id="center">
    <h1 style="text-align:center;">Respective Operations</h1>
<div id="outerdiv">
<div class="button-split">

<form action="/vi" method="post">
<button class="content-buttons" type="submit">View Slots</button></form>
<form action="/allocate" method="post">
<button type="submit" class="content-buttons">Add Slot </button></form></div>
<br></br>
<div class="button-split">
<form action="/availability" method="post">
<button  class="content-buttons" type="submit">View Entries</button></form>
<form action="/slotpathway" method="post">
<button class="content-buttons" type="submit">Slot PathWay</button>
</form></div>

</div>
<br></br>
<br></br>
<div id="outerdiv1">
<h2 style="text-align:center;">about us</h2>
<p>Welcome to the Parking Slot Management System, a user-friendly web application designed to streamline the process of managing parking spaces in residential, commercial, or public environments. This project is built using Spring Boot, JSP, and MySQL, and focuses on delivering a clean and responsive user interface for efficient parking operations.<br></br>

*Vehicle Registration<br></br>

*Login Authentication<br></br>

*Allocate, View, and Release Parking Slots<br></br>

*Search Parking Slots by Slot ID<br></br>



Our system simplifies parking administration by offering a centralized platform to manage parking slots effectively. With real-time database operations and robust backend validation, it ensures smooth and reliable performance. This application is ideal for apartment complexes, malls, office buildings, and smart city parking systems aiming to modernize and digitize their parking infrastructure.</p>
</div>
</div>
</body>
<style>
    #center {
        margin: 0;
        padding: 0;
        background-color: white;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 110vh; /* Full viewport height */
        flex-direction: column;
    }


    #outerdiv {
        width: 90%;
        max-width: 500px;
        background-color: #ffe0cc;
        border-radius: 30px;
        padding: 30px;
        opacity: 0.9;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        display: flex;
        flex-direction: column;
    }
     #outerdiv1{
        width: 90%;
        background-color: #ffe0cc;
        border-radius: 30px;
        padding: 30px;
        opacity: 0.9;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        display: flex;
        flex-direction: column;
    }
    

  

    .content-buttons {
        display: block;
        width: 200px;
        height: 45px;
        background-color: #ff6600;
        color: white;
        font-size: 20px;
        border-radius: 5px;
        border: none;
        cursor: pointer;
    }
    #nav-bar{
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        background-color: #ffe0cc;
        padding: 5px 15px 5px 10px;
        
        width:100%;
    }
    .nav-buttons{
        width: 80px;
        height: 35px;
        display: block;
        background-color: #ff6600;
        color: white;
        font-size: 20px;
        border-radius: 5px;
        border: none;
        cursor: pointer;
    }
    #nav-items
    {
        display: flex;
        flex-direction: row;
        gap: 20px;
    }
    .button-split
    {
        display: flex; flex-direction: row; gap:80px;

    }
    @media(max-width: 500px;)
     {
        /* h1 {
            font-size: 30px;
            padding: 15px;
        }
*/
        #outerdiv {
            padding: 20px;
        }
    }
    </style>
</html>