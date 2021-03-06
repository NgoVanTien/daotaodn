// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require animatedcollapse
//= require app
//= require jquery.nivo.slider
//= require scrolltopcontrol
//= require demo
//= require notify
//= require bootstrap_notify
//= require sweetalert.min
//= require moment
//= require bootstrap-datetimepicker
//= require jquery-ui
//= require jquery-ui/widgets/sortable
//= require jquery-ui/effects/effect-highlight
//= require select2-full
//= require ckeditor/init


$(document).ready(function(){
  $(".load-alert").on("click", function(){
    swal({
      title: "Đang Xử Lý",
      timer: 2000,
      showConfirmButton: false,
      type: "success"
    });
  });
});
