<%-- 
    Document   : login
    Created on : Aug 31, 2014, 10:10:58 PM
    Author     : gilmar.junior
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>e-Classimovel | Cadastro</title>
    </head>
    <body>
        
        <form class="form-horizontal" enctype="multipart/form-data" action="/eclassimovel_web/DAO_JSP2/login.jsp" method="post">
            <div class="form-group">
                <label class="col-sm-2 control-label">Login</label>
                <input value="" name="login"/>
            </div>
             <div class="form-group">
                <label class="col-sm-2 control-label">Senha</label>
                <input value="" type="password" name="senha"/>
             </div>
            <div class="content-buttons" style="clear:both">
                <input  type="submit" class="btn" value="Logar"/>
            </div>
        </form>
    </body>
</html>
