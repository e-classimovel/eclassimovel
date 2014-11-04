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
        <script src="/eclassimovel_web/css/bootstrap-3.2.0-dist/js/bootstrap.js" rel="stylesheet"></script>
        <script src="/eclassimovel_web/script/script.js" type="text/javascript"></script>
    </div>

    <nav class="navbar  navbar-default navbar-fixed-top nav-header" role="navigation" >
        <div class="container">        
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" style="">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand logo-header" href="/eclassimovel_web/PAGINAS/home.jsp"><img src="/eclassimovel_web/css/imagens/logo.jpg" width="96px"></a>
            </div><!--navbar-header-->
        
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <% if (session.getAttribute("id") == null) {%>
                <div class="form-logar">
                    <form class="form" method="POST" action="/eclassimovel_web/DAO_JSP2/login.jsp" role="form" style="float:right; margin-top:1%; margin-bottom:10px;">
                            <div class="input-group input-group-sm">
                                <div class="input-group-addon">@</div>
                                <input class="form-control" name="email" type="text" placeholder="E-mail">
                            </div>
                            <div class="input-group input-group-sm">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-ok"></span>
                                </div>
                                <input type="password" name="senha" class="form-control" placeholder="Senha">
                            </div>
                        <button type="submit" class="btn btn-default">Entrar</button>
                    </form>
                </div>
                <% }
                else {%>
                <div class="logado">
                    <div class="form-group form-header">
                        <div class="row">
                            <div class="col-md-12">
                                <span class="glyphicon glyphicon-user"></span> Bem vindo, ${nome_user}
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <a href="/eclassimovel_web/DAO_JSP2/logout.jsp" class="link-header"><span class="glyphicon glyphicon-off"></span> Sair</a>                    
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <a href="/eclassimovel_web/PAGINAS/cadastro_cliente.jsp" class="link-header"> <span class="glyphicon glyphicon-cog"></span> Minha Conta </a>
                            </div>
                            <div class="col-md-6">
                                <a href ="/eclassimovel_web/DAO_JSP2/excluir_cliente.jsp?cliente=<%=session.getAttribute("id")%>" class="link-header"> <span class="glyphicon glyphicon-remove"></span> Excluir Conta</a>
                            </div>
                            <% if (session.getAttribute("possuiImovel") != "0" && session.getAttribute("possuiImovel") != null) { %>
                                <div class="col-md-6">
                                    <a href ="/eclassimovel_web/DAO_JSP2/excluir_imovel.jsp?cliente=<%=session.getAttribute("id")%>" class="link-header"> <span class="glyphicon glyphicon-remove"></span> Excluir Imovel</a>
                                </div> 
                            <% } %>
                        </div>
                    </div>
                </div> 
                <% } %>
                <ul class="nav navbar-nav">
                    ${ id == null  ?"
                    <li class='nav-li'>
                        <a href='/eclassimovel_web/PAGINAS/cadastro_cliente.jsp'>
                             <span class='glyphicon glyphicon-user'></span> CADASTRE-SE </a></li>" : "" }

                    <li class="nav-li"><a href="/eclassimovel_web/PAGINAS/cadastro_imovel.jsp">${ id == null or possuiImovel == null ? '<span class="glyphicon glyphicon-home"></span> CADASTRAR IMÓVEL' : '<span class="glyphicon glyphicon-pencil"> </span> EDITAR IMÓVEL' }</a></li>

                    <li class="nav-li"><a href="/eclassimovel_web/PAGINAS/quem_somos.jsp"><span class="glyphicon glyphicon-briefcase"></span> QUEM SOMOS</a></li>
                </ul>           
            </div>
        </div>
    </nav>
</header>

<!-- Modal - Ajuda -->

<!-- <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div> -->

<script>
    $("#ajuda").click(function(){
        $("#myModal").modal();
    })
</script>