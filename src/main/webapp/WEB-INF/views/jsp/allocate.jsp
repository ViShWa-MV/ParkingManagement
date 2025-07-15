<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org">
<!DOCTYPE >
<html>
<head>
    <title>Allocation</title>
</head>
<body>
	 <h1>Parking Slot Management System</h1>

    <div th:if="${error}" style="color: red;">
        <p th:text="${error}"></p>
    </div>
    <h1>Enter Vehicle Details</h1>
     <div id="outerdiv">
    <form action="/allocatesubmit" method="post">
        <label>Name:</label>
        <input class="input-field" type="text" name="name" required><br><br>
        
        <label>Phone Number:</label>
        <input class="input-field"  type="tel" name="phonenumber"  pattern="[89][0-9]{9}" 
       maxlength="10" required ><br><br>
       
      <label>Vehicle Type:</label>
<select name="vehicle" class="input-field">
  <option value="Car">Car</option>
  <option value="Bike">Bike</option>
  <option value="Truck">Truck</option>
  <option value="Auto">Auto</option>
</select>
<br><br>

<label>Slot no:</label>
<input 
  class="input-field" 
  type="text" 
  name="slotno" 
  required 
  pattern="^[abct](1[0-9]|20|[1-9])"
  title="unavailable slots ,try another slots">

		
		
		 <label>Register No:</label>
        <input class="input-field" type="textl" name="regno" required><br><br>
		
       
       
         <label>Color of Vehicle:</label>
        <input class="input-field"  type="text" name="color" required><br><br>
        
        
         <label>Model:</label>
        <input class="input-field"  type="text" name="model" required><br><br>
		
       
       
        
	<label>Address:</label>
        <input class="input-field"  type="text" name="address" required><br><br>
		 
    <label>Entry Date:</label>
    <input class="input-field" type="date" name="entrydate" required><br></br>
    
    
   


       <button id="log2" type="submit" >submit</button>
    </form>

</div><br></br>
<div id="nav-bar">
   
      <div class="nav-items">
            	<button onclick="window.location.href='home'" class="nav-buttons"> Back</button>
             
            </div>
</body>
<style>
        body {
            margin: 0;
            padding: 0;
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 130vh; /* Full viewport height */
            flex-direction: column;
        }
        .radiobutton
        {
        	font-size:40px;
        	
        }
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
        h1 {
            color: #ff6600;
            font-size: 40px;
            text-align: center;
            padding: 20px;
        }

        #outerdiv {
            width: 90%;
            max-width: 500px;
            background-color: #ffe0cc;
            border-radius: 30px;
            padding: 30px;
            opacity: 0.9;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .input-field {
            width: 100%;
            height: 45px;
            border-radius: 7px;
            border: 1px solid #e6e6e6;
            padding: 10px;
            font-size: 15px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        #log2 {
            display: block;
            width: 100%;
            height: 45px;
            background-color: #ff6600;
            color: white;
            font-size: 20px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }

        label {
            font-size: 18px;
            font-weight: bold;
         }

        @media(max-width: 500px) {
            h1 {
                font-size: 30px;
                padding: 15px;
            }

            #outerdiv {
                padding: 20px;
            }
        }
    </style>
</html>
