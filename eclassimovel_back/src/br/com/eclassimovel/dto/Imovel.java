package br.com.eclassimovel.dto;

public class Imovel {
	// Criando atributos do Imovel
	
	private int 	id_imovel;		// Id do Imovel
	private int		idCliente;		// CPF do Cliente
	private float 	tamanho;		// tamanho do imovel em m²
	private int		qtd_quartos;	// Quantidade de quartos
	private int		qtd_banheiros;	// Quantidade de banheiros
	private float	cep;			// endereço do imovel
	private int		tipo1;			// 1- Comercial, 2- Residencial
	private int		tipo2;			// 1- Apartamento, 2- Casa, 3- Sitio, 4- Chacara, 5- Galpão, 6- Sobrado, 7- Prédio
	private int		num;			// Numero do imovel
	private String 	comp;			// Complemento do Imovel
	private String 	memo;			// Memorando
	
	// Metodos Get e Set
	public String getComp(){
		return comp;
	}
	public void setComp(String comp){
		this.comp = comp;
	}
	
	public String getMemo(){
		return memo;
	}
	public void setMemo(String memo){
		this.memo = memo;
	}
	
	public int getNum(){
		return num;
	}
	public void setNum(int num){
		this.num = num;
	}
	
	public int getId_imovel(){
		return id_imovel;
	}
	public void setId_imovel(int id_imovel){
		this.id_imovel= id_imovel;
	}
	
	public int getIdCliente(){
		return idCliente;
	}
	public void setIdCliente(int idCliente){
		this.idCliente = idCliente;
	}
	
	public float getTamanho(){
		return tamanho;
	}
	
	public void setTamanho(float tamanho){
		this.tamanho = tamanho;
	}
	
	public int getQtd_quartos(){
		return qtd_quartos;
	}
	public void setQtd_quartos(int qtd_quartos){
		this.qtd_quartos = qtd_quartos;
	}
	
	public int getQtd_banheiros(){
		return qtd_banheiros;
	}
	public void setQtd_banheiros(int qtd_banheiros){
		this.qtd_banheiros = qtd_banheiros;
	}
	
	public float getCep_imovel(){
		return cep;
	}
	public void setCep_imovel(float cep_imovel){
		this.cep = cep_imovel;
	}
	
	public int getTipo1(){
		return tipo1;
	}
	public void setTipo(int tipo1){
		this.tipo1 = tipo1;
	}
	
	public int getTipo2(){
		return tipo2;
	}
	
	public void setTipo2(int tipo2){
		this.tipo2 = tipo2;
	}
	
	//Metodo construtor
	public Imovel() {
		// TODO Stub de construtor gerado automaticamente
	}

}
