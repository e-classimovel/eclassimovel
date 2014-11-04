    <%-- 
    Document   : InserirImovel
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
    <%@page import="java.util.Calendar"%>
<%@page import="java.sql.PreparedStatement"%>

<%@ include file="/DAO_JSP2/conexao.jsp" %>
<%@ include file="/QUERYS/SelecionarCliente.jsp" %>
<%
    String nome = request.getParameter("nome");
    String endereco = request.getParameter("imovel_endereco");
    String idCliente = session.getAttribute("id").toString();
    String idTipoImovel = request.getParameter("imovel_tipo_imovel");
    String tamanho = request.getParameter("imovel_tamanho");
    String valor = request.getParameter("imovel_valor"); 
    String qtdQuartos =  idTipoImovel == "2" ? "0" : request.getParameter("imovel_qtdQuartos");
    String qtdVagas = request.getParameter("imovel_vagas_garagem");
    String areaUtil = request.getParameter("imovel_area_util");
    String descricao = request.getParameter("imovel_descricao");
    String dtinclusao = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
    String permuta = request.getParameter("imovel_permuta") == null ? "0" : "1";
    String mostrarGmaps = request.getParameter("imovel_mostrar_mapa") == null ? "0" : "1";
    String especificaoImovel = request.getParameter("imovel_especificacao");
    String finalidade = request.getParameter("imovel_finalidade");

    String rua = request.getParameter("imovel_endereco");
    String bairro = new String(request.getParameter("imovel_bairro").toString().getBytes("ISO-8859-1"), "UTF-8");
    String cidade = new String(request.getParameter("imovel_cidade").toString().getBytes("ISO-8859-1"), "UTF-8");
    String uf = request.getParameter("imovel_uf");
    String cep = request.getParameter("imovel_cep");
    String complemento = request.getParameter("imovel_complemento");
    String numero = request.getParameter("imovel_numero");

    cep = cep != null ? cep.replace("-", "") : "";

    String id_cliente = session.getAttribute("id").toString();

    String query_busca = "SELECT id FROM Tb_Imovel WHERE idCliente = %s;";
    query_busca = String.format(query_busca,id_cliente);

    ResultSet resultado = statement.executeQuery(query_busca);

    String id_imovel = " ";
    String sqlQuery = " ";

    if(resultado.first()){
        String id = resultado.getString("id");

        sqlQuery = "UPDATE Tb_Imovel SET idTipoImovel = '%s', tamanho = '%s', valor = '%s', qtdQuartos = '%s', qtdVagas = '%s', area_util = '%s', descricao = '%s', permuta = '%s', mostrar_gmaps = '%s', especificacao_imovel = '%s', idCliente = '%s', numero = '%s', complemento = '%s', cep = '%s', idFinalidade = '%s' WHERE id = %s ;";
        
        if (Integer.parseInt(idTipoImovel) == 2)
            qtdQuartos = "0";

        sqlQuery =  String.format(
                        sqlQuery,                        
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
                        idCliente,
                        numero,
                        complemento,
                        cep,
                        finalidade,
                        id
                    );

        PreparedStatement pst2 = connection.prepareStatement(sqlQuery);
        pst2.executeUpdate(sqlQuery);

        sqlQuery = "SELECT cep FROM Tb_Endereco WHERE cep =" + cep;

        ResultSet result = statement.executeQuery(sqlQuery); 
        if(!result.first()){
           
            sqlQuery = "INSERT INTO Tb_Endereco (cep, rua, bairro, cidade, uf) VALUES ('%s', '%s', '%s', '%s', '%s')";

            sqlQuery = String.format(sqlQuery, cep, rua, bairro, cidade, uf);

            PreparedStatement st = connection.prepareStatement(sqlQuery);
            st.executeUpdate(sqlQuery); 
        }

    } 
    else
    {

        sqlQuery = "INSERT INTO Tb_Imovel (idTipoImovel, tamanho, valor, qtdQuartos, qtdVagas, area_util, descricao, permuta, mostrar_gmaps, especificacao_imovel, dtInclusao, idCliente, numero, complemento, cep, idFinalidade)"
                    + " VALUES ('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')";

        
        if (Integer.parseInt(idTipoImovel) == 2)
            qtdQuartos = "0";

        sqlQuery =  String.format(
                        sqlQuery,
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
                        idCliente,
                        numero,
                        complemento,
                        cep,
                        finalidade
                    );
    

        PreparedStatement st = connection.prepareStatement(sqlQuery);
        st.executeUpdate(sqlQuery);

        sqlQuery = "SELECT cep FROM Tb_Endereco WHERE cep =" + cep;

        ResultSet result = statement.executeQuery(sqlQuery); 
        if(!result.first()){
           
            sqlQuery = "INSERT INTO Tb_Endereco (cep, rua, bairro, cidade, uf) VALUES ('%s', '%s', '%s', '%s', '%s')";

            sqlQuery = String.format(sqlQuery, cep, rua, bairro, cidade, uf);

            st = connection.prepareStatement(sqlQuery);
            st.executeUpdate(sqlQuery);
        }        
    }

    String novaQuery =  "SELECT "
                            + "cliente.*,"
                            + "imovel.id as idMovel "
                         + "FROM "
                            + "Tb_Cliente cliente "
                            + "LEFT JOIN Tb_Imovel imovel ON (cliente.id = imovel.idCliente) "
                        + "WHERE "
                            + "cliente.id = '" +  session.getAttribute("id") + "'";

    ResultSet novoResult  = statement.executeQuery(novaQuery);

    if (novoResult.first())
         session.setAttribute( "possuiImovel", novoResult.getString("idMovel") == "null" ? "" : novoResult.getString("idMovel"));

    String redirectPage = new String("/eclassimovel_web/PAGINAS/home.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", redirectPage); 
    statement.close();
%>
