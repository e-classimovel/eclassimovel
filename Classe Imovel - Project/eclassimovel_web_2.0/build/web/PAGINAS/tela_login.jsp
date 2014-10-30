<%-- 
    Document   : tela_login.jsp
    Created on : Sep 22, 2014, 10:24:00 PM
    Author     : guilhermediasbautista
--%>


        <div class="container">
            <div class="row">
                <fieldset>
                    <legend>Login</legend>
                        <form class="form-horizontal" action="/eclassimovel_web/DAO_JSP2/login.jsp" method="post" role="form">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                <div class="col-sm-6">
                                    <input name ="email" type="email" class="form-control" id="inputEmail3" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">Senha</label>
                                <div class="col-sm-6">
                                    <input name="senha" type="password" class="form-control" id="inputPassword3" placeholder="Password">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> Lembrar-me
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <div class="checkbox">
                                        <a href="/eclassimovel_web/PAGINAS/cadastro_cliente.jsp">Cadastre-se</a>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default">Logar</button>
                                </div>
                            </div>
                        </form>
                </fieldset>
            </div>            
        </div>        
        <%@include file = "/COMPONENTES/footer.jsp" %>
        
    </body>
</html>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
