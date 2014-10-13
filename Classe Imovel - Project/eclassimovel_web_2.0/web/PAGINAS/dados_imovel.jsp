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
                        <p>[ Imagens do Imovel ]</p>
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

                           [Completar os campos]
                    </fieldset>
                    <fieldset>
                        <legend><h3>Localização</h3></legend>
                        <div class="row">
                            <div class="col-md-10">
                                <label>Rua: [Buscar no Banco]</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Número: [Buscar no Banco] </label>
                            </div>  
                            <div class="col-md-6">
                                <label>Complemento: [Buscar no Banco] </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Bairro: [Buscar no Banco] </label>
                            </div>  
                            <div class="col-md-5">
                                <label>Cidade: [Buscar no Banco] </label>
                            </div>
                            <div class="col-md-3">
                                <label>Estado: [B B] </label>
                            </div>
                        </div>
                        <div id="mapa" style="height: 300px; width:100%; margin: 10px 0px 10px auto ;"></div>
                        
                        
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

    function initialize() {
        var latlng = new google.maps.LatLng(-18.8800397, -47.05878999999999);

        var options = {
            zoom: 5,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        map = new google.maps.Map(document.getElementById("mapa"), options);
    }

    initialize();

</script>
            