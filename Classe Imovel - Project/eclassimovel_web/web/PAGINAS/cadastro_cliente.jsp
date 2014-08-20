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
        <%@include file = "/COMPONENTES/header.jsp" %>
        <%@include file = "/DAO_JSP/ClienteDAO/InserirCliente.jsp" %>
        <div id="body">
            <section class="content-wrapper main-content clear-fix" style="max-width: 100%;">
                <div class="content-cadastro">
                    <form role="form" action="/DAO_JSP/ClienteDAO/InserirCliente.jsp" >
                        <div class="field inline">
                            <div class= "nome">
                                <label>Nome</label>
                                <div class ="input_nome">
                                    <input  name="cliente_nome" type="text" value="">
                                </div>
                            </div>
                            <div class = "sobrenome">
                                <label>Sobrenome</label>
                                <div class= "input_sobrenome">
                                    <input id="cliente_sobrenome" name="cliente_sobrenome" type="text" value="">
                                </div>
                            </div>
                            <div class="data">
                                <label>Data de Nascimento</label>
                                <div class="input_data">
                                    <input id="cliente_dtNascimento" name="cliente_dtNascimento" type="date" value=""/>
                                </div>
                            </div>  
                            <div class="cpf">
                                <label> CPF</label>
                                <div class="input_cpf">
                                    <input id="cliente_cpf"name="cliente_cpf" type="text" value=""/>
                                </div>
                            </div>
                            <div class="senha">
                                <label>Senha</label>
                                <div class="input_senha">   
                                    <input id="cliente_senha" name="cliente_senha" type="password" value=""/>
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
                                <div classe= "input_email">
                                    <input id="cliente_email" name="cliente_email" type="text" value=""/>
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
        <%@ include file = "/COMPONENTES/footer.jsp" %>
    </body>
</html>
