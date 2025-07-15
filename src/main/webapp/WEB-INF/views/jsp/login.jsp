<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PARKING  SLOT MANAGEMENT SYSTEM</title>
   
</head>
<body>
    <h1>Login Form</h1>
    <div id="outerdiv">
        <form action="/next" method="post">
            <label>Email id</label><br></br>
            <input id="email" name="emailid"  class="input-field" required><br>

            <label>Password</label><br></br>
            <input id="password" name="password" type="password" class="input-field" required><br></br>
            <button id="log2" type="submit" >Log in</button>
        </form>
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
            height: 100vh; /* Full viewport height */
            flex-direction: column;
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
