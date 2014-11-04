package br.com.eclassimovel.dto;

public class Cliente {
	
	//Declarando os Atributos
	
	private int idCliente;	// ID do Cliente
	private float cpf; 		// CPF do cliente
	private float cnpj;		// CNPJ do cliente
	private int tipo;		// Tipo do cliente
	private String nome; 	// Nome do cliente
	private String email; 	// Email do cliente
	private String tel;		// Telefone do Cliente
	private float cep;		// CEP do cliente
	private int num_resi;	// Numero da residencia
	private String comp;	// Complemento
	
	
	//Metodos Get e Set
	
	public int getIdCliente(){
		return idCliente;
	}
	public void setIdCliente(int idCliente){
		this.idCliente = idCliente;
	}
	
	public float getCnpj(){
		return cnpj;
	}
	public void setCnpj(int cnpj){
		this.cnpj= cnpj;
	}
	
	public int getTipo(){
		return tipo;
	}
	public void setTipo(int tipo){
		this.tipo=tipo;
	}
	
	public String getComp(){
		return comp;
	}
	public void setComp(String comp){
		this.comp = comp;
	}
	
	public float getCep(){
		return cep;
	}
	public void setCep(int cep){
		this.cep = cep;
	}
	
	public int getNum_resi(){
		return num_resi;
	}
	public void setNum_resi(int num_resi){
		this.num_resi = num_resi;
	}
	
	public float getCpf(){
		return cpf;
	}
	
	public void setCpf(float cpf){
		this.cpf = cpf;
	}
	
	public String getNome(){
		return nome;
	}
	
	public void setNome(String nome){
		this.nome = nome;
	}
	
	public String getEmail(){
		return email;
	}
	
	public void setEmail(String email){
		this.email = email;
	}
	
	public String getTel(){
		return tel;
	}
	
	public void setTel(String tel){
		this.tel = tel;
	}
	
	// Metodo construtor
	public Cliente() {
		// TODO Stub de construtor gerado automaticamente
	}

}
