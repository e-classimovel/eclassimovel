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
            <img src="/eclassimovel_web/css/imagens/imovel3.jpg" style="width: 100%;height: 100%; margin-top:-0.5%;" class="img-principal"/>
        </div>
        <div class ="container">
            <div class =" row">

        <%@ include file = "/COMPONENTES/busca-lateral.jsp" %>
        <div class="content">
            <div class ="col-sm-8" style="margin-top:2%;">                 
                <div class="col-sm-4">
                    <div class="panel panel-default">       
                        <div class="panel-body">
                            <img src="/eclassimovel_web/css/imagens/imovel1.jpg" class="img-rounded" width=100%s height=180/>
                        </div>
                        <div class="panel-footer"><label>Sobrado no Murumbi com 600m�</label></div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <img src="/eclassimovel_web/css/imagens/imovel2.jpg" width=100% height=180 class="img-rounded"/>
                        </div>
                        <div class="panel-footer"><label>Sobrado em Alphavile com 400m�</label></div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <img  src='/eclassimovel_web/css/imagens/imovel3.jpg'  width=100% height=180 class="img-rounded"/>
                        </div>
                        <div class="panel-footer">
                            <label>Apartamento na vila Mariana com 450m�</label>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <img src='/eclassimovel_web/css/imagens/imovel4.jpg'  width=100% height=180 class="img-rounded" />
                        </div>
                        <div class="panel-footer"><label>Sobrado em Alphavile com 800m�</label></div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <img src='/eclassimovel_web/css/imagens/imovel5.jpg'  width=100% height=180 class="img-rounded" />
                        </div>
                        <div class="panel-footer"><label>Sobrado no Jardins com 500m�</label></div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <img src='/eclassimovel_web/css/imagens/imovel6.jpg' class="img-rounded"  width=100% height=180 />
                        </div>
                        <div class="panel-footer"><label>Sobrado em Alphavile com 480m�</label></div>
                    </div>
                </div>                                
             </div>
        </div>
        </div>
        </div>
        <script src="script/home.js" type="text/javascript"></script>
        <%@include file = "/COMPONENTES/footer.jsp" %>
    </body>
</html>
