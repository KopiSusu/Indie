// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {

    // some needed variables
  var width = $(window).width();

  // sticky nav bar
  $( window ).scroll(function() {
      
      var scroll = $( window ).scrollTop();

      if (scroll > 140 && width > 600) {
          $('nav').addClass("fixed");
      } else {
          $('nav').removeClass("fixed");
      } 
    
  });

  $('#search').click(function() {
    $('#form').submit();
  });

  // $('#search').mouseenter(function() {
  //   $('#text-tag input').animate({width: "9%"}, 350);
  // });
  // $('nav').mouseleave(function() {
  //   $('#text-tag input').animate({width: "0%"}, 350);
  // });


});