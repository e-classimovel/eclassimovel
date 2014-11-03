<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.PreparedStatement"%>

<%@ include file="/DAO_JSP2/conexao.jsp" %>
<%@ include file="/QUERYS/SelecionarCliente.jsp" %>

<%
	String[] estados = new String[100];
    // String[] estados;
 	// String[] cidades;
	// String[] bairros;

	String query="SELECT uf,cidade,bairro FROM Tb_Endereco;";

	PreparedStatement st = connection.prepareStatement(query);
    st.executeUpdate(query);

    ResultSet result = statement.executeQuery(query);

    int posicao = 0 ;
    while (result.next()) {

    	estados[posicao]=result.getString("uf");
    	posicao++;
    	//cidades.add(result.getString("cidade"));
    	//bairros.add(result.getString("bairro"));
    }

 %>
