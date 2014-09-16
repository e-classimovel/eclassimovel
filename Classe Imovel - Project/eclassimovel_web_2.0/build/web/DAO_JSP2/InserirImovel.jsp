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

<%
    String endereco = request.getParameter("imovel_endereco");
    String nome = request.getParameter("imovel_numero");
    String idTipoImovel = request.getParameter("tipo_imovel");
    String tamanho = request.getParameter("imovel_tamanho"); 
    String valor = request.getParameter("imovel_valor");
    String qtdQuartos = request.getParameter("imovel_qtdQuartos");
    String qtdVagas = request.getParameter("vagas_garagem");
    String dtInclusao = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
    String area_util = request.getParameter("area_util");
    String descricao = request.getParameter("imovel_descricao");
    String permuta = request.getParameter("permuta") == null ? "0" : "1";
    String mostrar_gmaps = request.getParameter("mostrar_mapa") == null ? "0" : "1";
    String especificao_imovel = request.getParameter("especificacao") ;


    String sqlQuery = "INSERT INTO Tb_Imovel (endereco, nome, idTipoImovel, tamanho, valor, qtdQuartos, qtdVagas, dtInclusao, area_util, descricao, permuta, mostrar_gmaps, especificacao_imovel)"
            + "VALUES ('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')";


    sqlQuery = String.format(
                sqlQuery, 
                endereco, 
                nome, 
                idTipoImovel, 
                tamanho, 
                valor, 
                qtdQuartos, 
                qtdVagas,
                dtInclusao,
                area_util,  
                descricao,
                permuta,
                mostrar_gmaps,
                especificao_imovel
    );          


    PreparedStatement st = connection.prepareStatement(sqlQuery);
    st.executeUpdate();

    String redirectPage = new String("/eclassimovel_web/PAGINAS/home.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", redirectPage); 
    statement.close();
%>

<%= sqlQuery %>
