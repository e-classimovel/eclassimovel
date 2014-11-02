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

    String idMovel = "", qtdQuartos = "", tamanho = "", valor = "", areaUtil = "", vagas = "", googleMaps = "", permuta = "", descricao = "", tipoImovel = "", endereco = "";
    String complemento = "", numero = "", cep = "", rua = "", bairro = "",  cidade = "", uf = "";

    
    if (session.getAttribute("possuiImovel") != null && session.getAttribute("possuiImovel") != "null" && session.getAttribute("possuiImovel") != "0") {
        idMovel =  session.getAttribute("possuiImovel").toString();

        String query = new String("SELECT * FROM Tb_Imovel imovel "
                                    + "LEFT JOIN Tb_Endereco endereco ON endereco.cep = imovel.cep "
                                + "WHERE id = %s");
        query = String.format(query, idMovel);

        ResultSet result = statement.executeQuery(query);

        if (result.first()){
            qtdQuartos = result.getString("qtdQuartos");
            tamanho = result.getString("tamanho");
            valor = result.getString("valor");
            areaUtil = result.getString("area_util");
            vagas = result.getString("qtdVagas");
            googleMaps = result.getInt("mostrar_gmaps") == 1 ? "checked" : "";
            permuta = result.getInt("permuta") == 1 ? "checked" : "";
            descricao = result.getString("descricao");
            tipoImovel = result.getString("idTipoImovel");
            complemento = result.getString("complemento");
            numero = result.getString("numero"); 
            cep = result.getString("cep");
            rua = result.getString("rua");
            bairro = result.getString("bairro");
            cidade = result.getString("cidade");
            uf = result.getString("uf");
        }
    }
 %>

 
 
 
 
 
 
 