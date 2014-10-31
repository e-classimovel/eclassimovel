<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%!
    public String GetQuery(String idFinalidade, String idTipoImovel, String de, String ate)
    {
         String query = "INSERT INTO Tb_Imovel (nome,idTipoImovel, tamanho, valor, qtdQuartos, qtdVagas, area_util, descricao, permuta, mostrar_gmaps, especificacao_imovel, dtInclusao, idCliente)"
                    + " VALUES ('%s','%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', %s); SELECT LAST_INSERT_ID() as id;";

        query = String.format(query, idTipoImovel, de, ate);

        return query;
    }
 %>
 
 
 
 
 
 
 
 
 
 
 
 