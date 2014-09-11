<%-- 
    Document   : cadastro_cliente
    Created on : 25/04/2014, 01:26:54
    Author     : Guilherme Dias Bautista
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>e-Classimovel | Cadastro</title>
        
    </head>
    <body>
        <%@include file = "/COMPONENTES/header.jsp" %>
        <%@include file = "/DAO_JSP2/editar_cliente.jsp" %>
        
        <div id="body">
            <section class="content-wrapper main-content clear-fix" style="max-width: 100%;">
                <div class="content-cadastro">
                    <form class="form-horizontal" enctype="multipart/form-data" action="/eclassimovel_web/DAO_JSP2/InserirCliente.jsp" method="post">
                        <div>
                            <input type="hidden" name="id" value="<%=id%>" />
                            <div class="col-sm-7">
                                   
                                <div class="form-group">
                                        <label class="col-sm-2 control-label">Nome</label>
                                        <div class="col-sm-6">
                                            <input class="form-control" name="cliente_nome" type="text" value="<%=nome%>">
                                        </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Sobrenome</label>
                                    <div class="col-sm-6">
                                        <input class="form-control"  name="cliente_sobrenome" type="text" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Data de Nascimento</label>
                                    <div class="col-sm-6">
                                        <input class="form-control data" name="cliente_dtNascimento" type="date" value="<%=dtNascimento%>"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label"> RG</label>
                                    <div class="col-sm-6">
                                        <input class="form-control rg" name="cliente_rg" type="text" value=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label"> CPF</label>
                                    <div class="col-sm-6">
                                        <input class="form-control cpf" name="cliente_cpf" type="text" value="<%=cpf%>"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Senha</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" name="cliente_senha" type="password" value ="<%=senha%>" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Confirma Senha</label>
                                    <div class="col-sm-6"> 
                                        <input class="form-control" type="password" value=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">E-mail</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" name="cliente_email" type="email" value="<%=email%>"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Confirmar e-mail</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" name="email" type="email" value=""/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="content-cadastro-imagem" style="width: 324px; float: left;">
                                    <label>Selecione a imagem de perfil</label>
                                    <img class="img-upload" src="/" style="max-width:400px" />
                                    <input  class="btn-upload" name="cliente_imagem" type="file" value=""/>
                                </div>
                            </div>
                            
                            <div class="content-buttons" style="clear:both">
                                <input  type="submit" class="btn" value="Cadastrar"/>
                            </div>
                        </div>
                    </form>
                </div>
                
            </section>
            <script src="/eclassimovel_web/script/cadastro.js" type="text/javascript"></script
        </div>
        <%@ include file = "/COMPONENTES/footer.jsp" %>
    </body>
</html>
