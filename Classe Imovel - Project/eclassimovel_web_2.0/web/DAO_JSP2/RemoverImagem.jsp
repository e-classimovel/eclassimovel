<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%@ include file="/DAO_JSP2/conexao.jsp" %>

<%
    String id = request.getParameter("id");

    String query = "DELETE FROM Tb_Imagem_Imovel WHERE id = ?";

    PreparedStatement pstmt = connection.prepareStatement(query);

    pstmt.setString(1, id);

    pstmt.executeUpdate();    

    String result = "Imagem removida com sucesso";
 %>
 
 <%= result  %>