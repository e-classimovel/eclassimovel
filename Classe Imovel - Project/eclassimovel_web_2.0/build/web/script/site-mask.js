/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    SiteMask.View.MaskInputs();
});

var SiteMask = {
    View: {
        MaskInputs: function (){
             $('.data').mask('11/11/1111');
            $('.tempo').mask('00:00:00');
            $('.datatempo').mask('00/00/0000 00:00:00');
            $('.cep').mask('00000-000');
            $('.rg').mask('00.000.000-0');
            $('.telefone').mask('0000-0000');
            $('.telefoneddd').mask('(00) 0000-0000');
            $('.cpf').mask('000.000.000-00', {reverse: true});
            $('.reais').mask('000.000.000.000.000,00', {reverse: true});
            $('.porcento').mask('##0,00%', {reverse: true});
            $('.clear-if-not-match').mask("00/00/0000", {clearIfNotMatch: true});
        }
    }
};
