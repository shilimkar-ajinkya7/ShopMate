<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShopMate | Bill</title>

<link rel="stylesheet" href="/style.css">

</head>
<body>

<%@ include file="header.jsp" %>

<div class="bill-container">

    <h1>🧾 Order Summary</h1>

    <table class="bill-table">

        <tr>
            <th>Image</th>
            <th>Product Name</th>
            <th>Category</th>
            <th>Price (₹)</th>
        </tr>

        <c:forEach var="pro" items="${Products}">

            <tr>

                <td>
                    <img src="/images/${pro.imagepath}.jpg"
                         class="bill-img"
                         alt="${pro.name}">
                </td>

                <td>${pro.name}</td>

                <td>${pro.category}</td>

                <td>₹ ${pro.price}</td>

            </tr>

        </c:forEach>

    </table>

    <div class="bill-total">

        <h2>Total Bill : ₹ ${totalBill}</h2>

    </div>

    <div class="bill-buttons">

        <a href="/shop" class="continue-btn">
            Continue Shopping
        </a>

        <a href="/place-order" class="place-btn">
            Place Order
        </a>

    </div>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>