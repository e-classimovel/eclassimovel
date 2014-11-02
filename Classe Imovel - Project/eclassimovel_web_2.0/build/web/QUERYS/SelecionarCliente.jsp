<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%!

    public String GetQuery(String email, String senha)
    {
        String query = "SELECT "
                        + "cliente.*,"
                        + "imovel.id as idMovel "
                     + "FROM "
                        + "Tb_Cliente cliente "
                        + "LEFT JOIN Tb_Imovel imovel ON (cliente.id = imovel.idCliente) "
                    + "WHERE "
                        + "cliente.email = '" + email + "'"
                        + " AND cliente.senha = '" + senha + "';";
        return query;
    }
 %>
 
 
 
 
 
 
 
 
 
 
 
 