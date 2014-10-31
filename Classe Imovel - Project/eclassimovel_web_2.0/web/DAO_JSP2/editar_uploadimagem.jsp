<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.PreparedStatement"%>

<%
    ResultSet result = null;
    String query = "";

    if (session.getAttribute("possuiImovel") != null && session.getAttribute("possuiImovel") != "null" && session.getAttribute("possuiImovel") != "0") {
        idMovel =  session.getAttribute("possuiImovel").toString();

        query = new String("SELECT * FROM Tb_Imagem_Imovel WHERE idImovel = %s");
        query = String.format(query, idMovel);

        result = statement.executeQuery(query);
    }
 %>
 
<% if (result != null) { while (result.next()) { %>
    <% 
        Blob blob = result.getBlob("imagem");
        int blobLength = (int)blob.length();  
        byte[] blobAsBytes = blob.getBytes(1, blobLength);
        String imagem = new String(blobAsBytes).replace(' ', '+');
    %> 
    <div class="box-img">
        <a href="#" class="btn-remove"  data-id="<%= result.getString("id") %>">Remover</a>
        <img class="img-box" width="300" src="<%=imagem%>">
    </div>             
<%}}%>
 