<header>
    <div class='css'>
        <link href="/eclassimovel_web/css/bootstrap-3.2.0-dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
         <link href="/eclassimovel_web/css/bootstrap-3.2.0-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="/eclassimovel_web/css/bootstrap-3.2.0-dist/js/bootstrap.js" rel="stylesheet"/>
        <link href="/eclassimovel_web/css/css1.css" rel="stylesheet" type="text/css"/>
        <link href="/eclassimovel_web/css/site.css" rel="stylesheet" type="text/css"/>
    </div>
    
    <div class='scripts'>
        <script src="/eclassimovel_web/script/script.js" type="text/javascript"></script>
        <script src="/eclassimovel_web/script/jquery-1.10.2.js" type="text/javascript"></script>
        <script src="/eclassimovel_web/script/jquery-ui-1.10.4.custom.js" type="text/javascript"></script>
        <script src="/eclassimovel_web/script/jquery-ui.min.js" type="text/javascript"></script>
    </div>
    <nav class="navbar  navbar-default navbar-fixed-top" role="navigation" style="background-color:#000; background: linear-gradient(to left, #890213 50%, #890213 50%);">
  
    <div class="container">
    
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
                <li class="nav-quem-arredonda"><a href="/eclassimovel_web/PAGINAS/cadastro_cliente.jsp">CADASTRA-SE</a></li>
                <li class="nav-mapa"><a href="/eclassimovel_web/PAGINAS/cadastro_imovel.jsp">CADASTRAR IM�VEL</a></li>
                <li class="nav-ranking"><a href="/eclassimovel_web/PAGINAS/quem_somos.jsp">QUEM SOMOS</a></li>
            </ul>
            
            <form class="form-inline" method="POST" action="login.jsp" role="form" style="float:right; margin-top:1%;">
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon">@</div>
                    <input class="form-control" name="login" type="email" placeholder="Enter email">
                </div>
            </div>
            <div class="form-group">
                <label class="sr-only" for="exampleInputPassword2">Password</label>
                <input type="password" name="senha" class="form-control" id="exampleInputPassword2" placeholder="Password">
            </div>
            <button type="submit" class="btn btn-default">Sign in</button>
        </form>
            
        </div>
        
    </div>
    
</nav>
    

</header>