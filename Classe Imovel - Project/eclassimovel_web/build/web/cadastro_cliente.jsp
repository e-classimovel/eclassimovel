<%-- 
    Document   : cadastro_cliente
    Created on : 25/04/2014, 01:26:54
    Author     : Henrique Dias Bautis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>e-Classimovel | Cadastro</title>
        
    </head>
    <body>
        <%@include file = "header.jsp" %>
        <div id="body">
            <section class="content-wrapper main-content clear-fix" style="max-width: 100%;">
                <div class="content-cadastro">
                    <form role="form">
                        <div class="field inline">
                            <div class= "nome">
                                <label>Nome</label>
                                <div class ="input_nome">
                                    <input type="text" value="">
                                </div>
                            </div>
                            <div class = "sobrenome">
                                <label>Sobrenome</label>
                                <div class= "input_sobrenome">
                                    <input type="text" value="">
                                </div>
                            </div>
                            <div class="data">
                                <label>Data de Nascimento</label>
                                <div class="input_data">
                                    <input type="date" value=""/>
                                </div>
                            </div>  
                            <div class="senha">
                                <label>Senha</label>
                                <div class="input_senha">   
                                    <input type="password" value=""/>
                                </div>
                            </div>
                            <div class="conf">
                                <label>Confirma Senha</label>
                                <div class="input_conf" > 
                                    <input type="password" value=""/>
                                </div>
                            </div>
                            <div class="field email">
                                <label>E-mail</label>
                                <div class= "input_email">
                                    <input type="text" value=""/>
                                </div>
                            </div>
                            <div class="conf_email">
                                <label>Confirmar e-mail</label>
                                <div class= "inp_conf_email">

                                    <input type="email" value=""/>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="content-cadastro-imagem" style="width: 324px; float: left;">
                    <label>Selecione a imagem de perfil</label>
                    <img class="img-upload" src="/" />
                    <input  class="btn-upload" type="file" value=""/>
                </div>
                <div class="content-buttons" style="clear:both">
                    <input  type="button" class="btn" value="Cadastrar"/>
                </div>
            </section>
            <script src="script/cadastro.js" type="text/javascript"></script
        </div>
        <%@ include file = "footer.jsp" %>
    </body>
</html>
