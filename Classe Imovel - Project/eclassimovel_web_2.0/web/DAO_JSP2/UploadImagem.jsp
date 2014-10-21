<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%@ include file="/DAO_JSP2/conexao.jsp" %>

<%
    String image = request.getParameter("imagem");
    String idImovel = request.getParameter("idMovel");
    
    byte[] btImage = image.getBytes();

    String query = "INSERT INTO Tb_Imagem_Imovel (idImovel,imagem) VALUES (?, ?)";

    PreparedStatement pstmt = connection.prepareStatement(query);

    pstmt.setString(1, idImovel);
    pstmt.setBytes(2, btImage);

    pstmt.executeUpdate();    

    String result = "Imagem inserida com sucesso";
 %>
 
 <%= result  %>