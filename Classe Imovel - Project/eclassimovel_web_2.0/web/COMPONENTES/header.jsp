<header>
    <div class='css'>
        <link href="/eclassimovel_web/css/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
         <link href="/eclassimovel_web/css/bootstrap-3.2.0-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        
        <link href="/eclassimovel_web/css/css1.css" rel="stylesheet" type="text/css"/>
        <link href="/eclassimovel_web/css/site.css" rel="stylesheet" type="text/css"/>
    </div>
    
    <div class='scripts'>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="/eclassimovel_web/script/jquery-1.10.2.js" type="text/javascript"></script>
        <script src="/eclassimovel_web/script/jquery.mask.min.js" type="text/javascript"></script>
        <script src="/eclassimovel_web/script/site-mask.js" type="text/javascript"></script>
        <link href="/eclassimovel_web/css/bootstrap-3.2.0-dist/js/bootstrap.js" rel="stylesheet"/>
        <script src="/eclassimovel_web/script/script.js" type="text/javascript"></script>
    </div>
    <nav class="navbar  navbar-default navbar-fixed-top" role="navigation" style="background-color:#000; background: linear-gradient(to left, #890213 50%, #890213 50%);">
  
    <div class="container">
        <div class="col-md-9">
    
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" style="">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/eclassimovel_web/PAGINAS/home.jsp" style="height:100px; padding:0px;"><img src="/eclassimovel_web/css/imagens/logo.jpg" width="96px"></a>
        </div><!--navbar-header-->
        
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-left">
                    <li class="nav-quem-arredonda"><a href="/eclassimovel_web/PAGINAS/cadastro_cliente.jsp">${ id == null  ? "CADASTRAR-SE" : "" }</a></li>

                    <li class="nav-cadastrar"><a href="/eclassimovel_web/PAGINAS/cadastro_imovel.jsp">${ id == null  ? "CADASTRAR IMÓVEL" : "EDITAR IMÓVEL" }</a></li>

                    <li class="nav-quem-somos"><a href="/eclassimovel_web/PAGINAS/quem_somos.jsp">QUEM SOMOS</a></li>
                </ul>
            </div>
        </div>
       <div class="col-md-3">
            
            <% if (session.getAttribute("id") == null) {%>
            
                <form class="form" method="POST" action="/eclassimovel_web/DAO_JSP2/login.jsp" role="form" style="float:right; margin-top:1%;">

                        <div class="input-group input-group-sm">
                            <div class="input-group-addon">@</div>
                            <input class="form-control" name="email" type="text" placeholder="E-mail">
                        </div>

                        <div class="input-group input-group-sm">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-ok"></span></div>
                            <input type="password" name="senha" class="form-control" placeholder="Senha">
                        </div>
   
                    <button type="submit" class="btn btn-default">Entrar</button>

                </form>
            <% }
            else {%>
                <div class="form-group" style="color:#fff;margin-top:10px;">
                    <div class="row">
                        <div class="col-md-12">
                            Bem vindo ${nome_user}
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <a href="/eclassimovel_web/DAO_JSP2/logout.jsp" style="color:#fff" ><span class="glyphicon glyphicon-off"></span> Sair</a>                    
                        </div>
                        <div class="col-md-6">
                            <a href="#"style="color:#fff"> <span class="glyphicon glyphicon-question-sign"></span> Ajuda</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <a href="/eclassimovel_web/PAGINAS/cadastro_cliente.jsp"style="color:#fff"> <span class="glyphicon glyphicon-cog"></span> Minha Conta </a>
                        </div>
                
                    </div>
                </div>
            <% } %>
            
            
        </div>
        
    </div>
    
</nav>
    

</header>
            
           