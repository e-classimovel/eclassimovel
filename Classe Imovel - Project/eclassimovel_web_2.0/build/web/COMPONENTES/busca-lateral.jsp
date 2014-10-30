<div class="col-sm-4" style="margin-top: 6%;">
    
    <div class="panel panel-danger">
        <div class="panel-heading" style="text-align: center;"><h3>Pesquise seu Imóvel</h3></div>
            
            <div class="panel-body">
                
                 <form  action="/eclassimovel_web/DAO_JSP2/InserirImovel.jsp" class="form-horizontal" enctype="multipart/form-data" role="form" method="post">
                    <div class="form-group">
                        <label class="col-sm-5 control-label">Finalidade</label>
                        <div class="col-sm-6">
                            <select class="form-control finalidade" name="finalidade" >
                                <option class="form-control" value="1">Comprar </option>
                                <option class="form-control" value="2">Alugar</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label" >Tipo de Imóveis</label>
                        <div class="col-sm-6">                            
                            <select class="form-control tipoImovel"  name="tipoImoveis" >
                                <option class="form-control" value="1" >Comercial</option>
                                <option class="form-control" value="2">Residencial</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">De:</label>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <input class="form-control de" type='number' placeholder="R$"  name="De" />
                                <span class="input-group-addon" >,00</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">Até:</label>
                        <div class="col-sm-6">                
                            <div class="input-group">
                                <input class="form-control ate" type='number' placeholder="R$"  name="Ate"/>
                                <span class="input-group-addon">,00</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label" >UF:</label>
                        <div class="col-sm-6">
                            <select class="form-control uf"  name="uf">
                                <option>SP</option>
                                <option>RJ</option>
                            </select>
                        </div>
                    </div>
                     <div class="form-group">
                        <label class="col-sm-5 control-label">Cidade</label>
                        <div class="col-sm-6">
                            <select class="form-control cidade"  name="cidade" >
                                <option>Taboão da Serra</option>
                                <option>São Paulo</option>
                            </select>
                        </div>
                    </div>
                     <div class="form-group">
                        <label class="col-sm-5 control-label">Bairro</label>
                        <div class="col-sm-6">
                            <input class="form-control bairro" type='text' name="bairro" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="button" class="btn btn-default btn-search"> Buscar <span class="glyphicon glyphicon-search"></span></button>
                        </div>
                    </div>
                </form>
                
            </div>
        
    </div>
    
</div>