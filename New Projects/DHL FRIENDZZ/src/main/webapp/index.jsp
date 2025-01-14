<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DHL ENTRY FORM</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1>DHL FRIENDZZ</h1>
        <div class="container">
            <h2>DHL ENTRY FORM</h2>
            <div>
                <div class="container">
                    <div>
                        <div class="text-center"><h4>LAUNCH OF OUR NEW WEBSITE FRIENDZ.COM TO CHECK CLICK ON "FRIENDZ.COM"</h4></div>
                    </div>
                    <div>
                        <form method="get" action="Index">
                            <label for="date">Date:</label>
                            <input type="text" id="date" name="date"><br><br>
                            <label for="d_code">Dealer Code:</label>
                            <select id="d_code" name="d_code">
                                <option value="1001">1001</option>
                                <option value="1002">1002</option>
                                <option value="1003">1003</option>
                                <option value="1004">1004</option>
                            </select><br><br>
                            <label for="c_no">Customer No:</label>
                            <input type="number" id="c_no" name="c_no"><br><br>
                            <label for="m_no">Retailer Mobile No:</label>
                            <input type="text" id="m_no" name="m_no"><br><br>
                            <label for="r_name">Retailer Name:</label>
                            <input type="text" id="r_name" name="r_name"><br><br>
                            <label for="r_for">Request For:</label>
                            <select id="r_for" name="r_for">
                                <option value="Outstanding">Outstanding</option>
                                <option value="Not Outstanding">Not Outstanding</option>
                            </select><br><br>
                            <label for="resolution">Resolution:</label>
                            <input type="text" id="resolution" name="resolution"><br><br>
                            <label for="f_status">Final Status:</label>
                            <select id="f_status" name="f_status">
                                <option value="Done">Done</option>
                                <option value="Not Done">Not Done</option>
                            </select><br><br>
                            <label for="agent">Agent:</label>
                            <select id="agent" name="agent">
                                <option value="Taufiq S">Taufiq S</option>
                                <option value="Akshay Sharma">Akshay Sharma</option>
                            </select><br><br>
                            <label for="feedback">Dealer Feedback:</label>
                            <select id="feedback" name="feedback">
                                <option value="HAPPY">HAPPY</option>
                                <option value="NOT HAPPY">NOT HAPPY</option>
                            </select><br><br>
                            <button type="submit">Submit Form</button><br><br>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
