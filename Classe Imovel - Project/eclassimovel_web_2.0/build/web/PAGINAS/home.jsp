<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>e-Classimovel | Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>

        <%@ include file = "/COMPONENTES/header.jsp" %>
         
        <div class="content-image">
            <img src="/eclassimovel_web/css/imagens/imovel3.jpg" style="width: 100%;height: 540px;" class="img-principal"/>
        </div>

        <%@ include file = "/COMPONENTES/busca-lateral.jsp" %>
        <div class="content">
            <div class ="col-sm-8">
                <section class="content-wrapper main-content clear-fix">
                    <div class="col-sm-5">
                        <div class="panel panel-default">
                            <img class='img-box' src='/eclassimovel_web/css/imagens/imovel1.jpg'>

                            <div class="panel-body">
                            </div>
                            <div class="panel-footer"><label>Sobrado no Murumbi com 600m²</label></div>
                        </div>
                    </div>
                    <div class="col-sm-5">
                        <div class="panel panel-default">
                            <img class='img-box' src='/eclassimovel_web/css/imagens/imovel2.jpg'>

                            <div class="panel-body">
                            </div>
                            <div class="panel-footer"><label>Sobrado em Alphavile com 400m²</label></div>
                        </div>
                    </div>
                    <div class="col-sm-5">
                        <div class="panel panel-default">
                            <img class='img-box' src='/eclassimovel_web/css/imagens/imovel3.jpg'>

                            <div class="panel-body">
                            </div>
                            <div class="panel-footer"><label>Apartamento na vila Mariana com 450m²</label></div>
                        </div>
                    </div>
                    
                    
                    
                </section>                
             </div>
            
            
            
            
            
            
            
            
            
            
            
            
            
            


            
                
                    <img class='img-box' src='/eclassimovel_web/css/imagens/imovel4.jpg'>
                    <label>CSobrado em Alphavile com 800m²</label>
           
                    <img class='img-box' src='/eclassimovel_web/css/imagens/imovel5.jpg'>
                    <label>Sobrado no Jardins com 500m²</label>
            
                    <img class='img-box' src='/eclassimovel_web/css/imagens/imovel6.jpg'>
                    <label>Sobrado em Alphavile com 480m²</label>
                </div>
                <div class="show-more" style="clear: both">
                    <input type="button" value="Carregar Mais"/>
                </div>
            </section>
        </div>
        </div>
   
        <script src="script/home.js" type="text/javascript"></script>
        <%@include file = "/COMPONENTES/footer.jsp" %>
    </body>
</html>
