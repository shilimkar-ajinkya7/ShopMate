<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShopMate | Login</title>
<link rel="stylesheet" href="/style.css">
</head>
<body>

<%@ include file="header.jsp" %>

<h3>${msg}</h3>

<div class="container">

    <div class="login-box">

        <h2>Customer Login</h2>

        <!-- Success / Error Message -->
        <p class="msg">${msg}</p>

        <form action="/verify-login" method="post">

            <label for="username">Username</label>
            <input type="text" id="username" name="username"placeholder="Enter Username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter Password" required>

            <button type="submit">Login</button>

        </form>

        <div class="hy-link">
            <a href="/register">
                New User? Sign-Up Here
            </a>
        </div>

    </div>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>