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
    String finalidade = "", tamanho = "", valor = "", areaUtil = "", vagas = "", googleMaps = "", permuta = "", descricao = "", tipoImovel = "", endereco = "";
  

    finalidade =  request.getParameter("finalidade");
 %>
 
 <%= finalidade %>

 
 
 
 
 
 
 