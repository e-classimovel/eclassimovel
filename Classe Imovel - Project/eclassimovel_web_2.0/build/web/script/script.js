$(document).ajaxStart(function() {
    $("#loading").css("display", "block");
});

$(document).ajaxComplete(function() {
    $("#loading").css("display", "none");
});
