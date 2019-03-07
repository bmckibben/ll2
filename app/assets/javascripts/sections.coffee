#= require active_admin/base
#= require ckeditor/init

$(document).ready ->

  if $('textarea#section_body').length > 0
    data = $('textarea#section_body')
    $.each data, (i) ->
      CKEDITOR.replace data[i].id
      return

  $( "a.scrollLink" ).click ->
    event.preventDefault();
    $(".scroller-container").animate({ scrollTop: $($(this).attr("href")).offset().top }, 200)