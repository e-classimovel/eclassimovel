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
        
        <div class="container">
             <div class="row">
                 
                <form class="form-horizontal" enctype="multipart/form-data" role="form" method="post">
                    <div class ="col-sm-5">
                        <fieldset>
                            <legend>Endereço</legend>


                            <div class="form-group">
                                <label class="col-sm-3 control-label">Endereço</label>
                                <div class="col-sm-9">
                                    <input type="text" name="imovel_endereco" class="form-control" >  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Número</label>
                                <div class="col-sm-9">
                                    <input type="number" name="imovel_numero" class="form-control" >  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Complemento</label>
                                <div class="col-sm-9">
                                    <input type="text" name="imovel_complemento" class="form-control" >  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">CEP</label>
                                <div class="col-sm-9">
                                    <input type="text" name="imovel_cep" class="form-control" >  
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Dados do Imóvel</legend>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Qtd de Quartos</label>
                                <div class="col-sm-9">
                                    <input type="number" name="imovel_qtdQuartos" class="form-control" >  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Tamanho</label>
                                <div class="col-sm-9">
                                    <input type="text" name="imovel_tamanho" class="form-control" >  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Valor</label>
                                <div class="col-sm-9">
                                    <input type="text" name="imovel_valor" class="form-control" >  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Descrição</label>
                                <div class="col-sm-9">
                                    <textarea class="form-control" name="imovel_descricao" rows="3"></textarea>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div class="col-sm-7">
                        <div class="content-box-principal">
                            <img class='img-box' src='./css/imagens/imovel5.jpg'>
                            <input type="file" />
                        </div>
                        <div class="content-box-images">
                            <div class="box-img">
                                <img class='img-box' src='./css/imagens/imovel4.jpg'>

                            </div>
                            <div class="box-img">
                                <img class='img-box' src='./css/imagens/imovel6.jpg'>
                            </div>
                            <div class="box-img">
                                <img class='img-box' src='./css/imagens/imovel4.jpg'>
                            </div>
                            <div class="box-img">
                                <img class='img-box' src='./css/imagens/imovel3.jpg'>
                            </div>
                            <div class="box-img">
                                <img class='img-box' src='./css/imagens/imovel2.jpg'>
                            </div>
                            <div class="box-img">
                                <img class='img-box' src='./css/imagens/imovel1.jpg'>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
                         
        
        <%@include file = "/COMPONENTES/footer.jsp" %>
        <script src="script/jquery-ui-1.10.4.custom.js" type="text/javascript"></script>
        <script src="script/jquery-1.10.2.js" type="text/javascript"></script>
    </body>
</html>
