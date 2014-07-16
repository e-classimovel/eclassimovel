package br.com.eclassimovel.teste;
import br.com.eclassimovel.dto.*;
import br.com.eclassimovel.dao.*;

public class Teste {

    public static void main(String[] args) {
//-------------------------------------------            
//              Teste de Cliente
//-------------------------------------------
        Cliente cli = new Cliente();
        cli.setIdCliente(3);
        cli.setTipo(1);
        cli.setCnpj(0);
        cli.setCpf(123456789);
	cli.setNome("JOAO");
	cli.setEmail("JOAO.COM.BR");
	cli.setTel("(11)92345-1234");
	cli.setCep(12345678);
	cli.setNum_resi(111);
	cli.setComp("APARTAMENTO 30");
	
	ClienteDAO c = new ClienteDAO();
	c.InsertCliente(cli);
	for(Cliente c2 : c.getCliente()){
            System.out.println("Cliente: "+c2.getIdCliente());
	}
//--------------------------------------------
//              Teste de Imoveis
//--------------------------------------------
        Imovel im = new Imovel();
	int idImovel = 3;
	int idCliente = 1;
	float cep = 12345678;
	int num = 28;
	String comp = "B";
	int qtdQuarto = 3;
	int qtdBanheiro = 2;
	float tam = 123557;
	int tipo1 = 1;
	int tipo2 = 2;
	String memo = "";
	
        im.setId_imovel(idImovel);
	im.setIdCliente(idCliente);
	im.setTipo(tipo1);
	im.setTipo2(tipo2);
	im.setTamanho(tam);
	im.setQtd_quartos(qtdQuarto);
	im.setQtd_banheiros(qtdBanheiro);
	im.setCep_imovel(cep);
	im.setNum(num);
	im.setComp(comp);		
	im.setMemo(memo);
		
	ImovelDAO i = new ImovelDAO();
	i.InsertImovel(im);
		
	for(Imovel im2: i.getImoveis()){
            System.out.println("Imovel: "+im2.getId_imovel()+" "+im2.getIdCliente());
	}
                
//--------------------------------------------
//              Teste Anuncio
//--------------------------------------------        
        Anuncio an = new Anuncio();
        an.setId_anuncio(3);
        an.setId_imovel_anc(1);
        an.setIdCliente(1);
        an.setTitulo("Vende essa casa");
        an.setDesc("Vendo essa casa");
		
        AnuncioDAO a = new AnuncioDAO();
        a.InsereAnuncio(an);
		
        for (Anuncio a2 : a.getAnuncio()){
            System.out.println("Anuncio: "+a2.getDesc());
        }
		
    }
}