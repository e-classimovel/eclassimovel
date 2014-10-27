$(document).ready(function () {
    UploadImagens.View.StartEvents();
    RemoverImagens.View.StartEvents();
});

var arryImages = []

var UploadImagens = {
    Model: {

        IdMovel: $(".idMovel").val(),
        
        CreateParameters: function (imagem) {
            return "idMovel=" + UploadImagens.Model.IdMovel + "&imagem=" + imagem;
        }

    },

    View: {
        StartEvents: function () {
            UploadImagens.View.SetEventUpload();

            UploadImagens.View.InitializeArrayImagens();
        },
        
        InitializeArrayImagens: function () {
            $(".content-box-images img").each(function (index, element) {
                var src = $(element).attr("src");
                
                arryImages.push(src);
            });

        },

        SetEventUpload: function (){
            $(".btn-upload").unbind("change").change(function () {
                UploadImagens.View.ReadImage(this);
            });
        },
        
        ReadImage: function (input) {
            if (input.files && input.files[0]) {
                var FR = new FileReader();

                FR.onload = function (e) {
                    var image = e.target.result;                    
                    
                    if (UploadImagens.View.Validation())
                        arryImages.push(image);
                    else{
                        alert("Atenção: Você atingiu a quantidade maxima de imagens.");
                        return;
                    }
                    
                    

                    UploadImagens.View.GerarImagens();
                    
                    UploadImagens.Controller.Upload(image);

                };

                FR.readAsDataURL(input.files[0]);
            }
        },
        
        Validation: function () {
            if (arryImages.length == 5)
                return false;
            
            return true;
        },

        GerarImagens: function () {
            var cloneBox = $(".box-base").clone();

            $(".content-box-images").empty();

            $(arryImages).each(function (index, element) {
                $(cloneBox).find(".box-img img").attr("src", element);
                $(".content-box-images").append($(cloneBox).html());
            });
        }
    },

    Controller: {

        Upload: function (imagem) {
            var parameters = UploadImagens.Model.CreateParameters(imagem);
              
            $.ajax({
                type : "POST",
                url : "/eclassimovel_web/DAO_JSP2/UploadImagem.jsp",
                data : parameters,
                success : function(data) {
                    alert(data);    
                    location.reload();
                }
            });
        }
    }
};

var RemoverImagens = {
    Model: {
    
    },
    
    View: {
        StartEvents: function () {
            RemoverImagens.View.SetEventRemove();
        },
        
        SetEventRemove: function () {
            $(".btn-remove").unbind("click").click(function (evt){
                evt.preventDefault();
                
                var id = parseInt($(this).attr("data-id"));
                
                RemoverImagens.Controller.Remover(id, this);
            });
        }
    },
    
    Controller: {
         Remover: function (id, element) {              
            $.ajax({
                type : "POST",
                url : "/eclassimovel_web/DAO_JSP2/RemoverImagem.jsp",
                data : "id=" + id,
                success : function(data) {
                    alert(data);    
                    $(element).parent("div").remove();
                    
                }
            });
        }
    }
};