<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShopMate | My Cart</title>

<link rel="stylesheet" href="/style.css">

</head>
<body>

<%@ include file="header.jsp" %>

<div class="cart-container">

    <h1>🛒 My Shopping Cart</h1>

    <table class="cart-table">

        <tr>
            <th>Product</th>
            <th>Category</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Select</th>
            <th>Remove</th>
        </tr>

        <c:forEach var="cart" items="${cartProducts}">

            <tr>

                <td>${cart.name}</td>

                <td>${cart.category}</td>

                <td>₹ ${cart.price}</td>

                <td>
                    <input type="number"
                           value="1"
                           min="1"
                           class="qty-box">
                </td>

                <td>
                    <input type="checkbox" checked>
                </td>

                <td>
                    <a href="/remove-product/${cart.pid}" class="remove-btn">
                        Remove
                    </a>
                </td>

            </tr>

        </c:forEach>

    </table>

    <div class="bill-section">

        <h2>Total Bill : ₹ ${totalBill}</h2>

        <a href="/buy-now" class="buy-btn">
            Buy Now
        </a>

    </div>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>