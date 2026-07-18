<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShopMate | Home</title>

<link rel="stylesheet" href="/style.css">

</head>
<body>

<%@ include file="header.jsp" %>

<c:if test="${not empty msg}">
    <div class="success-msg">
        ${msg}
    </div>
</c:if>

<div class="home-container">

    <h1>Welcome to ShopMate</h1>

    <p class="tagline">
        Your One-Stop Shopping Destination
    </p>

    <a href="/shop" class="shop-btn-home">
        🛒 Let's Shop
    </a>

    <div class="feature-grid">

        <div class="feature-card">
            <h3>💻 Premium Electronics</h3>
            <p>Latest laptops, smartphones, headphones and accessories.</p>
        </div>

        <div class="feature-card">
            <h3>👕 Fashion & Lifestyle</h3>
            <p>Trendy fashion products for every occasion.</p>
        </div>

        <div class="feature-card">
            <h3>🏠 Home Appliances</h3>
            <p>Quality home and kitchen appliances at affordable prices.</p>
        </div>

        <div class="feature-card">
            <h3>📱 Mobile Accessories</h3>
            <p>Chargers, speakers, smart watches and more.</p>
        </div>

        <div class="feature-card">
            <h3>🛍 Daily Essentials</h3>
            <p>Everything you need for your everyday life.</p>
        </div>

        <div class="feature-card">
            <h3>🚚 Fast Delivery</h3>
            <p>Quick, secure and reliable doorstep delivery.</p>
        </div>

    </div>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>