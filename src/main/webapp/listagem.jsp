<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="ligarbd.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listagem de reservas</title>
<link rel="icon" href="imagens/fav.png">
<link rel="stylesheet" href="css/estilos.css">
</head>
<body>
	<h1>Listagem de reservas</h1>
	<table class="reservas">
		<tr>
			<th>Id Reserva</th>
			<th>Check In</th>
			<th>Check Out</th>
			<th>Contato</th>
			<th>Tipo de Quarto</th>
		</tr>
		
		<%
			Connection cn=ligacaomysql.criarligacao();
			Statement st=cn.createStatement();
			ResultSet rs=st.executeQuery("select * from reservas");
			while(rs.next()){
				out.println("<tr><td>"+rs.getString(1)+"</td>");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");
				out.println("<td>"+rs.getString(4)+"</td>");
				out.println("<td>"+rs.getString(5)+"</td></tr>");
			}
		%>
	</table>
	<br><br>
	<p style="text-align:center">
		<a href="index.jsp">Voltar</a>
		
	
	</p>
</body>
</html>