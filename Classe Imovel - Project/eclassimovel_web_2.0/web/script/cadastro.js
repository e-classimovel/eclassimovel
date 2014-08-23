$(document).ready(function () {
    Cadastro.View.StartEvents();
});

var Cadastro = {
    Model: {

    },
    View: {
        StartEvents: function () {
            $(".btn-upload").unbind("click").change(function (evt) {
                evt.preventDefault();

                Cadastro.View.ReadUrl(this);
            });
        },

        ReadUrl: function (input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $(".img-upload").attr("src", e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
    },

    Controller: {

    }
}