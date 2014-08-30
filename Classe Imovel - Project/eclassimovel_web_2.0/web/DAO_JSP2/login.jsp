<%-- 
    Document   : login
    Created on : 25/08/2014, 20:54:03
    Author     : guilhermediasbautista
--%>
<%@ include file="/DAO_JSP2/conexao.jsp" %>
<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String login_form = request.getParameter("login");
    String senha_form = request.getParameter("senha");

    
    rs = statement.executeQuery("SELECT * FROM Tb_Cliente WHERE login ='"+login_form+"' AND senha ='"+senha_form+"'");
    rs.next();
    int qtd = rs.getInt(1);
    if(qtd>0){
        session.setAttribute( "user", rs.getString("usuario_login"));
        session.setAttribute( "id", rs.getInt("usuario_id"));
        session.setAttribute( "nome_user", rs.getString("usuario_nome"));
        String site = new String("boas.jsp");
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", site);
    }
%>
