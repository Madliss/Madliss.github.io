<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/aj.css">
<script type="text/javascript" src="js/aj.js"></script>
</head>
<body>
	<div id="top-header">
			<a href="homePage.html"><img src="images/logo.jpg"></a>
	</div>

	<div id="header-bot">
		<div id="user">
			<c:if test="${sessionScope.user != null}">
			Current user:<c:out value="${sessionScope.user.name}"/>
			</c:if>
			<a href="LogoutServlet">Log out</a>
		</div>
		
		<div id="cart">
			<img src="images/cart.png">
			<a href="ListProductServlet">View shopping cart</a>
			
		</div>

	</div>

	<div id="shoes">
		<div id="shoe1">
			<a href="aj.html"><img src="images/shoes-1.png"></a>
			<form method="post" action="AddProductServlet">
			<label>Nike<input type="hidden" name="name3" value="Nike"></label><br/>
			<input type="hidden" name="price3" value="89.9"><br/>
		
			<input type="submit" class="ab" value="AddtoCart">
			</form>
			<a class="s1" href="json/shoe1.json" onclick="grabShoe(this.href); return false;">Details</a>
			
			<form method="post" action="DeleteProductServlet">
			<input type="hidden" name="name3" value="Nike">
			<input type="hidden" name="price3" value="89.9">
		
			<input type="submit" class="db" value="DeleteFromCart">
			</form>
			
		</div>
		<div id="shoe2">
			<a href="aj.html"><img src="images/shoes-2.png"></a>
			<form method="post" action="AddProductServlet">
			<label>Adidas-1<input type="hidden" name="name3" value="adidas-1"></label><br/>
			<input type="hidden" name="price3" value="79.9"><br/>
		
			<input type="submit" class="ab" value="AddtoCart">
			</form>
			<a class="s1" href="json/shoe2.json" onclick="grabShoe(this.href); return false;">Details</a>
			
			<form method="post" action="DeleteProductServlet">
			<input type="hidden" name="name3" value="adidas-1">
			<input type="hidden" name="price3" value="79.9">
		
			<input type="submit" class="db" value="DeleteFromCart">
			</form>
			
		</div>

		<div id="shoe3">
			<a href="aj.html"><img src="images/shoes-3.png"></a>
			<form method="post" action="AddProductServlet">
			<label>Adidas-2<input type="hidden" name="name3" value="adidas-2"></label><br/>
			<input type="hidden" name="price3" value="69.9"><br/>
		
			<input type="submit" class="ab" value="AddtoCart">
			</form>
			<a class="s1" href="json/shoe3.json" onclick="grabShoe(this.href); return false;">Details</a>
			
			<form method="post" action="DeleteProductServlet">
			<input type="hidden" name="name3" value="adidas-2">
			<input type="hidden" name="price3" value="69.9">
		
			<input type="submit" class="db" value="DeleteFromCart">
			</form>
			
			
			
		</div>
		
		<div id="shoe4">
			<a href="aj.html"><img src="images/shoes-4.png"></a>
			
			<form method="post" action="AddProductServlet">
			<label>Adidas-3<input type="hidden" name="name3" value="adidas-3"></label><br/>
			<input type="hidden" name="price3" value="99.9"><br/>
		
			<input type="submit" class="ab" value="AddtoCart">
			</form>
			<a class="s1" href="json/shoe4.json" onclick="grabShoe(this.href); return false;">Details</a>
			
			<form method="post" action="DeleteProductServlet">
			<input type="hidden" name="name3" value="adidas-3">
			<input type="hidden" name="price3" value="99.9">
		
			<input type="submit" class="db" value="DeleteFromCart">
			</form>
			
		</div>
		
		<div id="details"></div>
	</div>
	
	
	<div id="sc">
		Shopping Cart:
		<br>
		<c:forEach items="${sessionScope.cart}" var="product">
		<c:out value="${product.name}"/>
		<c:out value="${product.price}"/>
		<br/>
		</c:forEach>
		
		
	</div>
</body>
</html>