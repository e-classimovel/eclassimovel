<%-- 
Document   : excluir_cliente
Created on : Oct 23, 2014, 11:24:20 PM
Author     : guilherme/gilmar
--%>
<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="/DAO_JSP2/conexao.jsp" %>
<%
    //Excluir imóvel do cliente e o cliente do banco de dados
    String cliente =session.getAttribute("id").toString();

    String sqlQuery1 = "DELETE FROM Tb_Imagem_Imovel WHERE idImovel IN (SELECT id FROM Tb_Imovel WHERE idCliente ="+cliente.toString()+");";

    PreparedStatement st = connection.prepareStatement(sqlQuery1);
    st.executeUpdate(sqlQuery1);


    String sqlQuery2 = "DELETE FROM Tb_Imovel WHERE idCliente =  "+cliente.toString();
    
    st = connection.prepareStatement(sqlQuery2);        
    st.executeUpdate(sqlQuery2);

    String novaQuery =  "SELECT "
                            + "cliente.*,"
                            + "imovel.id as idMovel "
                         + "FROM "
                            + "Tb_Cliente cliente "
                            + "LEFT JOIN Tb_Imovel imovel ON (cliente.id = imovel.idCliente) "
                        + "WHERE "
                            + "cliente.id = '" +  cliente + "'";

    ResultSet novoResult  = statement.executeQuery(novaQuery);

    if (novoResult.first())
         session.setAttribute( "possuiImovel", novoResult.getString("idMovel") == "null" ? "" : novoResult.getString("idMovel"));

    String redirectPage = new String("/eclassimovel_web/PAGINAS/home.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", redirectPage); 
    statement.close();

%>
