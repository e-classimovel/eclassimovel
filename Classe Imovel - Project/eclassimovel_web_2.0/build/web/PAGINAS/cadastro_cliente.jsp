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
        
         <div class="container">
             <div class="row">
                    <form class="form-horizontal" enctype="multipart/form-data" action="/eclassimovel_web/DAO_JSP2/InserirCliente.jsp" method="post">
                        <div>
                            <input type="hidden" name="id" value="<%=id%>" />
<!--                            <div class="col-sm-7">-->
                                <fieldset>
                                    <legend>Cadastrar</legend>
                                <div class="form-group">
                                        <label class="col-sm-2 control-label">Nome</label>
                                        <div class="col-sm-6">
                                            <input class="form-control"  required name="cliente_nome" type="text" value="<%=nome%>">
                                        </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Sobrenome</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" required  name="cliente_sobrenome" type="text" value="<%=sobrenome%>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Data de Nascimento</label>
                                    <div class="col-sm-2">
                                        <input class="form-control data" required name="cliente_dtNascimento" type="date" value="<%=dtNascimento%>"/>
                                    </div>
                  
                                    <label class="col-sm-1 control-label"> RG</label>
                                    <div class="col-sm-3">
                                        <input class="form-control rg" required="" name="cliente_rg" type="text" value=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label"> CPF</label>
                                    <div class="col-sm-6">
                                        <input class="form-control cpf" required name="cliente_cpf" type="text" value="<%=cpf%>"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Senha</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" required name="cliente_senha" type="password" value ="<%=senha%>" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Confirma Senha</label>
                                    <div class="col-sm-6"> 
                                        <input class="form-control" required type="password" value=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">E-mail</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" required name="cliente_email" type="email" value="<%=email%>"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Confirmar e-mail</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" required name="email" type="email" value=""/>
                                    </div>
                                </div>
                                    
                            <!--</div>-->
<!--                            <div class="col-sm-5">
                                <div class="content-cadastro-imagem" style="width: 324px; float: left;">
                                    <label>Selecione a imagem de perfil</label>
                                    <img class="img-upload" src="/" style="max-width:400px" />
                                    <input  class="btn-upload" name="cliente_imagem" type="file" value=""/>
                                </div>
                            </div>
                            -->
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input  type="submit" class="btn btn-default" value="Cadastrar"/>   
                                    </div>
                                </div>
                            </fieldset>
                        <!--</div>-->
                    </form>                
                </div>
             </div>
            <script src="/eclassimovel_web/script/cadastro.js" type="text/javascript"></script>
        </div>
        <%@ include file = "/COMPONENTES/footer.jsp" %>
    </body>
</html>
