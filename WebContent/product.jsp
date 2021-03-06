<%@page import="dao.ProductRepository"%>
<%@ page contentType ="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<html>
<head>
<!-- https://getbootstrap.com/docs/4.3/getting-started/introduction/ -->
<link rel="stylesheet"  href="./resources/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Welcome</title>
</head>

<body>
	<%@ include file = "menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%
		//상품의 id값을 기반으로 상품정보를가져오기|상품정보 dao의저장, dao의값중 id값을 product에 저장
		String id = request.getParameter("id");
		//Product product = productDAO.getProductById(id);
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
	%>


	<div class="container">
		<div class="row">	
			<div class="col-md-5">
				<img src="./resources/images/<%=product.getFilename() %>" style="width:200">
				
			</div>
			<div class="col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p><b>상품 코드 : </b><span class="badge badge-danger"><%=product.getProductId() %></span>
				<p><b>제조사</b> : <%=product.getManufacturer() %>
				<p><b>분류</b> : <%=product.getCategory() %>
				<p><b>재고 수</b> : <%=product.getUnitsInStock() %>
				<h4><%=product.getUnitPrice()%>원</h4>
				<p><a href="#" class="btn btn-info">상품 주문</a> <a href="./products.jsp" class="btn btn-secondary">상품 목록</a>
			</div>
		</div>
		<hr>
	</div>
	<%@ include file = "footer.jsp" %>

</body>
</html>



