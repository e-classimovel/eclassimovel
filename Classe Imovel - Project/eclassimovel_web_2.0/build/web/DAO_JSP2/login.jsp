<%-- 
    Document   : login
    Created on : 25/08/2014, 20:54:03
    Author     : guilhermediasbautista
--%>
<%@ include file="/DAO_JSP2/conexao.jsp" %>
<%@ include file="/QUERYS/SelecionarCliente.jsp" %>

<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    String query = GetQuery(email, senha);
    
    ResultSet result  = statement.executeQuery(query);
    
    if (result.first()) {
        session.setAttribute( "user", result.getString("email"));
        session.setAttribute( "id", result.getInt("id"));
        session.setAttribute( "nome_user", result.getString("nome"));
        session.setAttribute( "possuiImovel", result.getString("idMovel") == "null" ? "" : result.getString("idMovel"));
        String redirectPage = new String("/eclassimovel_web/PAGINAS/home.jsp");
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", redirectPage);
    }
    else
    {
        String redirectPage = new String("/eclassimovel_web/PAGINAS/home.jsp");
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", redirectPage);        
    }
%>

<%= email %>
<%= senha  %>

