/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function (){
    Home.View.SetEventBox();
    
});


var Home = {
    View: {
        SetEventBox: function () {
            $(".box").unbind("click").click(function (evt){
                evt.preventDefault();
                
                window.location = "/eclassimovel_web/detalhe.jsp";
            });   
        }
    }
};