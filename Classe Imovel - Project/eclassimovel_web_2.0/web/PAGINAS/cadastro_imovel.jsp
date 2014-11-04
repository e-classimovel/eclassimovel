<%-- 
    Document   : cadastro_imovel
    Created on : 25/04/2014, 01:35:09
    Author     : Henrique Dias Bautis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>e-Classimovel | Cadastro Imóvel</title>        
    </head>
    <body>
        <%@include file = "/COMPONENTES/header.jsp" %>
        <%@include file = "/DAO_JSP2/editar_Imovel.jsp" %>
        
        <% if (session.getAttribute("id") != null) {%>
                
            <div class="container">
                 <div class="row" style="padding:20px;">
                    <form  action="/eclassimovel_web/DAO_JSP2/InserirImovel.jsp" class="form-horizontal" enctype="multipart/form-data" role="form" method="post">
                        <input type="hidden" class="idMovel" value="<%=idMovel%>"/>
                        <div class ="col-sm-5">
                            <fieldset>
                                <legend>Tipo do Imóvel</legend>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Tipo do Imóvel</label>
                                    <div class="col-sm-9">    
                                        <select id="tipo" name="imovel_tipo_imovel" class="form-control">
                                            <option value="1" <%= tipoImovel == 1 ? "selected" : "" %> >Residencial</option>
                                            <option value="2" <%= tipoImovel == 2 ? "selected" : "" %> >Comercial</option> 
                                        </select>   
                                    </div>
                                </div>
                                <div class="espcificacao_comercial" style="display: None;">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Especificação do Imovel</label>
                                        <div class="col-sm-9">
                                            <select id="comercial" name="imovel_especificacao" class="form-control">
                                                <option value="Box/Garagem" <%= especificacao== "Box/Garagem" ? "selected" : "" %> >Box/Garagem</option>
                                                <option value="Casa Comercial" <%= especificacao== "Casa Comercial" ? "selected" : "" %> >Casa Comercial</option>
                                                <option value="Conjunto Comercial/Sala" <%= especificacao== "Conjunto Comercial/Sala" ? "selected" : "" %>>Conjunto Comercial/Sala</option>
                                                <option value="Galpão/Depósito/Armazém" <%= especificacao== "Galpão/Depósito/Armazém" ? "selected" : "" %>>Galpão/Depósito/Armazém</option>
                                                <option value="Hotel" <%= especificacao== "Hotel" ? "selected" : "" %> >Hotel</option>
                                                <option value="Industria" <%= especificacao== "Industria" ? "selected" : "" %> >Industria</option>
                                                <option value="Loja Shopping/Ct Comercial" <%= especificacao=="Loja Shopping/Ct Comercial" ? "selected" : "" %> >Loja Shopping/Ct Comercial</option>
                                                <option value="Loja/Salão" <%= especificacao== "Loja/Salão" ? "selected" : "" %> >Loja/Salão</option>
                                                <option value="Motel" <%= especificacao== "Motel" ? "selected" : "" %> >Motel</option>
                                                <option value="Pousada/Chalé" <%= especificacao== "Pousada/Chalé" ? "selected" : "" %> >Pousada/Chalé</option>
                                                <option value="Prédio Inteiro" <%= especificacao== "Prédio Inteiro" ? "selected" : "" %> >Prédio Inteiro</option>
                                                <option value="Studio" <%= especificacao== "Studio" ? "selected" : "" %> >Studio</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                 <div class="espcificacao_residencial" style="display: None;">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Especificação do Imovel</label>
                                        <div class="col-sm-9">
                                            <select id="residencial" name="especificacao" class="form-control">
                                                <option value="Apartamento Padrão">Apartamento Padrão</option>
                                                <option value="Cobertura">Cobertura</option>
                                                <option value="Kichenette/Conjugados">Kichenette/Conjugados</option>
                                                <option value="Loft">Loft</option>
                                                <option value="Casa Condomínio">Casa de Condomínio</option>
                                                <option value="Casa de Vila">Casa de Vila</option>
                                                <option value="Casa Padrão">Casa Padrão</option>
                                                <option value="Loteamento/Condomínio">Loteamento/Condomínio</option>
                                                <option value="Terreno Padrão">Terreno Padrão</option>
                                                <option value="Chácara">Chácara</option>
                                                <option value="Fazenda">Fazenda</option>
                                                <option value="Haras">Haras</option>
                                                <option value="Sitio">Sitio</option>
                                                <option value="Flat">Flat</option>
                                            </select>
                                        </div>
                                    </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Dados do Imóvel</legend>
                            <div class="form-group">
                                    <label class="col-sm-3 control-label">Finalidade</label>
                                    <div class="col-sm-9">    
                                        <select id="tipo" name="imovel_finalidade" class="form-control">
                                            <option value="1">Vender</option>
                                            <option value="2">Alugar</option> 
                                        </select>   
                                    </div>
                                </div>
                            <div class="form-group">
                                <label  id="qtd_quartos" class="col-sm-3 control-label">Qtd de Quartos</label>
                                <div class="col-sm-9">
                                    <input id="qtd_quartos1" type="number" name="imovel_qtdQuartos" class="form-control"  value="<%=qtdQuartos%>">  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Área Total</label>
                                <div class="col-sm-9">
                                    <input type="text" name="imovel_tamanho" class="form-control" value="<%=tamanho%>" />  
                                </div>
                            </div>
                                
                                 <div class="form-group">
                                    <label class="col-sm-3 control-label">Area Util</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" name="imovel_area_util" value="<%=areaUtil %>"  >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Valor</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="valor" name="imovel_valor" class="form-control money" value="<%=valor %>"  >  
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-3 control-label">Vagas na Garagem</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" name="imovel_vagas_garagem" value="<%=vagas %>" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <div class="checkbox">
                                            <label>
                                                <input name="imovel_mostrar_mapa" type="checkbox" <%=googleMaps %> > Mostrar meu imóvel no Google Maps
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <div class="checkbox">
                                            <label>
                                                <input name="imovel_permuta" type="checkbox"  <%=permuta%> > Aceita Permuta
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Descrição</label>
                                    <div class="col-sm-9">
                                        <textarea class="form-control" name="imovel_descricao" rows="3"  ><%=descricao %></textarea>
                                    </div>
                                </div>                       
                            </fieldset>
                             <fieldset>
                                <legend>Endereço</legend>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">CEP</label>
                                    <div class="col-sm-9">
                                        <input id="cep" type="text" onblur="atualizacep(this.value)" name="imovel_cep" value="<%=cep%>" class="form-control cep" >  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Rua</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="rua" name="imovel_endereco" class="form-control" value="<%=rua%>" >  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Bairro</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="bairro" name="imovel_bairro" value="<%=bairro%>" class="form-control" >  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Cidade</label>
                                    <div class="col-sm-9">
                                        <input id="cidade" type="text" name="imovel_cidade" value="<%=cidade%>" class="form-control" >  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">UF</label>
                                    <div class="col-sm-9">
                                        <input id="estado" type="text" name="imovel_uf" value="<%=uf%>" class="form-control" >  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Número</label>
                                    <div class="col-sm-9">
                                        <input type="number" name="imovel_numero" value="<%=numero%>" class="form-control" >  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 con trol-label">Complemento</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="imovel_complemento" value="<%=complemento%>" class="form-control" >  
                                    </div>
                                </div>
                                
                            </fieldset>
                        </div>
                        <div class="col-sm-7">
                            <%@include file = "/PAGINAS/cadastro_imovel_imagens.jsp" %>
                        </div>
                        <div class="clear-left"></div>
                        <div class ="col-sm-5">
                            <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-9">
                                    <input  type="submit" class="btn btn-default" value="Cadastrar"/>
                                </div>
                            </div>
                        </div>
                    </form>

                </div>
            </div>


            <%@include file = "/COMPONENTES/footer.jsp" %>
            <script src="script/jquery-ui-1.10.4.custom.js" type="text/javascript"></script>
            <script src="script/jquery-1.10.2.js" type="text/javascript"></script>   
            <script src="/eclassimovel_web/script/Site/uploadimagens.js" type="text/javascript"></script>
  

            <script>
                $("#tipo").change(function(){
                    if ($("#tipo").val()=="2"){
                        $(".espcificacao_comercial").css("display","block");
                        $(".espcificacao_residencial").css("display","none");
                        $("#qtd_quartos").css("display","none");
                        $("#qtd_quartos1").css("display","none");
                        $("#qtd_quartos1").val("");

                    }else{
                        $(".espcificacao_residencial").css("display","block");
                        $(".espcificacao_comercial").css("display","none");
                        $("#qtd_quartos").css("display","block");
                        $("#qtd_quartos1").css("display","block");
                    }
                })
                function atualizacep(cep){
                    cep = cep.replace(/\D/g,"")
                    url="http://cep.correiocontrol.com.br/"+cep+".js"
                    s=document.createElement('script')
                    s.setAttribute('charset','utf-8')
                    s.src=url
                    document.querySelector('head').appendChild(s)
                }

                function correiocontrolcep(valor){
                    if (valor.erro) {
                        alert('Cep não encontrado');
                        return;
                    };
                    document.getElementById('rua').value=valor.logradouro
                    document.getElementById('bairro').value=valor.bairro
                    document.getElementById('cidade').value=valor.localidade
                    document.getElementById('estado').value=valor.uf
                }
                
                $('#despesas').mask('000.000.000,00',{reverse:true});
                $('#valor').mask('000.000.000,00',{reverse:true});
                
                $("#tipo").change();

            </script>
        <%}else{%>
            <%@include file = "/PAGINAS/tela_login.jsp" %>
        <%}%>
    </body>
</html>
