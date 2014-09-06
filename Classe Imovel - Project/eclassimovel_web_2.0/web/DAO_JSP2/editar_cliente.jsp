<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="/DAO_JSP2/conexao.jsp" %>
<%
    String id= "", login = "", nome = "", dtNascimento = "", cpf = "", email = "", senha = "";
    
    if (session.getAttribute("id") != null) {
        int idcliente =  Integer.parseInt(session.getAttribute("id").toString());

        String query = new String("SELECT * FROM Tb_Cliente WHERE id = %s");
        query = String.format(query, idcliente);

        ResultSet result = statement.executeQuery(query);

        if (result.first()){
            id = result.getString("id");
            login = result.getString("login");
            nome = result.getString("nome");
            dtNascimento = result.getString("dataNascimento");
            cpf = result.getString("cpf");
            email = result.getString("email");
            senha = result.getString("senha");
        }
    }
 %>
 
 
 
 
 
 
 
 
 
 
 
 