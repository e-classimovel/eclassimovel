$(document).ready(function () {
    UploadImagens.View.StartEvents();
});

var arryImages = []

var UploadImagens = {
    Model: {

    },

    View: {
        StartEvents: function () {
            UploadImagens.View.SetEventUpload();
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

                    arryImages.push(image);

                    UploadImagens.View.GerarImagens();
                };

                FR.readAsDataURL(input.files[0]);
            }
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


    }
};

jQuery.fn.outerHTML = function (s) {
    return s
        ? this.before(s).remove()
        : jQuery("<p>").append(this.eq(0).clone()).html();
};