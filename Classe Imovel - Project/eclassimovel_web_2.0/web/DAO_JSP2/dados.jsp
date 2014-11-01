<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="/DAO_JSP2/conexao.jsp" %>
<%
    String especificacao = "", nome="", qtdQuartos = "", tamanho = "", valor = "", areaUtil = "", vagas = "", googleMaps = "", permuta = "", descricao = "", tipoImovel = "", endereco = "";
    String complemento = "", numero = "", cep = "", rua = "", bairro = "",  cidade = "", uf = "";

    String[] lstImagens = new String[4];

    if (session.getAttribute("possuiImovel") != null && session.getAttribute("possuiImovel") != "null" && session.getAttribute("possuiImovel") != "0") {
        String idMovel =  request.getParameter("idImovel");

        String query = new String("SELECT * FROM Tb_Imovel imovel "
                                         + "LEFT JOIN Tb_Endereco endereco ON endereco.cep = imovel.cep " +
                                    "WHERE id = '%s'");
        query = String.format(query, idMovel);

        ResultSet result = statement.executeQuery(query);

        if (result.first()){
            nome = result.getString("nome");
            qtdQuartos = result.getString("qtdQuartos");
            tamanho = result.getString("tamanho");
            valor = result.getString("valor");
            areaUtil = result.getString("area_util");
            vagas = result.getString("qtdVagas");
            googleMaps = result.getString("mostrar_gmaps") == "1" ? "checked" : "";
            permuta = result.getString("permuta") == "1" ? "checked" : "";
            descricao = result.getString("descricao");
            tipoImovel = result.getString("idTipoImovel");
            especificacao=result.getString("especificacao_imovel");

            complemento = result.getString("complemento");
            numero = result.getString("numero");
            cep = result.getString("cep");
            rua = result.getString("rua");
            bairro = result.getString("bairro");
            cidade = result.getString("cidade");
            uf = result.getString("uf");
        }

        query = new String("SELECT * FROM Tb_Imagem_Imovel WHERE idImovel = '%s'");
        query = String.format(query, idMovel);

        result = statement.executeQuery(query);
        
        int position = 0;

        if (result != null)
        {
            while (result.next())
            {
                Blob blob = result.getBlob("imagem");
                int blobLength = (int)blob.length();  
                byte[] blobAsBytes = blob.getBytes(1, blobLength);
                String imagem = new String(blobAsBytes).replace(' ', '+');

                lstImagens[position] = imagem;     
                position++;
            }
        }

        
        
    }
%>