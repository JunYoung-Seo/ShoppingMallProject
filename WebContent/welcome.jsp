<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>

<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./welcom.jsp">Home</a>
			</div>
		</div>
	</nav>
	
	<%!
	String greeting = "Welcom to Web Shopping Mall";
	String tagline = "Welcom to Web Market";
	%>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>

	<div class="container">
		<div class="text-center">
			<h3 class="display-3">
				<%=tagline%>
			</h3>
		</div>
		<hr>
	</div>
	
	<footer class="contaier">
		<p>&copy; WebMarket</p>
	</footer>
</body>










</html>