package br.com.eclassimovel.dao;
import br.com.eclassimovel.dto.Anuncio;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class AnuncioDAO{
	public void InsereAnuncio(Anuncio an){
	
	String sql = "INSERT INTO ANUNCIO VALUES(?,?,?,?,?);";
	// INSERT INTO ANUNCIO VALUES(ID_ANUNCIO,ID_CLIENTE,ID_IMOVEL,TITULO,MEMO);
			 
	Connection conn = null; 
	PreparedStatement pstm = null; 

	try {
	 //Cria uma conexão com o banco
		conn = Conexao.createConnectionToMySQL();
				 
		//Cria um PreparedStatment, classe usada para executar a query
		pstm = conn.prepareStatement(sql);
				 
		//Adiciona o valor do primeiro parâmetro da sql
		pstm.setInt(1,an.getIdAnuncio());
		//Adicionar o valor do segundo parâmetro da sql
		pstm.setInt(2, an.getidCliente());
		//Adiciona o valor do terceiro parâmetro da sql
		pstm.setInt(3,an.getId_imovel_anc());
		// Adiciona o valor do quarto parâmetro da sql
		pstm.setString(4,an.getTitulo());
		// Adciona o valor do quinto parâmetro da sql
		pstm.setString(5,an.getDesc());
		//Executa a sql para inserção dos dados
		pstm.execute();
	}
	catch (Exception e)	{
				 
		e.printStackTrace();
	}
	finally	{
				 
		//Fecha as conexões
				 
		 try {
			 if(pstm != null) {	 
				 pstm.close();
			 	}
					 
			 if(conn != null) {
				 conn.close();
			 	}
					 
		 	}
		 	catch(Exception e) {
		 		e.printStackTrace();
		 	}
	 	}
 	}

	public void AlteraAnuncio(Anuncio an, int id_anuncio){
		String sql = "UPDATE ANUNCIO SET ID_CLIENTE = ?, ID_IMOVEL = ?, TITULO = ?, MEMO = ?   WHERE ID_ANUNCIO = ?;";
		Connection conn = null;
		PreparedStatement pstm = null;
		try{
			conn = Conexao.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			
			// Primeiro parametro da query
			pstm.setInt(1, an.getidCliente());
			
			// Segundo parametro da query
			pstm.setInt(2,an.getId_imovel_anc());
			
			// Terceiro parametro da query
			pstm.setString(3, an.getTitulo());
			
			// Quarto parametro da query
			pstm.setString(4, an.getDesc());
			
			// Quinto parametro da query
			pstm.setInt(5, id_anuncio);
			
			pstm.execute();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally	{
			 
			//Fecha as conexões
					 
			try {
				if(pstm != null) {	 
					pstm.close();
					}
						 
				if(conn != null) {
					conn.close();
					}
						 
			 	}
			catch(Exception e) {
			 		e.printStackTrace();
			}
		}
	}
	
	public void DeleteAnuncio(Anuncio an, int id_anuncio){
		String sql = "DELETE FROM ANUNCIO WHERE ID_ANUNCIO = ?";
		Connection conn = null;
		PreparedStatement pstm = null;
		try{
			conn = Conexao.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			//Primeiro parametro
			pstm.setInt(1, id_anuncio);
			
			pstm.execute();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally	{
			 
			//Fecha as conexões
					 
			try {
				if(pstm != null) {	 
					pstm.close();
					}
						 
				if(conn != null) {
					conn.close();
					}
						 
			 	}
			catch(Exception e) {
			 	e.printStackTrace();
			}
		}
	}
	
	public List<Anuncio> getAnuncio(){
		String sql = "select * from anuncio;";
		List<Anuncio> anuncio = new ArrayList<Anuncio>();
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet res = null;
		
		try{
			conn = Conexao.createConnectionToMySQL();
			prep = conn.prepareStatement(sql);
			res = prep.executeQuery();
			while(res.next()){
				Anuncio a = new Anuncio();
				a.setId_anuncio(res.getInt("id_anuncio"));
				a.setId_imovel_anc(res.getInt("id_imovel"));
				a.setIdCliente(res.getInt("id_cliente"));
				a.setDesc(res.getString("memo"));
				a.setTitulo(res.getString("titulo"));
				anuncio.add(a);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{	 
			 try{
				 if(prep != null)
					 prep.close();
						 
				 if(conn != null)
					 conn.close();
						 
			 }
			 catch(Exception e) {
			 	e.printStackTrace();
			 }
		}
	
		
		return anuncio;
	}
	public AnuncioDAO(){
		
	}
}



