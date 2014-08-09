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
        <link href="./css/Site.css" rel="stylesheet" />
    
    </head>
    <body>
        <%@ include file = "header.jsp" %>
         <div class="content-search">
             <form>
                <input type="search" placeholder="Cidade"/>
                <input type="search" placeholder="Bairro"/>
                <button>Pesquisar</button>
             </form>
         
        </div>
        <div class="content-image">
            <img src="./css/imagens/imovel3.jpg" style="width: 100%;height: 540px;" class="img-principal"/>
        </div>

        <%@ include file = "busca-lateral.jsp" %>
        <div class='content-default'>

        <div id="body"> 
            <section class="content-wrapper main-content clear-fix">
                <div class='box'>
                    <img class='img-box' src='./css/imagens/imovel1.jpg'>
                        <label>Sobrado no Murumbi com 600m²</label>
                </div>
                 <div class='box'>
                    <img class='img-box' src='./css/imagens/imovel2.jpg'>
                    <label>Sobrado em Alphavile com 400m²</label>
                </div>
                 <div class='box'>
                    <img class='img-box' src='./css/imagens/imovel3.jpg'>
                    <label>Apartamento na vila Mariana com 450m²</label>
                </div>
                 <div class='box'>
                    <img class='img-box' src='./css/imagens/imovel4.jpg'>
                    <label>CSobrado em Alphavile com 800m²</label>
                </div>
                 <div class='box'>
                    <img class='img-box' src='./css/imagens/imovel5.jpg'>
                    <label>Sobrado no Jardins com 500m²</label>
                </div>
                 <div class='box'>
                    <img class='img-box' src='./css/imagens/imovel6.jpg'>
                    <label>Sobrado em Alphavile com 480m²</label>
                </div>
                <div class="show-more" style="clear: both">
                    <input type="button" value="Carregar Mais"/>
                </div>
            </section>
        </div>
        </div>
        <script src="script/home.js" type="text/javascript"></script>
        <%@include file = "footer.jsp" %>
    </body>
</html>
