<%-- 
    Document   : excluir_cliente
    Created on : Oct 23, 2014, 11:24:20 PM
    Author     : guilherme/gilmar
--%>
<html>
    <%@page import="java.io.InputStream"%>
    <%@page import="java.text.SimpleDateFormat"%>
    <%@page import="java.util.Calendar"%>
    <%@page import="java.lang.String"%>
    <%@page import="java.sql.PreparedStatement"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%@ include file="/DAO_JSP2/conexao.jsp" %>

    <%
        //Excluir imóvel do cliente e o cliente do banco de dados

        if request.getAttribute("cliente")
            String cliente = request.getAttribute("cliente");
        
        
    %>

</html>