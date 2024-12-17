<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hotel Sorna - Reservas</title>
    <link rel="icon" href="imagens/favicon.png">
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <div align="center">
        <h1>Hotel Sorna - Reservas</h1>
        
        <!-- Banner com 3 imagens do hotel -->
        <div class="banner">
            <img style='width:350px;height:250px;' src='imagens/hotel1.jpg'>
            <img style='width:350px;height:250px;' src='imagens/hotel2.jpg'>
            <img style='width:350px;height:250px;' src='imagens/hotel3.jpg'>
        </div>
        
        <br>
        <form method="POST" action="reserva.jsp">
            <label>Check In:</label><br>
            <input type="date" name="checkin" required><br>
            
            <label>Check Out:</label><br>
            <input type="date" name="checkout" required><br>
            
            <label>Contato:</label><br>
            <input type="email" name="contato" required><br>
            
            <label>Tipo de quarto:</label><br>
            <select name="tipo" required>
                <option value="Simples">Quarto Simples</option>
                <option value="Deluxes">Quarto Deluxe</option>
                <option value="Executivo">Quarto Executivo</option>
                <option value="Master">Suite Master</option>
                <option value="Junior">Suite Junior</option>
                <option value="Presidencial">Suite Presidencial</option>
                <option value="Ral">Suite Real</option>
                
            </select>
            <br><br>
            <input type="submit" value="Reservar">
            <input type="reset" value="Cancelar">
        </form>
    </div>
</body>
</html>