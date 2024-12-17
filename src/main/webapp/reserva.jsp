<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="ligarbd.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hotel Sorna</title>
    <link rel="icon" href="imagens/favicon.png">
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <div align="center">
        <h1>Hotel Sorna</h1>
        
        <%
            //Obter os dados do POST
            String checkin=request.getParameter("checkin");
            String checkout=request.getParameter("checkout");
            String contato=request.getParameter("contato");
            String tipo=request.getParameter("tipo");
            
            String data = "20-05-2024";
            
            out.println(data);
            out.println("<h3>Reserva adicionada</h3>");
            out.println("Checkin:" + checkin + "<br>");
            out.println("Checkout:" + checkout + "<br>");
            out.println("Contato:" + contato + "<br>");
            out.println("Quarto:" + tipo);
            
            //Adicionar botões
            out.println("<br><br>");
            out.println("<input type='button' value='Voltar' onclick='window.location.href=\"index.jsp\"'>");
            out.println("<input type='button' value='Listagem de reservas'>");
            
            try {
    			Connection cn=ligacaomysql.criarligacao();
    			Statement st=cn.createStatement();
    			st.executeUpdate("insert into reservas (checkin,checkout,contato,quarto) " +
    			"values('"+checkin+"', '"+checkout+"', '"+contato+"', '"+tipo+"')");		
    			out.println("<br><h1>Reserva efetuada.</h1>");
    			cn.close();
    		}
    		catch(SQLException e) {
    			out.println("<br><h1>Erro ao registar a reserva.</h1>");
    			//out.println(e.getMessage());  Podemos fazer esta linha sempre que precisarmos identificar um erro no código
    		}
        %>
        
        <a href="index.jsp">
        <input type="button" value="Voltar">
        </a>
        
        <a href="listagem.jsp">
        <input type="button" value="Listagem de reservas">
        </a>
    </div>
</body>
</html>