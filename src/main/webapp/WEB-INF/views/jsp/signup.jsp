<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org">
<!DOCTYPE >
<html>
<head>
    <title>Signup Form</title>
</head>
<body>
    <div th:if="${error}" style="color: red;">
        <p th:text="${error}"></p>
    </div>
    <h1>Signup Form</h1>
     <div id="outerdiv">
    <form action="/si/login" method="post">
        <label>Name:</label>
        <input class="input-field" type="text" name="name" required><br><br>
        
        <label>Email:</label>
        <input class="input-field" type="email" name="email" required><br><br>

        <label>Password:</label>
        <input class="input-field"  type="password" name="password" required><br><br>

       <label>Vehicle Type:</label>
		<select name="vehicle"  class="input-field">
		  <option value="Car">Car</option>
		  <option value="Bike">Bike</option>
		  <option value="Truck">Truck</option>
		  <option value="Auto">Auto</option>
		</select>
		<br><br>
		 <label>Address:</label>
        <input class="input-field"  type="text" name="address" required><br><br>
		
		


       <button id="log2" type="submit" >submit</button>
    </form>
    <form action="/login" method="get">
 		
 		<h2 style="text-align:center;">or</h2>
 		<button id="log2" type ="submit">Already have an account</button>   
    </form>
     
</body>
<style>
        body {
            margin: 0;
            padding: 0;
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            flex-direction: column;
        }
        .radiobutton
        {
        	font-size:40px;
        	
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
