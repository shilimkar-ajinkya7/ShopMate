<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShopMate | Customer Register</title>
<link rel="stylesheet" href="/style.css">
</head>

<body>
<%@ include file="header.jsp" %>

<div class="container">

    <form action="/register-customer" method="post">

        <h1>Customer Registration</h1>

        <label>Full Name</label>
        <input type="text" name="name" placeholder="Enter Full Name" required>

        <label>Email</label>
        <input type="email" name="email" placeholder="Enter Email" required>

        <label>Mobile Number</label>
        <input type="text" name="mobile" placeholder="Enter Mobile Number" required>

        <label>Address</label>
        <input type="text" name="address" placeholder="Enter  Address" required>

        <label>Username</label>
        <input type="text" name="username" placeholder="Choose Username" required>

        <label>Password</label>
        <input type="password" name="password" placeholder="Choose Password" required>

        <button type="submit">Register</button>

        <div class="hy-link">
            <a href="/login-page">Already have an account? Login</a>
        </div>

    </form>

</div>
<%@ include file="footer.jsp" %>
</body>
</html>