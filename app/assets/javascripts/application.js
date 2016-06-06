//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$(function() {
    $('#subscribe-form')
        .bind('ajax:success', function(e, data, status, xhr) {
            $(".form-control").addClass("success");
        })
        .bind('ajax:error', function(e, xhr, status, error) {
           $(".form-control").addClass("error");
           $(".form-error").text()
        });
})
