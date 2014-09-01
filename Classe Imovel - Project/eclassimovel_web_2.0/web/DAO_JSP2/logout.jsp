<%-- 
    Document   : login
    Created on : 25/08/2014, 20:54:03
    Author     : guilhermediasbautista
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    session.removeAttribute("user");
    session.removeAttribute("nome_user");
    session.removeAttribute("id");

    String site = new String("/eclassimovel_web/PAGINAS/home.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", site);
%>
