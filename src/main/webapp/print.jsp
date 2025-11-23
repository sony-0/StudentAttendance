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

    table {
        border-collapse: collapse;
        width: 420px;
        background: white;
        box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
        border-radius: 10px;
        overflow: hidden;
    }

    th {
        background-color: #4CAF50;
        color: white;
        padding: 12px;
        font-size: 18px;
    }

    td {
        padding: 10px;
        border-bottom: 1px solid #ddd;
        text-align: left;
        font-size: 16px;
    }

    tr:last-child td {
        border-bottom: none;
    }

    .btn-container {
        margin-top: 20px;
        text-align: center;
    }

    button {
        margin: 5px;
        padding: 10px 20px;
        background-color: #4CAF50;
        border: none;
        color: white;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    button:hover {
        background-color: #45a049;
    }
</style>

<script>
function printDetails() {
    window.print();
}
</script>
</head>

<body>

<div>
    <table>
        <tr>
            <th colspan="2">Student Attendance Details</th>
        </tr>
        <tr>
            <td><b>Name</b></td>
            <td>${name}</td>
        </tr>
        <tr>
            <td><b>Roll No</b></td>
            <td>${roll}</td>
        </tr>
        <tr>
            <td><b>Status</b></td>
            <td>${status}</td>
        </tr>
    </table>

    <div class="btn-container">
        <button onclick="window.location.href='attendance.jsp'">Go Back</button>
        
    </div>
</div>

</body>
</html>
