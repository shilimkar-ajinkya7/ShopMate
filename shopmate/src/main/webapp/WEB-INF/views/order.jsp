<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShopMate | Order Success</title>

<link rel="stylesheet" href="/style.css">

</head>
<body>

<%@ include file="header.jsp" %>

<div class="order-container">

    <div class="order-card">

        <div class="success-icon">
            ✔
        </div>

        <h1>Order Placed Successfully!</h1>

        <p>
            Thank you for shopping with <strong>ShopMate</strong>.
        </p>

        <p>Your order has been confirmed.</p>

        <h2>Total Amount Paid</h2>

        <h3>₹ ${totalBill}</h3>

        <br>

        

    </div>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>