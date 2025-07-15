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
</div>
<br></br>
<div id="center">
    <h1 style="text-align:center;">Slot Allocated Successfully..</h1><br></br>
   
<div id="outerdiv">
<div class="button-split">
<button onclick="window.location.href='/login'" class="nav-buttons">Logout</button>
<button onclick="window.location.href='/signup'" class="nav-buttons">Signup</button>
<button onclick="window.location.href='/home'" class="nav-buttons">Back</button>



</div>
               

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
        height: 50vh; /* Full viewport height */
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
       justify-content: center;
      
 		   
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
        display: flex; flex-direction: column; gap:80px;padding:20px 2000px 20px 200px;

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