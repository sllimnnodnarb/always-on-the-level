// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require jquery_ujs
//= require jquery.mmenu.js
//= require_tree .

//sliding nav menu settings
$(document).ready(function() {
  $("#menu").mmenu({
    "extensions": [
      "pagedim-black",
      "theme-light",
      "listview-center",
      "fx-listitems-slide"
    ],
    "offCanvas": {
      "position": "right"
    },
    "navbars": [
      {

      }
    ]
  });
});
