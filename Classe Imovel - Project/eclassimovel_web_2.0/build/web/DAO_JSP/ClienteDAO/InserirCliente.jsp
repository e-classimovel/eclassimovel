<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/DAO_JSP/conexao.jsp" %>
<%
String cliente_nome = "";
    String cliente_sobrenome = "";
    String cliente_cpf = "";
    String cliente_email = "";
    String cliente_login = "";
    String cliente_senha = "";
    String cliente_dtNascimento = "";
    String cliente_dtCadastro = "";
    String cliente_dtAlteracao = "";

if(request.getParameter("cod")!=null ) {
    
             String sql = "insert into Tb_Cliente(login,senha,dataNascimento,cpf,nome,email,dtInclusao,dtAlteracao) VALUES ('"+request.getParameter("cliente_login")+"','"+request.getParameter("cliente_senha")+"','"+request.getParameter("cliente_dataNascimento")+"','"+request.getParameter("cliente_cpf")+"','"+request.getParameter("cliente_nome")+"','"+request.getParameter("cliente_email")+"','"+request.getParameter("cliente_dtInclusao")+"')";
             PreparedStatement st = connection.prepareStatement(sql);
             st.executeUpdate();
             String site = new String("/PAGINAS/cadastro_cliente.jsp");
             response.setStatus(response.SC_MOVED_TEMPORARILY);
             response.setHeader("Location", site); 
             statement.close();
                     
             
}
 %>
