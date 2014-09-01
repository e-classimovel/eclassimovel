<%-- 
    Document   : InserirImovel
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
String imovel_endereco = request.getParameter("imovel_endereco");
String imovel_numero = request.getParameter("imovel_numero");
String imovel_cep = request.getParameter("imovel_cep");
String imovel_complemento = request.getParameter("imovel_complemento"); 
String imovel_qtdQuartos = request.getParameter("imovel_qtdQuartos");
String imovel_tamanho = request.getParameter("imovel_tamanho");
String imovel_valor = request.getParameter("imovel_valor");
String imovel_descricao = request.getParameter("imovel_descricao");

String sqlQuery = "INSERT ...";

PreparedStatement st = connection.prepareStatement(sqlQuery);
st.executeUpdate();
String redirectPage = new String("/eclassimovel_web/PAGINAS/home.jsp");
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", redirectPage); 
statement.close();
%>
