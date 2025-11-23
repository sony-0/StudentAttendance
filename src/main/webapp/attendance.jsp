<!DOCTYPE html>
<html>
<head>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f2f2f2;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .container {
        background: white;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
        width: 350px;
        text-align: center;
    }

    input, select {
        width: 90%;
        padding: 8px;
        margin-top: 8px;
        border-radius: 5px;
        border: 1px solid gray;
    }

    input[type="submit"], .back-btn {
        width: 100%;
        background: #4CAF50;
        color: white;
        border: none;
        margin-top: 15px;
        cursor: pointer;
        font-size: 16px;
        padding: 10px;
    }

    input[type="submit"]:hover {
        background: #45a049;
    }

    .back-btn {
        background: #007BFF;
    }

    .back-btn:hover {
        background: #0066cc;
    }
</style>

<script>
function validateForm() {
    let name = document.forms["attForm"]["name"].value;
    let roll = document.forms["attForm"]["roll"].value;
    let status = document.forms["attForm"]["status"].value;

    if (name === "" || roll === "" || status === "") {
        alert("All fields are required!");
        return false;
    }
    if (!/^[0-9]+$/.test(roll)) {
        alert("Roll number must be numeric.");
        return false;
    }
    return true;
}
</script>
</head>

<body>

<div class="container">
    <h2>Student Attendance Form</h2>

    <form name="attForm" action="submitAttendance" method="post" onsubmit="return validateForm()">
        <input type="text" name="name" placeholder="Enter Name">

        <input type="text" name="roll" placeholder="Enter Roll No">

        <select name="status">
            <option value="">--Select Attendance--</option>
            <option value="Present">Present</option>
            <option value="Absent">Absent</option>
        </select>

        <input type="submit" value="Submit">
    </form>

    <!-- Go Back Button -->
    <button class="back-btn" onclick="window.location.href='index.jsp'">Go Back</button>
</div>

</body>
</html>
