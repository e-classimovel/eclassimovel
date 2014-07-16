package 
br.com.eclassimovel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import br.com.eclassimovel.dto.Cliente;

public class ClienteDAO {
	public void InsertCliente(Cliente model){
	
		String sql = "INSERT INTO CLIENTE VALUES(?,?,?,?,?,?,?,?,?,?);";
				 
		Connection conn = null; 
		PreparedStatement prepareStatement = null; 

		try{

			conn = Conexao.createConnectionToMySQL();
					 

			prepareStatement = conn.prepareStatement(sql);				 

			prepareStatement.setInt(1,model.getIdCliente());	
			prepareStatement.setInt(2,model.getTipo());
			prepareStatement.setFloat(3,model.getCnpj());
			prepareStatement.setFloat(4,model.getCpf());
			prepareStatement.setString(5,model.getNome());
			prepareStatement.setString(6,model.getEmail());
			prepareStatement.setString(7,model.getTel());
			prepareStatement.setFloat(8,model.getCep());
			prepareStatement.setInt(9,model.getNum_resi());
			prepareStatement.setString(10, model.getComp());

			prepareStatement.execute();
		}
		catch (Exception e)	{
			e.printStackTrace();
		}
		finally	{	 
			 try {
				 if(prepareStatement != null)
					 prepareStatement.close();
						 
				 if(conn != null)
					 conn.close();
						 
			 	}
			 catch(Exception e) {
			 		e.printStackTrace();
			 }
		}
	}

	public void AlterCliente(Cliente model, int id_cliente){
		
		String sql = "UPDATE CLIENTE SET CPF = ?, CNPJ = ?,ID_TIPO = ?, NOME = ?, EMAIL = ?, TEL = ?, CEP = ?, NUM_RESI = ?, COMPLEMENTO = ?   WHERE ID_CLIENTE = ?;";
		Connection conn = null;
			
		PreparedStatement prepareStatement = null;
			
		try	{
				conn = Conexao.createConnectionToMySQL();
				prepareStatement = conn.prepareStatement(sql);
				
				prepareStatement.setFloat(1,model.getCpf());
				prepareStatement.setFloat(2, model.getCnpj());
				prepareStatement.setInt(3, model.getTipo());
				
				prepareStatement.setString(4,model.getNome());
				prepareStatement.setString(5,model.getEmail());
				prepareStatement.setString(6,model.getTel());

				prepareStatement.setFloat(7,model.getCep());
				prepareStatement.setInt(8,model.getNum_resi());
				
				prepareStatement.setString(9, model.getComp());
				prepareStatement.setInt(10, id_cliente);
				
				prepareStatement.execute();
		}
		catch (Exception e)	{
			e.printStackTrace();
		}
		finally{
			try {
				if(prepareStatement != null)
					prepareStatement.close();
							 
				if(conn != null)
					conn.close();
			 	}
			catch(Exception e) 
				{
			 		e.printStackTrace();
				}
			}
		}
		
	public void DeletCliente(int idCliente) {
		String command = "DELETE FROM CLIENTE WHERE ID_CLIENTE = ?";
		
		PreparedStatement prepareStatement = null;
		Connection connection = null;
		
		try {
			connection = Conexao.createConnectionToMySQL();
			prepareStatement = connection.prepareStatement(command);
			
			prepareStatement.setInt(1, idCliente);
			
			prepareStatement.execute();
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {
			try {
				if (connection != null)
					connection.close();
			}
			catch(Exception ex) {
				ex.printStackTrace();
			}
		}
	}
	
	public List<Cliente> getCliente(){
		List<Cliente> cliente = new ArrayList<Cliente>();
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet  res = null;
		String sql = "SELECT * FROM CLIENTE;";
		try{
			conn = Conexao.createConnectionToMySQL();
			prep = conn.prepareStatement(sql);
			res = prep.executeQuery();
			while ( res.next()){
				Cliente c = new Cliente();
				c.setCep(res.getInt("cep"));
				c.setCnpj(res.getInt("cnpj"));
				c.setCpf(res.getFloat("cpf"));
				c.setComp(res.getString("complemento"));
				c.setEmail(res.getString("email"));
				c.setIdCliente(res.getInt("id_cliente"));
				c.setNome(res.getString("nome"));
				c.setNum_resi(res.getInt("num_resi"));
				c.setTel(res.getString("tel"));
				c.setTipo(res.getInt("id_tipo"));
				cliente.add(c);		
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
	
		
		return cliente;
	}
	public ClienteDAO(){
	}
}
