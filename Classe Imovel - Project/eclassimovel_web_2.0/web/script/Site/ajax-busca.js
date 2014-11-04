/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    ajaxBusca.View.StartEvents();
});

var ajaxBusca = {
    Model: {
        CreateModel: function () {
            var model = {
                Finalidade: $(".finalidade").val(),
                TipoImoveis: $(".tipoImovel").val(),
                De: $(".de").val(),
                Ate: $(".ate").val(),
                UF: $(".uf").val(),
                Cidade: $(".cidade").val(), 
                Bairro: $(".bairro").val()
            };
            
            return model;
        },
        
        CreateParameters: function (model) {
            return "finalidade=" + model.Finalidade + "&tipoimovel=" + model.TipoImoveis + "&de=" + model.De + "&ate=" + model.Ate + "&uf=" + model.UF + "&cidade=" + model.Cidade + "&bairro=" + model.Bairro;  
        }
    },
    View: {
        StartEvents: function () {
            ajaxBusca.View.SetEventSearch();
             $(".btn-search").click();
        },
        
        SetEventSearch: function (){
            $(".btn-search").unbind("click").click(function (evt) {                
                evt.preventDefault();
                ajaxBusca.Controller.Search();
            });
        }
    },
    Controller: {
        Search: function () {
            var model = ajaxBusca.Model.CreateModel();
            
            var parameters = ajaxBusca.Model.CreateParameters(model);
                
            
            $.ajax({
                type : "POST",
                url : "/eclassimovel_web/DAO_JSP2/buscar.jsp",
                data : parameters,
                success : function(data) {
                    $(".result-busca").html(data);
                }
            });
        }
    }
};