

<div class="panel panel-default cadastro-imagens" >
  <div class="panel-heading">
    <h3 class="panel-title">Upload de Imagens</h3>
  </div>
  <div class="panel-body">
    <div class="content-box-principal">
        <input type="file"  class="btn-upload upload-margin" />
    </div>
    <div class="box-base" style="display: none">
        <div class="box-img " >
            <a href="#" class="btn-remove"  >Remover</a>
            <img class='img-box' width='300' src='' />
        </div>
    </div>
    <div class="content-box-images">

        <%@ include file="/DAO_JSP2/editar_uploadimagem.jsp" %>
    </div>
  </div>
</div>

