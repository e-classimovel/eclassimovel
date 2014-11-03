<%-- 
    Document   : newjsp
    Created on : Oct 7, 2014, 9:33:31 PM
    Author     : guilhermediasbautista/gilmar
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>e-Classimovel | Imovel</title>
        
    </head>
    <body>
        <%@include file = "/COMPONENTES/header.jsp" %>
        <%@include file = "/DAO_JSP2/dados.jsp" %>
        
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <fieldset>
                        <legend><h3><%=especificacao%></h3></legend>
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
                                    <img src="<%=lstImagens[0]%>">
                                    <div class="carousel-caption">
                                        ...
                                    </div>
                                </div>

                                <%  for (int i =1; i < lstImagens.length; i++) { 
                                        if (lstImagens[i] != null) {
                                %> 
                                    
                                    <div class="item">
                                        <img src="<%=lstImagens[i]%>" >
                                        <div class="carousel-caption">
                                            ...
                                        </div>
                                    </div>   
                                <%}}%>                                    
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend><h3>Detalhes <span class="glyphicon glyphicon-home"></span></h3></legend>
                        <div class="row">
                            <div class="col-md-2">
                                <label> Valor: <%= valor%></label>
                            </div>
                            <div class="col-md-3">
                                <label>Área total: <%=tamanho%></label>
                            </div>
                            <div class="col-md-3">
                                <label>Área útil: <%= areaUtil%></label>
                            </div>
                            <div class="col-md-4">
                                <label>Quantidade de Vagas: <%=vagas%></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label> Quantidade de Quartos: <%=qtdQuartos%></label>
                            </div>
                            
                        </div>

                    </fieldset>
                    <fieldset>
                        <legend><h3>Localização</h3></legend>
                        <div class="row">
                            <div class="col-md-10">
                                <label>Rua: </label>
                                <label id="rua"><%=rua%></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Número: </label>
                                <label id="numero"><%=numero%></label>
                            </div>  
                            <div class="col-md-6">
                                <label>Complemento: </label>
                                <label id="complemento"><%=complemento%> </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Bairro: </label>
                                <label id = "bairro"><%=bairro%> </label>
                            </div>  
                            <div class="col-md-5">
                                <label>Cidade: </label>
                                <label id="cidade"><%=cidade%> </label>
                            </div>
                            <div class="col-md-3">
                                <label>Estado: </label>
                                <label id="uf"><%=uf%> </label>
                            </div>
                        </div>
                        <div id="mapa tamannho-mapa" ></div>
                        
                        
                    </fieldset>
                </div>
                <div class ="col-md-4">
                    
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <h3 class="panel-title"> Contato</h3>
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                <div class="form-group">
                                    <label>E-mail</label>
                                    <input type="email" class="form-control" placeholder="Enter email">
                                </div>
                                <div class="form-group">
                                    <label>Telefone</label>
                                    <input type="text" class="form-control" placeholder="Telephone">
                                </div>
                                <div class="form-group">
                                    <label>Mensagem</label>
                                    <textarea class="form-control"></textarea>
                                </div>
                                <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-envelope"> Enviar</button>
                            </form>
                        </div>
                  </div>

                </div>

                
                
            </div>
        </div>
        <%@include file = "/COMPONENTES/footer.jsp" %>
    </body>
</html>

<script src="http://maps.googleapis.com/maps/api/js?key=&amp;sensor=false"></script>
<script>

    var map;
    var geocoder = new google.maps.Geocoder();;
    var marker; 

    function Geocoder(){
         var rua = $("#rua").text();
         var numero = $("#numero").text();
         var bairro = $("#bairro").text();
         var cidade = $("#cidade").text();
     
        var address = rua +','+numero+', '+ bairro + ', ' + cidade+', Brasil';

        geocoder.geocode({ 'address': address,'region':'BR'}, function (results, status) {
           
            if (status == google.maps.GeocoderStatus.OK) {
                if (results[0]) {

                    var latitude = results[0].geometry.location.lat();
                    var longitude = results[0].geometry.location.lng();
                    var latlng = new google.maps.LatLng(latitude, longitude);
                    
                    var options = {
                        zoom: 15,
                        center: latlng,
                        mapTypeId: google.maps.MapTypeId.ROADMAP
                    };

                    map = new google.maps.Map(document.getElementById("mapa"), options);

                    marker = new google.maps.Marker({
                        map: map
                    });

                    marker.setPosition(latlng);

                    var infowindow = new google.maps.InfoWindow(), marker;

                    
                }

            } else if (status === google.maps.GeocoderStatus.OVER_QUERY_LIMIT){   
                setTimeout( function(){Geocoder(valor);}, 0);
            }
            
        });
    }

    Geocoder();

</script>
            