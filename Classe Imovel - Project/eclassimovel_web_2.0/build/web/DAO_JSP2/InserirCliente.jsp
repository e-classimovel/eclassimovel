<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="/DAO_JSP2/conexao.jsp" %>
<%
    //Salvar no Banco

    String clienteId = request.getParameter("id");  
    String clienteNome = request.getParameter("cliente_nome");
    String clienteSobreNome = request.getParameter("cliente_sobrenome");      
    String clienteCpf = request.getParameter("cliente_cpf");
    String clienteRg = request.getParameter("cliente_rg");
    String clienteEmail = request.getParameter("cliente_email");
    String clienteSenha = request.getParameter("cliente_senha");
    String clienteDtNascimento = request.getParameter("cliente_dtNascimento");
    String clienteDtInclusao = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
    
    String sqlQuery = "INSERT INTO Tb_Cliente (nome,sobrenome,senha,dataNascimento,cpf,rg,email,dtInclusao) VALUES ('%s','%s','%s','%s','%s','%s','%s')";
    
    
        
    sqlQuery = String.format(sqlQuery, clienteNome, clienteSobreNome, clienteSenha, clienteDtNascimento, clienteCpf, clienteRg, clienteEmail, clienteDtInclusao);
        
    //Salvar Imagem

    //Part filePart = request.getPart("cliente_imagem");
    
    //filePart.write(String.format("C:\\Users\\gilmar.junior\\Desktop\\Documents\\Teste\\%s.jpg", clienteNome.trim()));
    
    PreparedStatement st = connection.prepareStatement(sqlQuery);
    st.executeUpdate(sqlQuery);
    String redirectPage = new String("/eclassimovel_web/PAGINAS/home.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", redirectPage); 
    statement.close();

 %>
 
 
 
 
 
 
 
 
 
 
 
 