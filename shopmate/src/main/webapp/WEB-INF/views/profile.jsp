<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShopMate | My Profile</title>

<link rel="stylesheet" href="/style.css">

</head>
<body>

<%@ include file="header.jsp" %>

<div class="profile-container">

    <div class="profile-card">

        <h2>👤 My Profile</h2>

        <table class="profile-table">

            <tr>
                <th>Customer ID</th>
                <td>${customer.cid}</td>
            </tr>

            <tr>
                <th>Name</th>
                <td>${customer.name}</td>
            </tr>

            <tr>
                <th>Email</th>
                <td>${customer.email}</td>
            </tr>

            <tr>
                <th>Mobile</th>
                <td>${customer.mobile}</td>
            </tr>

            <tr>
                <th>Address</th>
                <td>${customer.address}</td>
            </tr>

            <tr>
                <th>Username</th>
                <td>${customer.username}</td>
            </tr>

        </table>

        <div class="profile-buttons">

            <a href="/update/${customer.cid}" class="update-btn">
                Update Profile
            </a>

            <a href="/shop" class="shop-btn">
                Continue Shopping
            </a>

        </div>

    </div>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>