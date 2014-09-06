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
         
        
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="/eclassimovel_web/css/imagens/imovel3.jpg"/>
      <div class="carousel-caption">
        Foto A
      </div>
    </div>
    <div class="item">
      <img src="/eclassimovel_web/css/imagens/imovel1.jpg" />
      <div class="carousel-caption">
        Foto B
      </div>
    </div>
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>
        <script>$('#carousel-example-generic').carousel()</script>
        
        <div class ="container">
            <div class =" row">

        <%@ include file = "/COMPONENTES/busca-lateral.jsp" %>
        <div class="content">
            <div class ="col-sm-8" style="margin-top:2%;">                 
                <div class="col-sm-4">
                    <div class="panel panel-default">       
                        <div class="panel-body">
                            <img src="/eclassimovel_web/css/imagens/imovel1.jpg" class="img-rounded"/>
                        </div>
                        <div class="panel-footer"><label>Sobrado no Murumbi com 600m²</label></div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <img src="/eclassimovel_web/css/imagens/imovel2.jpg" class="img-rounded"/>
                        </div>
                        <div class="panel-footer"><label>Sobrado em Alphavile com 400m²</label></div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <img  src='/eclassimovel_web/css/imagens/imovel3.jpg' class="img-rounded"/>
                        </div>
                        <div class="panel-footer">
                            <label>Apartamento na vila Mariana com 450m²</label>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <img src='/eclassimovel_web/css/imagens/imovel4.jpg' class="img-rounded" />
                        </div>
                        <div class="panel-footer"><label>Sobrado em Alphavile com 800m²</label></div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <img src='/eclassimovel_web/css/imagens/imovel5.jpg' class="img-rounded" />
                        </div>
                        <div class="panel-footer"><label>Sobrado no Jardins com 500m²</label></div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <img src='/eclassimovel_web/css/imagens/imovel6.jpg' class="img-rounded" />
                        </div>
                        <div class="panel-footer"><label>Sobrado em Alphavile com 480m²</label></div>
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
