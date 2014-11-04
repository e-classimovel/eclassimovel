<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="/DAO_JSP2/conexao.jsp" %>
<%@ include file="/QUERYS/SelecionarCliente.jsp" %>
<%
    //Salvar no Banco


    String clienteNome = request.getParameter("cliente_nome");
    String clienteSobreNome = request.getParameter("cliente_sobrenome");      
    String clienteCpf = request.getParameter("cliente_cpf");
    String clienteRg = request.getParameter("cliente_rg");
    String clienteEmail = request.getParameter("cliente_email");
    String clienteSenha = request.getParameter("cliente_senha");
    String clienteDtNascimento = request.getParameter("cliente_dtNascimento");
    String clienteDtInclusao = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
    
    
    String sqlQuery = "INSERT INTO Tb_Cliente (nome,sobrenome,senha,dataNascimento,cpf,rg,email,dtInclusao) VALUES ('%s','%s','%s','%s','%s','%s','%s', '%s')";

    if (session.getAttribute("id") != null)  
        sqlQuery = "UPDATE Tb_Cliente SET nome = '%s', sobrenome = '%s', senha = '%s',dataNascimento = '%s',cpf = '%s',rg = '%s', email = '%s',dtAlteracao = '%s' WHERE id ='" + session.getAttribute("id") + "'";
       
    sqlQuery = String.format(sqlQuery, clienteNome, clienteSobreNome, clienteSenha, clienteDtNascimento, clienteCpf, clienteRg, clienteEmail, clienteDtInclusao);
        
    //Salvar Imagem

    //Part filePart = request.getPart("cliente_imagem");
    
    //filePart.write(String.format("C:\\Users\\gilmar.junior\\Desktop\\Documents\\Teste\\%s.jpg", clienteNome.trim()));
 
    PreparedStatement st = connection.prepareStatement(sqlQuery);
    st.executeUpdate(sqlQuery);

    
    String novaQuery = GetQuery(clienteEmail, clienteSenha);
    ResultSet novoResult  = statement.executeQuery(novaQuery);

    if (novoResult.first())
    {
        session.setAttribute( "user", novoResult.getString("email"));
        session.setAttribute( "id", novoResult.getInt("id"));
        session.setAttribute( "nome_user", novoResult.getString("nome"));
    }

    String redirectPage = new String("/eclassimovel_web/PAGINAS/home.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", redirectPage); 
    statement.close();

 %>
 
 
 
 
<%=sqlQuery%>

 
 
 
 
 
 
 