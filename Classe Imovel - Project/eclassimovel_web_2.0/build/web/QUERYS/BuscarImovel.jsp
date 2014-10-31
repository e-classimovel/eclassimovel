<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%!
    public String GetQuery(String idFinalidade, String idTipoImovel, String de, String ate)
    {
        String query = "SELECT " +
                            "* " + 
                        "FROM " +
                            "Tb_Imovel " +
                        "WHERE " +
                           
                            "idTipoImovel = %s " +
                        "AND valor BETWEEN %s AND %s ";

        query = String.format(query, idTipoImovel, de, ate);

        return query;
    }
 %>
 
 
 
 
 
 
 
 
 
 
 
 