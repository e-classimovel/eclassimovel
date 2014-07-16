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
        <link href="./css/Site.css" rel="stylesheet" />
        
    </head>
    <body>
        <style type="text/css">
                        .content-footer {
                margin-top: 10px;
                margin-left: 50px;
            }
            
            textarea {
                height: 143px;
            }
        </style>
        <%@include file = "header.jsp" %>
         <div id="body">
            <section clceass="content-wrapper main-content clear-fix" style="max-width: 100%;">
                <div class="tabs" >
                    <ul>
                        <li><a href="#tabs-1">Cadastro de Imovel</a></li>
                        <li><a href="#tabs-2">Cadastro de Imagens</a></li>
                    </ul>
                    <div id="tabs-1" class="custom-tabs"style="margin-bottom: 100px;">
                        <div class="content-left" style="float:left; margin:50px;">
                            <div class="box-imovel">
                                <label>CEP</label>
                                <input type="text" />
                            </div>
                            <div class="box-imovel">
                                <label>Numero</label>
                                <input type="text" />
                            </div>
                            <div class="box-imovel">
                                <label>Endereço</label>
                                <input type="text" />
                            </div>
                            <div class="box-imovel">
                                <label>Complemento</label>
                                <input type="text" />
                            </div>
                        </div>
                        <div class="content-right" style="margin:50px;">
                            <div class="box-imovel">
                                <label>Descrição</label>
                                <textarea></textarea>
                            </div>
                               <div class="box-imovel">
                                <label>Qtd. Quartos</label>
                                <input type="text" />
                            </div>
                        
                        
                        <div class="box-imovel">
                            <label>Suites</label>
                            <input type="number" />
                        </div>
                        <div class="box-imovel">
                            <label>Area Util</label>
                            <input type="number" />
                        </div>
                        <div class="box-imovel">
                            <label>Area Total</label>
                            <input type="number" />
                        </div>
                        <div class="box-imovel">
                            <label>Valor Total</label>
                            <input type="number" />
                        </div>
                        <div class="box-imovel">
                            <label>Valor de Entrada</label>
                            <input type="number" />
                        </div>
                        <div class="box-imovel">
                            <label>Mensais a partir</label>
                            <input type="number" />
                        </div>
                          <div class="box-imovel">
                            <label>Suites</label>
                            <input type="number" />
                        </div>

                    </div>
                    </div>
                    <div id="tabs-2" class="custom-tabs">
                         <div>
                            <img src="/" class="img" width="400px;"/>
                        
                            <input type="file" />
                        </div>
                        <div class="content-box-images">
                            <div class="box-img">
                                <img src="" class="img"/>
                            </div>
                            <div class="box-img">
                                <img src="" class="img"/>
                            </div>
                            <div class="box-img">
                                <img src="" class="img"/>
                            </div>
                            <div class="box-img">
                                <img src="" class="img"/>
                            </div>
                            <div class="box-img">
                                <img src="" class="img"/>
                            </div>
                            <div class="box-img">
                                <img src="" class="img"/>
                            </div>
                            <div class="box-img">
                                <img src="" class="img"/>
                            </div>
                            <div class="box-img">
                                <img src="" class="img"/>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                    $(".tabs").tabs();
                </script>
            </section> 
        </div>
        
        <%@include file = "footer.jsp" %>
        <script src="script/jquery-ui-1.10.4.custom.js" type="text/javascript"></script>
        <script src="script/jquery-1.10.2.js" type="text/javascript"></script>
    </body>
</html>
