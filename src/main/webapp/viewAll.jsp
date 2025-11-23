<!DOCTYPE html>
<html>
<head>
<style>
table {
    border-collapse: collapse;
    width: 60%;
    margin: 20px auto;
}
table, th, td {
    border: 1px solid black;
    padding: 10px;
}
th {
    background: #4CAF50;
    color: white;
}
</style>
</head>

<body>
<h2 style="text-align:center;">All Student Attendance</h2>

<table>
<tr>
    <th>Name</th>
    <th>Roll No</th>
    <th>Status</th>
</tr>

<%
    java.util.List<com.attendance.Student> list = 
        (java.util.List<com.attendance.Student>) request.getAttribute("studentList");

    if (list != null) {
        for (com.attendance.Student s : list) {
%>
<tr>
    <td><%= s.getName() %></td>
    <td><%= s.getRoll() %></td>
    <td><%= s.getStatus() %></td>
</tr>
<%
        }
    }
%>

</table>

<div style="text-align:center;">
    <a href="attendance.jsp">Go Back</a>
</div>

</body>
</html>
