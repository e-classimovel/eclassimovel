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
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="/eclassimovel_web/css/imagens/imovel3.jpg"/>
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="/eclassimovel_web/css/imagens/living_room.jpg" />
      <div class="carousel-caption">
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>
        
        <div class ="container">
            <div class =" row">

        <%@ include file = "/COMPONENTES/busca-lateral.jsp" %>
        <div class="content">
            <div class ="col-sm-8 result-busca home-busca">                 
                           
             </div>
        </div>
        </div>
        </div>
        <script src="script/home.js" type="text/javascript"></script>
        <script src="/eclassimovel_web/script/Site/ajax-busca.js" type="text/javascript"></script>
        <script src="/eclassimovel_web/script/bootstrap-modal.js" type="text/javascript"></script>
        <script src="/eclassimovel_web/script/bootstrap-modalmanager.js" type="text/javascript"></script>
        <%@include file = "/COMPONENTES/footer.jsp" %>
    </body>
</html>

<script>
    $('.carousel').carousel()
</script>
