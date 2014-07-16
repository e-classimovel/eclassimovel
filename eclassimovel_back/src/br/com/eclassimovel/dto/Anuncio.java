package br.com.eclassimovel.dto;

public class Anuncio {
	//Atributos
	private int idAnuncio;		// Id do anuncio
	private int idCliente;		// ID do Cliente anunciante
	private int idImovel;	// Id do imovel que será anunciado
	private String titulo;		// titulo do anuncio
	private String desc;		// descrição do anuncio
	
	// Metodos Get e Set
	public int getIdAnuncio(){
		return idAnuncio;
	}
	public void setId_anuncio(int idAnuncio){
		this.idAnuncio = idAnuncio;
	}
	
	public int getidCliente(){
		return idCliente;
	}
	public void setIdCliente(int idCliente){
		this.idCliente= idCliente;
	}
	
	public int getId_imovel_anc(){
		return idImovel;
	}
	public void setId_imovel_anc(int idImovel){
		this.idImovel = idImovel;
	}
	
	public String getTitulo(){
		return titulo;
	}
	
	public void setTitulo(String titulo){
		this.titulo = titulo;
	}
	
	public String getDesc(){
		return desc;
	}
	public void setDesc(String desc){
		this.desc = desc;
	}
	
	//Metodo construtor
	public Anuncio() {
		// TODO Stub de construtor gerado automaticamente
	}

}