<%-- 
    Document   : detalhes
    Created on : 08/05/2014, 00:27:24
    Author     : gilmar.junior
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file = "header.jsp" %>
        <div class="content-imovel">
            <div class="imovel">
                <h2 style="margin-left: 100px;">Sobrado em Alphavile com 800m²</h2>
                <div id="slideshow">
                    <img src="css/imagens/imovel4.jpg" width="400px;" height="400px" style="float:left;margin: 100px" alt=""/>
                </div>
            </div>
            <div class="detalhes">
                
                <br/>
                <label>Endereço: Av. Paulista </label>
                <label>Valor: R$ 1.000.000,00</label>
                <label>Quantidade Dormitorios: 4</label>
                <label>Vagas: 1</label>
                <label>Área Útil: 65 a 79 m²</label>
                
                <div id="mapa" style="height: 300px; width: 600px; margin-top: 45px;">
        </div>
            </div>
        </div>
        <script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
        <script src="script/maps.js" type="text/javascript"></script>
        <%@include file = "footer.jsp" %>
    </body>
</html>
