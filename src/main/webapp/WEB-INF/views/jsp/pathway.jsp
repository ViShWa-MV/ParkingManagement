<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



    
<!DOCTYPE html>
<html>
<head>
<title>Road-map</title>
</head>

<body>

<div id="nav-bar">
<h1>Parking Management System</h1>
<div id="nav-items">
<button onclick="window.location.href='login'" class="nav-buttons">Logout</button>
<button onclick="window.location.href='signup'" class="nav-buttons">Signup</button>
<button onclick="window.location.href='home'" class="nav-buttons"> Back</button>
               
</div>

</div>
<div id="center">
    <h1 style="text-align:center;">Parking Slot Allocation</h1>
<div id="outerdiv">
<h2>Ground Floor - Truck Slots</h2>
<div class="slots">T1 - T20</div>

<h2>1st Floor - Auto Slots</h2>
<div class="slots">A1 - A20</div>

<h2>2nd Floor - Car Slots</h2>
<div class="slots">C1 - C20</div>

<h2>3rd Floor - Bike Slots</h2>
<div class="slots">B1 - B20</div>


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
        height: 80vh; /* Full viewport height */
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
	.input-field {
            width: 50%;
            height: 45px;
            border-radius: 7px;
            border: 1px solid #e6e6e6;
            padding: 10px;
            font-size: 15px;
            margin-bottom: 10px;
            box-sizing: border-box;
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
    .del-buttons
    {
     width: 80px;
        height: 35px;
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
    .floor-title {
  font-size: 20px;
  margin-top: 30px;
  font-weight: bold;
  color: #333;
  border-bottom: 2px solid #ccc;
}

.slots {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  max-width: 240px;
  margin: 10px auto;
}

.slot {
  width: 40px;
  height: 40px;
  margin: 5px;
  text-align: center;
  line-height: 40px;
  color: white;
  border-radius: 5px;
}

.occupied { background-color: red; }
.available { background-color: green; }
    
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