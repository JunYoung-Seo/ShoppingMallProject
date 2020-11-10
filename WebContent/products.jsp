<%@ page contentType ="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<html>
<head>
<!-- https://getbootstrap.com/docs/4.3/getting-started/introduction/ -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

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
		//JavaBeans에 상품관련 정보를 가져오는 것을 listOfProducts에 저장
		ArrayList<Product> listOfProducts = productDAO.getAllProducts();
	%>

	<div class="container">
		<div class="row" align="center">	
			<%
				for(int i=0; i <listOfProducts.size(); i++){
					//for문을 통하여 listOfProducts에 가져온 값들을 product에 저장
					Product product = listOfProducts.get(i);
			%>
				<div class="col-md-4">
					<h3><%=product.getPname() %></h3>
					<p><%=product.getDescription()%>
					<p><%=product.getUnitPrice()+"원" %>	
					<p><a href="./product.jsp?id=<%=product.getProductId() %>" class="btn btn-secondary" role="button">상세 정보</a>
				</div>	
			<%
				}
			%>
		</div>
		<hr>
	</div>
	<%@ include file = "footer.jsp" %>

</body>
</html>



