    <%-- 
    Document   : InserirImovel
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="/DAO_JSP2/conexao.jsp" %>
<%@ include file="/QUERYS/SelecionarCliente.jsp" %>
<%
    String nome = request.getParameter("nome");
    String endereco = request.getParameter("imovel_endereco");
    String idCliente = session.getAttribute("id").toString();
    String idTipoImovel = request.getParameter("imovel_tipo_imovel");
    String tamanho = request.getParameter("imovel_tamanho");
    String valor = request.getParameter("imovel_valor"); 
    String qtdQuartos = request.getParameter("imovel_qtdQuartos");//
    String qtdVagas = request.getParameter("imovel_vagas_garagem");
    String areaUtil = request.getParameter("imovel_area_util");
    String descricao = request.getParameter("imovel_descricao");
    String dtinclusao = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
    
    String permuta = request.getParameter("imovel_permuta") == null ? "0" : "1";
    String mostrarGmaps = request.getParameter("imovel_mostrar_mapa") == null ? "0" : "1";
    
    String especificaoImovel = request.getParameter("imovel_especificacao");

         
    String sqlQuery = "INSERT INTO Tb_Imovel (nome,idTipoImovel, tamanho, valor, qtdQuartos, qtdVagas, area_util, descricao, permuta, mostrar_gmaps, especificacao_imovel, dtInclusao, idCliente)"
                    + " VALUES ('%s','%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', %s);";

    sqlQuery =  String.format(
                    sqlQuery,
                    nome,
                    idTipoImovel, 
                    tamanho, 
                    valor, 
                    qtdQuartos, 
                    qtdVagas,
                    areaUtil,
                    descricao,
                    permuta,
                    mostrarGmaps,
                    especificaoImovel,
                    dtinclusao,
                    idCliente
                );

    PreparedStatement st = connection.prepareStatement(sqlQuery);
    st.executeUpdate(sqlQuery);

    String redirectPage = new String("/eclassimovel_web/PAGINAS/home.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", redirectPage); 
    statement.close();
%>

<%=sqlQuery%>
