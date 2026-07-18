<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShopMate | Shop</title>

<link rel="stylesheet" href="/style.css">

</head>
<body>

<%@ include file="header.jsp" %>

${msg}

<div class="products-container">

    <h1>Our Products</h1>

    <div class="product-grid">

        <c:forEach var="pro" items="${products}">

            <div class="product-card">

                <img src="images/${pro.imagepath}.jpg" alt="${pro.name}">

                <div class="product-info">

                    <h3>${pro.name}</h3>

                    <p class="category">${pro.category}</p>

                    <h2>₹ ${pro.price}</h2>
                    
                    <a href="/add-to-cart/${pro.pid}" class="btn-cart">
                          Add to Cart
                    </a>

                    
                </div>

            </div>

        </c:forEach>

    </div>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>