'use strict';
$(document).ready ->

  # Hide .navbar-custom first
  $(".navbar-custom").hide();

  # When to show nav bar menu
  $(window).scroll ->
    if $(this).scrollTop() > 200
      $('.navbar-custom').fadeIn()
    else
      $('.navbar-custom').fadeOut()

  # use a smmoth scroll when menu item selected
  $('a.page-scroll').click ->
    if location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname
      target = $(this.hash)
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']')
      if target.length
        $('html,body').animate({scrollTop: target.offset().top - 40}, 900)
        alert("21")
        return false

  alert("24")
  #init parallax
  $('#intro').parallax({imageSrc: asset_path("36.jpg")})
  $('#services').parallax("100%", 0.3)
  $('#aboutimg').parallax("100%", 0.3)
  $('#testimonials').parallax("100%", 0.1)
  alert("30")
  #init Pretty Photo
  $("a[rel^='prettyPhoto']").prettyPhoto({social_tools: false})


$(window).load ->
  # will first fade out th eloading animation
  $("#status").fadeOut("slow")
  # will fade out the whole div that covers the website
  $("#preloader").delay(500).fadeOut("slow").remove();

  #Portfolio Isotope Filter
  $container = $(".portfolio-items")
  $container.isotope({
      filter: '*',
      animationOptions: {
        duration: 750,
        easing: 'linear',
        queue: false
      }
    })
  $(".cat a").click ->
      $(".cat .active").removeClass("active")
      $(this).adClass("active")
      selector = $(this).attr("data-filter")
      $container.isotope({
        filter: selector,
        animationOptions: {
          duration: 750,
          easing: "linear",
          queue: false
        }
      })
      return false