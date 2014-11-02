<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>

<%!
    
    public String GetQuery(String idFinalidade, String idTipoImovel, String de, String ate, String uf, String cidade, String bairro) 
    {
        String query =  "SELECT " +
                            "imovel.id as idImovelCorreto, " +
                            "imovel.*, " +
                            "endereco.*, " +
                            "imagemImovel.*" + 
                        "FROM " +
                            "Tb_Imovel imovel " +
                            "LEFT JOIN (SELECT * FROM Tb_Imagem_Imovel img LIMIT 1) imagemImovel ON (imagemImovel.idImovel = imovel.id) " +
                            "LEFT JOIN Tb_Endereco endereco ON (endereco.cep = imovel.cep) " +
                        "WHERE " +
                            "imovel.idTipoImovel =" + idTipoImovel + " ";
                                           

        if ((de != "0" && de != "") && (ate != "0" && ate != ""))
            query = query +  "AND imovel.valor BETWEEN " + de + " AND "+ ate + " ";

        if (uf != "")
            query = query + "AND endereco.uf = '" + uf + "' ";

        if (cidade != "")
            query = query + "AND endereco.cidade LIKE LOWER('%" + cidade +"%') ";

        if (bairro != "")
            query = query + "AND endereco.bairro LIKE '%" + bairro + "%' ";

        return query;
    }
 %>
 
 
 
 
 
 
 
 
 
 
 
 