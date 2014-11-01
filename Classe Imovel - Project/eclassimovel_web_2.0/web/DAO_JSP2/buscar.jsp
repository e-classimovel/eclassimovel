<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>



<%@ include file="/DAO_JSP2/conexao.jsp" %>
<%@ include file="/QUERYS/BuscarImovel.jsp" %>

<%
    ResultSet result;

    String sqlError = "";
    String idFinalidade = request.getParameter("finalidade");
    String idTipoImovel = request.getParameter("tipoimovel");
    String uf = request.getParameter("uf");
    String cidade = request.getParameter("cidade");
    String bairro = request.getParameter("bairro");
    String de = request.getParameter("de");
    String ate = request.getParameter("ate");
    
    String query = GetQuery(idFinalidade, idTipoImovel, de, ate, uf, cidade, bairro);
     
    result = statement.executeQuery(query);
 %>
 
 
<% while (result.next()) { %>
    <% 
        String imagem = "";

        if (result.getBlob("imagem") != null)
        {
            Blob blob = result.getBlob("imagem");
            int blobLength = (int)blob.length();  
            byte[] blobAsBytes = blob.getBytes(1, blobLength);
            imagem = new String(blobAsBytes).replace(' ', '+');
        }
    %> 
    <div class="col-sm-4">
        <div class="panel panel-default">
            <div class="panel-body">
                <img src="<%=imagem%>" class="img-rounded" />
            </div>
                <div class="panel-footer"><label><a href="/eclassimovel_web/PAGINAS/dados_imovel.jsp?idImovel=<%=result.getString("idImovelCorreto")%>" ><%= result.getString("descricao")%></a></label></div>
        </div>
    </div>             
<%}%>
 
 
 
 
 