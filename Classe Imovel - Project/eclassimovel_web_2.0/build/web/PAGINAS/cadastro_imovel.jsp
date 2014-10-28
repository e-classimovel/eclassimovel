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
                 <div class="row">
                    <form  action="/eclassimovel_web/DAO_JSP2/InserirImovel.jsp" class="form-horizontal" enctype="multipart/form-data" role="form" method="post">
                        <input type="hidden" class="idMovel" value="<%=idMovel%>"/>
                        <div class ="col-sm-5">
                            <fieldset>
                                <legend>Tipo do Imóvel</legend>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Tipo do Imóvel</label>
                                    <div class="col-sm-9">    
                                        <select id="tipo" name="imovel_tipo_imovel" class="form-control">
                                            <option value="1">Residencial</option>
                                            <option value="2">Comercial</option> 
                                        </select>   
                                    </div>
                                </div>
                                <div class="espcificacao_comercial" style="display: None;">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Especificação do Imovel</label>
                                        <div class="col-sm-9">
                                            <select id="comercial" name="imovel_especificacao" class="form-control">
                                                <option value="Box/Garagem">Box/Garagem</option>
                                                <option value="casa_comercial">Casa Comercial</option>
                                                <option value="conjunto_comercial/sala">Conjunto Comercial/Sala</option>
                                                <option value="galpa/deposito/armazen">Galpão/Depósito/Armazém</option>
                                                <option value="hotel">Hotel</option>
                                                <option value="industria">Industria</option>
                                                <option value="loja_shopping/ct_comercial">Loja Shopping/Ct Comercial</option>
                                                <option value="loja/salao">Loja/Salao</option>
                                                <option value="motel">Motel</option>
                                                <option value="pousada/chale">Pousada/Chalé</option>
                                                <option value="predio_inteiro">Prédio Inteiro</option>
                                                <option value="studio">Studio</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                 <div class="espcificacao_residencial" style="display: None;">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Especificação do Imovel</label>
                                        <div class="col-sm-9">
                                            <select id="residencial" name="especificacao" class="form-control">
                                                <option value="apartamento_padrao">Apartamento Padrão</option>
                                                <option value="cobertura">Cobertura</option>
                                                <option value="kichenette/conjugados">Kichenette/Conjugados</option>
                                                <option value="loft">Loft</option>
                                                <option value="casa_condominio">Casa de Condomínio</option>
                                                <option value="casa_vila">Casa de Vila</option>
                                                <option value="casa_padrao">Casa Padrao</option>
                                                <option value="loteamento/condominio">Loteamento/Condomínio</option>
                                                <option value="terreno_padrao">Terreno Padrão</option>
                                                <option value="chacara">Chácara</option>
                                                <option value="fazendo">Fazenda</option>
                                                <option value="haras">Haras</option>
                                                <option value="sitio">Sitio</option>
                                                <option value="flat">Flat</option>
                                            </select>
                                        </div>
                                    </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Dados do Imóvel</legend>
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
                                        <input type="text" name="imovel_valor" class="form-control money" value="<%=valor %>"  >  
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
                                                <input name="imovel_mostrar_mapa" type="checkbox" value="<%=googleMaps %>" > Mostrar meu imóvel no Google Maps
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <div class="checkbox">
                                            <label>
                                                <input name="imovel_permuta" type="checkbox" <%=permuta%> > Aceita Permuta
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
                                        <input type="text" name="imovel_cep" class="form-control cep" >  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Rua</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="imovel_endereco" class="form-control" value="<%=endereco%>" >  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Bairro</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="imovel_bairro" class="form-control" >  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Cidade</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="imovel_cidade" class="form-control" >  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">UF</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="imovel_uf" class="form-control" >  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Número</label>
                                    <div class="col-sm-9">
                                        <input type="number" name="imovel_numero" class="form-control" >  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 con trol-label">Complemento</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="imovel_complemento" class="form-control" >  
                                    </div>
                                </div>
                                
                            </fieldset>
                        </div>
                        <div class="col-sm-7">
                            <%@include file = "/PAGINAS/cadastro_imovel_imagens.jsp" %>
                        </div>
                        <div style="clear:left"></div>
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


                    }else{
                        $(".espcificacao_residencial").css("display","block");
                        $(".espcificacao_comercial").css("display","none");
                        $("#qtd_quartos").css("display","block");
                        $("#qtd_quartos1").css("display","block");
                    }
                })
            </script>
        <%}else{%>
            <%@include file = "/PAGINAS/tela_login.jsp" %>
        <%}%>
    </body>
</html>
