//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$(function() {
    $('#subscribe-form')
        .bind('ajax:success', function(e, data, status, xhr) {
            $(".form-control").addClass("success");
            $(".form-message").text("Merci, votre email a bien été pris en compte")
        })
        .bind('ajax:error', function(e, xhr, status, error) {
           $(".form-control").addClass("error");
           $(".form-message").toggleClass("txt-danger").text(xhr.message)
        });
})


$( ".apply-head" ).click(function() {
  $("html, body").animate({ scrollTop: $(document).height() }, 600);
});



