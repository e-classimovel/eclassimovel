package br.com.eclassimovel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import br.com.eclassimovel.dto.Imovel;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;

public class ImovelDAO {
	public void InsertImovel(Imovel im){
		String sql ="INSERT INTO IMOVEL VALUES(?,?,?,?,?,?,?,?,?,?,?);";
		Connection conn = null;
		PreparedStatement prep = null;
		
		try{
			conn= Conexao.createConnectionToMySQL();
			prep = conn.prepareStatement(sql);
			
			prep.setInt(1,im.getId_imovel());
			prep.setInt(2,im.getIdCliente());
			prep.setInt(3,im.getTipo1());
			prep.setInt(4,im.getTipo2());
			prep.setFloat(5,im.getTamanho());
			prep.setInt(6,im.getQtd_quartos());
			prep.setInt(7,im.getQtd_banheiros());
			prep.setFloat(8,im.getCep_imovel());
			prep.setInt(9,im.getNum());
			prep.setString(10,im.getComp());
			prep.setString(11,im.getMemo());
			prep.execute();
			
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
	}
	public void AlterImovel(Imovel im, int idImovel){
		String 	sql = "UPDATE IMOVEL SET ID_CLIENTE = ?,ID_TIPO1 = ?, ";
				sql += "ID_TIPO2 = ?, TAMANHO = ?, QTD_QUARTOS = ?, QTD_BANHEIRO = ?, CEP = ?, NUMERO = ?, COMP = ?, INFO = ? ";
				sql += "WHERE ID_IMOVEL = ?";
				
		Connection conn = null;
		PreparedStatement prep= null;
		
		
		try{
			conn= Conexao.createConnectionToMySQL();
			prep = conn.prepareStatement(sql);
			
			prep.setInt(1,im.getIdCliente());
			prep.setInt(2,im.getTipo1());
			prep.setInt(3,im.getTipo2());
			prep.setFloat(4,im.getTamanho());
			prep.setInt(5,im.getQtd_quartos());
			prep.setInt(6, im.getQtd_quartos());
			prep.setFloat(7, im.getCep_imovel());
			prep.setInt(8,im.getNum());
			prep.setString(9, im.getComp());
			prep.setString(10, im.getMemo());
			prep.setInt(11,idImovel);
			
		}
		catch (Exception e){
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
	}
	public void DeletImovel(int idImovel){
		String sql ="DELETE FROM IMOVEL WHERE ID_IMOVEL = ?";
		
		Connection conn = null;
		PreparedStatement prep = null;
		
		try{
			conn = Conexao.createConnectionToMySQL();
			prep = conn.prepareStatement(sql);
			
			prep.setInt(1, idImovel);
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
	}
	
	public List<Imovel> getImoveis(){
		String sql = "SELECT * FROM IMOVEL;";
		List<Imovel> imovel = new ArrayList<Imovel>();
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet result = null;
		try{
			conn= Conexao.createConnectionToMySQL();
			prep= conn.prepareStatement(sql);
			result = prep.executeQuery();
			while(result.next()){
				Imovel im = new Imovel();
				im.setId_imovel(result.getInt("id_imovel"));
				im.setIdCliente(result.getInt("id_cliente"));
				im.setTipo(result.getInt("id_tipo1"));
				im.setTipo2(result.getInt("id_tipo2"));
				im.setTamanho(result.getFloat("tamanho"));
				im.setQtd_quartos(result.getInt("qtd_quartos"));
				im.setQtd_banheiros(result.getInt("qtd_banheiro"));
				im.setCep_imovel(result.getFloat("cep"));
				im.setNum(result.getInt("numero"));
				im.setComp(result.getString("comp"));
				im.setMemo(result.getString("info"));
				imovel.add(im);
							
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
		
		return imovel;
	}
	
	
	public ImovelDAO(){
	}
	
	
}

