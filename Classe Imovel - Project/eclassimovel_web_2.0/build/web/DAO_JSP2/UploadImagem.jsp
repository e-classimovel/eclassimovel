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

<%
    String image = request.getParameter("imagem");
    String idImovel = request.getParameter("idMovel");
    
    byte[] btImage = image.getBytes();

    String query = "INSERT INTO Tb_Imagem_Imovel (idImovel,imagem)  VALUES ('%s', '%s')";

    query =  String.format(
                    query,  
                    idImovel, 
                    btImage
                );

    PreparedStatement st = connection.prepareStatement(query);
    st.executeUpdate(query);

    String result = "Imagem inserida com sucesso";
 %>
 
 <%= result  %>