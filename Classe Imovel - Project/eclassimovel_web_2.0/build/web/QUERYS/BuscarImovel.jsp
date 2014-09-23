<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%!
    public String GetQuery(String finalidade, String tipoImoveis, String de, String ate, String UF, String cidade, String bairro)
    {
        String query = "SELECT "
                        + "cliente.*,"
                        + "imovel.id as idMovel "
                     + "FROM "
                        + "Tb_Cliente cliente "
                        + "LEFT JOIN Tb_Imovel imovel ON (cliente.id = imovel.idCliente) "
                    + "WHERE "
                        + "cliente.email = '" + email + "'"
                        + " AND senha = '" + senha + "'";
        return query;
    }
 %>
 
 
 
 
 
 
 
 
 
 
 
 