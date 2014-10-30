<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.PreparedStatement"%>


<%@ include file="/DAO_JSP2/conexao.jsp" %>
<%@ include file="/QUERYS/BuscarImovel.jsp" %>

<%
    String idFinalidade = request.getParameter("finalidade");
    String idTipoImovel = request.getParameter("tipoimovel");
    String de = request.getParameter("de");
    String ate = request.getParameter("ate");
    
    String query = GetQuery(idFinalidade, idTipoImovel, de, ate);

     
    ResultSet result = statement.executeQuery(query);

 %>
 
<% while (result.next()) { %>
    <div class="col-sm-4">
        <div class="panel panel-default">
            <div class="panel-body">
                <img src='' class="img-rounded" />
            </div>
            <div class="panel-footer"><label><%= result.getString("descricao")%></label></div>
        </div>
    </div>             
<%}%>
 
 
 
 
 